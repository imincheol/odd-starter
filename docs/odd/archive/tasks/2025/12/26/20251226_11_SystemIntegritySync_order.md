---
id: "20251226_11_SystemIntegritySync"
type: "chore"
status: "approved"
priority: "medium"
created_at: "2025-12-26"
summary: "시스템 파일(INIT/UPDATE 가이드) 버전 통일 및 odd-template과 docs 간의 누락된 동기화 수행"
context:
  - "docs/odd/setup/ODD_UPDATE.md"
  - "docs/odd/setup/ODD_INIT.md"
  - "docs/odd/ATLAS.md"
---

# 📋 Order: 시스템 무결성 및 전수 동기화 (v0.9.3 Patch)

## 1. Context & Objective (배경 및 목표)

### 🧐 Issues & Insight
1. `ATLAS.md`와 `install.sh` 등 주요 파일은 v0.9.3으로 업데이트되었으나, 구동 가이드인 `ODD_INIT.md`와 `ODD_UPDATE.md` 내부에 `v0.9.0` 버전이 하드코딩되어 있음.
2. `ODD_UPDATE.md`의 "All or Nothing" 원칙에 따라, 모든 시스템 관련 파일의 버전이 일치해야 함.
3. `odd-template`과 `docs/odd` 간에 파일명 차이(README.md vs README_TEMPLATE.md) 및 누락된 템플릿/예제 파일들이 존재함.

### 🎯 Goal
- `ODD_INIT.md`, `ODD_UPDATE.md` 내부 버전을 **v0.9.3**으로 수정.
- `odd-template`의 구조를 최신 운영 상태인 `docs/odd`와 완전히 일치시킴 (파일 명칭 및 구성).
- 시스템 전체의 무결성(Integrity) 확보.

## 2. Todo List (할 일)

### A. Guide Version Patch
- [ ] `docs/odd/setup/ODD_INIT.md` -> v0.9.3 업데이트
- [ ] `docs/odd/setup/ODD_UPDATE.md` -> v0.9.3 업데이트
- [ ] `odd-template/setup/` 내 동일 파일 업데이트

### B. Template Synchronization
- [ ] `odd-template/books/README_TEMPLATE.md` -> `README.md` 로 변경 (운영과 명칭 통일)
- [ ] `odd-template/tasks/_template/report.json` 제거 (마크업 체제로 전환됨에 따라 불필요)
- [ ] `odd-template`에 누락된 필수 하위 폴더 및 `.gitkeep` 정비

### C. Verification & Final Sync
- [ ] 최종 `diff` 확인
- [ ] `install.sh` 재실행을 통한 정상 동작 확인
