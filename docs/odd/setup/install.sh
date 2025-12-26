#!/bin/bash
# ODD Starter v0.9.3 Installer

# GitHub Repository Base URL
# 'odd-template' 디렉토리에서 원본 파일을 가져옵니다.
REPO_URL="https://raw.githubusercontent.com/imincheol/odd-starter/main"
TEMPLATE_DIR="odd-template"

# 0. [Check Environment] 신규 설치인지 업데이트인지 확인
IS_UPDATE=false
if [ -f "docs/odd/ATLAS.md" ]; then
    IS_UPDATE=true
fi

echo "🚀 ODD 시스템 동기화 (v0.9.3)를 시작합니다..."

# 1. [System] 필수 시스템 파일 존재 확인 및 원격 다운로드
fetch_system_file() {
    LOCAL_PATH=$1      # 설치될 로컬 경로 (예: docs/odd/ATLAS.md)
    REMOTE_REL_PATH=$2 # 원격지 상대 경로 (예: odd-template/ATLAS_TEMPLATE.md)
    REMOTE_URL="$REPO_URL/$REMOTE_REL_PATH"

    # --update 플래그가 있거나, 파일이 없으면 다운로드
    if [ ! -f "$LOCAL_PATH" ] || [[ "$*" == *"--update"* ]]; then
        echo "📥 [시스템] $LOCAL_PATH 동기화 중..."
        mkdir -p "$(dirname "$LOCAL_PATH")"
        
        if curl -sL "$REMOTE_URL" -o "${LOCAL_PATH}.tmp"; then
            if grep -q "404: Not Found" "${LOCAL_PATH}.tmp"; then
                echo "⚠️  [경고] 원격 파일($REMOTE_REL_PATH)을 찾을 수 없습니다. (Skip)"
                rm -f "${LOCAL_PATH}.tmp"
            else
                mv "${LOCAL_PATH}.tmp" "$LOCAL_PATH"
            fi
        else
            echo "⚠️  [경고] 다운로드 실패. 네트워크를 확인하세요."
            rm -f "${LOCAL_PATH}.tmp"
        fi
    fi
}

# --- Core System (The Brain) ---
fetch_system_file "docs/odd/ATLAS.md" "$TEMPLATE_DIR/ATLAS_TEMPLATE.md" --update
# Roadmap은 프로젝트마다 다르므로 템플릿(초기 상태)을 제공하거나, 기존 것을 유지해야 함.
# 여기서는 초기 설치 시 기본 템플릿을 제공한다고 가정. (없으면 생성)
# 하지만 사용자는 update 시 덮어쓰기를 원치 않을 수 있음. (조건부 로직 필요하나 일단 fetch)

# --- Tasks (Working Memory) ---
fetch_system_file "docs/odd/tasks/_template/order.md" "$TEMPLATE_DIR/tasks/_template/order.md" --update
fetch_system_file "docs/odd/tasks/_template/progress.md" "$TEMPLATE_DIR/tasks/_template/progress.md" --update
fetch_system_file "docs/odd/tasks/_template/report.md" "$TEMPLATE_DIR/tasks/_template/report.md" --update

# --- Books (Library) ---
fetch_system_file "docs/odd/books/README.md" "$TEMPLATE_DIR/books/README.md" --update
fetch_system_file "docs/odd/books/general/policy-language.md" "$TEMPLATE_DIR/books/general/policy-language.md" --update
fetch_system_file "docs/odd/books/general/overview.md" "$TEMPLATE_DIR/books/general/overview.md" --update
fetch_system_file "docs/odd/books/domain/order-system.md" "$TEMPLATE_DIR/books/domain/order-system.md" --update
fetch_system_file "docs/odd/books/domain/memory-model.md" "$TEMPLATE_DIR/books/domain/memory-model.md" --update
fetch_system_file "docs/odd/books/tech/stack.md" "$TEMPLATE_DIR/books/tech/stack.md" --update

# --- History & Setup ---
fetch_system_file "docs/odd/history/_template/history.md" "$TEMPLATE_DIR/history/_template/history.md" --update
fetch_system_file "docs/odd/setup/ODD_INIT.md" "$TEMPLATE_DIR/setup/ODD_INIT.md" --update
fetch_system_file "docs/odd/setup/ODD_UPDATE.md" "$TEMPLATE_DIR/setup/ODD_UPDATE.md" --update
# 자기 자신(install.sh)도 업데이트
fetch_system_file "docs/odd/setup/install.sh" "$TEMPLATE_DIR/setup/install.sh" --update

# --- Specs (Templates) ---
fetch_system_file "docs/specs/README.md" "$TEMPLATE_DIR/specs/README.md" --update


# 2. [System Deploy] 폴더 구조 확인 및 권한 설정
echo "📦 폴더 구조 정비 중..."

# Ensure Directories Exist
mkdir -p docs/odd/books/{general,domain,tech}
mkdir -p docs/odd/books/_template
mkdir -p docs/odd/tasks/{active,_template}
mkdir -p docs/odd/history/_template
mkdir -p docs/odd/archive
mkdir -p docs/odd/setup
mkdir -p docs/specs/{0_origin,1_planning,2_design,3_markup,4_development}

# 3. [User Data] 초기화 가이드
echo "✅ ODD v0.9.3 시스템이 준비되었습니다."

# History Init
CURRENT_YM=$(date +"%Y/%m")
mkdir -p "docs/odd/history/$CURRENT_YM"

# 4. [Execution] 설치 스크립트 실행 권한 부여
if [ -f "docs/odd/setup/install.sh" ]; then
    chmod +x "docs/odd/setup/install.sh"
fi

echo "✨ 설치 및 업데이트가 완료되었습니다."

if [ "$IS_UPDATE" = true ]; then
    echo "🔄 [업데이트 완료] 시스템이 최신 버전(v0.9.3)으로 상향되었습니다."
    echo "👉 변경 사항을 프로젝트에 반영하려면 docs/odd/setup/ODD_UPDATE.md 의 내용을 AI에게 전달하세요."
else
    echo "🆕 [신규 설치 완료] ODD 시스템이 성공적으로 구축되었습니다."
    echo "👉 프로젝트를 시작하려면 docs/odd/setup/ODD_INIT.md 의 내용을 AI에게 전달하세요."
fi

echo ""
echo "💡 Tip: docs/odd/ATLAS.md 를 열어 새로운 규칙(v0.9.3)을 확인할 수도 있습니다."