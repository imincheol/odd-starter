#!/bin/bash
# ODD Starter v0.7.1 Installer

REPO_URL="https://raw.githubusercontent.com/imincheol/odd-starter/main"

echo "🚀 ODD 시스템 동기화를 시작합니다..."

# 1. [System] 필수 시스템 파일 존재 확인 및 원격 다운로드
fetch_system_file() {
    FILE_PATH=$1
    if [ ! -f "$FILE_PATH" ] || [[ "$*" == *"--update"* ]]; then
        echo "📥 [시스템] $FILE_PATH 동기화 중..."
        mkdir -p "$(dirname "$FILE_PATH")"
        if curl -sL "$REPO_URL/$FILE_PATH" -o "${FILE_PATH}.tmp"; then
            mv "${FILE_PATH}.tmp" "$FILE_PATH"
        else
            echo "⚠️  [경고] $FILE_PATH 다운로드 실패. 기존 파일을 유지하거나 건너뜁니다."
            rm -f "${FILE_PATH}.tmp"
        fi
    fi
}

# Root
fetch_system_file ".odd/ATLAS.md" --update

# Books
fetch_system_file ".odd/books/_template/book.md" --update

# Tasks
fetch_system_file ".odd/tasks/_template/order.json" --update
fetch_system_file ".odd/tasks/_template/progress.json" --update
fetch_system_file ".odd/tasks/_template/report.json" --update
fetch_system_file ".odd/tasks/_template/roadmap_schema.md" --update
fetch_system_file ".odd/tasks/roadmap.md" --update

# Setup Guides
fetch_system_file ".odd/setup/ODD_BOOTSTRAP.md" --update
fetch_system_file ".odd/setup/ODD_MIGRATION.md" --update
fetch_system_file ".odd/setup/install.sh" --update

# History
fetch_system_file ".odd/history/_template/history.md" --update

# Specs Template
fetch_system_file ".odd/specs/README.md" --update


# 2. [System Deploy] .odd 내용을 docs/odd로 배포
echo "📦 시스템 파일 배치 중..."

mkdir -p docs/odd
mkdir -p docs/specs

# 2-1. System Folders (Ensure they exist)
mkdir -p docs/odd/books/_template
mkdir -p docs/odd/books/domain
mkdir -p docs/odd/books/tech
mkdir -p docs/odd/tasks/_template
mkdir -p docs/odd/tasks/active
mkdir -p docs/odd/history/_template
mkdir -p docs/odd/archive
mkdir -p docs/odd/setup

# Specs Standard Folders
mkdir -p docs/specs/{0_origin,1_planning,2_design,3_markup,4_development}

# 2-2. Deploy Templates & System Files (Force Overwrite)
# 주의: ATLAS.md는 사용자 데이터이므로 여기서 덮어쓰지 않습니다.
cp .odd/books/_template/* docs/odd/books/_template/
cp .odd/tasks/_template/* docs/odd/tasks/_template/
cp .odd/setup/* docs/odd/setup/
cp .odd/history/_template/history.md docs/odd/history/_template/history.md


# 3. [User Data] 초기화 (파일이 없는 경우에만 템플릿에서 복사)
safe_copy() {
    TEMPLATE=$1
    TARGET=$2
    if [ ! -f "$TARGET" ]; then
        echo "✨ [생성] $TARGET"
        cp "$TEMPLATE" "$TARGET"
    else
        echo "🛡️ [보존] $TARGET (데이터 보호됨)"
    fi
}

echo "📂 사용자 데이터 초기화 중..."
# Atlas (사용자화 필수 파일이므로 보존)
safe_copy ".odd/ATLAS.md" "docs/odd/ATLAS.md"

# Roadmap (Snapshot)
safe_copy ".odd/tasks/roadmap.md" "docs/odd/tasks/roadmap.md"

# Specs Init
if [ -f ".odd/specs/README.md" ]; then
    # (1) Root Guide (추가됨: specs 폴더의 대문 역할)
    safe_copy ".odd/specs/README.md" "docs/specs/README.md"
    
    # (2) Sub-folder Guides
    for dir in docs/specs/*; do
        if [ -d "$dir" ]; then
            safe_copy ".odd/specs/README.md" "$dir/README.md"
        fi
    done
fi

# History Init
CURRENT_YM=$(date +"%Y/%m")
mkdir -p "docs/odd/history/$CURRENT_YM"

echo "✅ ODD v0.7.1 시스템이 준비되었습니다."
echo "👉 docs/odd/ATLAS.md 를 열어 새로운 가이드를 확인하세요."

# 4. [System Install] 설치 스크립트 권한 설정 (For Update)
if [ -f "docs/odd/setup/install.sh" ]; then
    chmod +x "docs/odd/setup/install.sh"
fi

echo "✨ 설치가 완료되었습니다."
echo "🔄 추후 업데이트가 필요하면 다음 명령어를 실행하세요:"
echo "   ./docs/odd/setup/install.sh"

# Cleanup (임시 폴더 삭제)
rm -rf .odd