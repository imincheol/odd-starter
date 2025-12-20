#!/bin/bash
# ODD Starter v7.0 Installer

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

# 주요 시스템 파일 강제 동기화 (Source -> Local)
# Note: GitHub raw doesn't support recursive directory download easily with curl.
# We will download specific files to recreate the structure.

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

# History
fetch_system_file ".odd/history/_template/history.md" --update


# 2. [System Deploy] .odd 내용을 docs/odd로 배포
echo "📦 시스템 파일 배치 중..."

mkdir -p docs/odd
mkdir -p docs/specs

# Recursive copy of the structured .odd folder to docs/odd
# But we need to be careful not to overwrite user data blindly.
# We will use rsync-like logic with cp.

# 2-1. System Folders (Ensure they exist)
mkdir -p docs/odd/books/_template
mkdir -p docs/odd/books/domain
mkdir -p docs/odd/books/tech
mkdir -p docs/odd/tasks/_template
mkdir -p docs/odd/history/_template
mkdir -p docs/odd/archive

# 2-2. Deploy Templates & System Files (Force Overwrite)
cp .odd/ATLAS.md docs/odd/ATLAS.md
cp .odd/books/_template/book.md docs/odd/books/_template/book.md
cp .odd/tasks/_template/* docs/odd/tasks/_template/
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
# Roadmap (Snapshot)
safe_copy ".odd/tasks/roadmap.md" "docs/odd/tasks/roadmap.md"

# History Init
CURRENT_YM=$(date +"%Y/%m")
mkdir -p "docs/odd/history/$CURRENT_YM"

echo "✅ ODD v7.0 시스템이 준비되었습니다."
echo "👉 docs/odd/ATLAS.md 를 열어 새로운 가이드를 확인하세요."

# 4. [Cleanup] 설치용 임시 폴더 삭제
rm -rf .odd
if [ -f "$0" ]; then
    rm -- "$0"
fi