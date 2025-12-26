---
id: "20251226_13_AutoGenerateSetupOrder"
type: "feat"
status: "approved"
priority: "high"
created_at: "2025-12-26"
summary: "설치 시 신규/업데이트 오더를 자동 생성하여 AI 에이전트의 즉각적인 액션을 유도함"
context:
  - "docs/odd/setup/install.sh"
  - "docs/odd/setup/ODD_INIT.md"
  - "docs/odd/setup/ODD_UPDATE.md"
---

# 📋 Order: 설치 시 초기 오더 자동 생성 기능 추가

## 1. Context & Objective (배경 및 목표)

### 🧐 Issues & Insight
1. 현재 `install.sh` 실행 후 사용자가 직접 `ODD_INIT.md`나 `ODD_UPDATE.md` 내용을 복사하여 AI에게 전달해야 함.
2. AI 에이전트 입장에서는 세션 시작 시 `tasks/active` 폴더를 스캔하는데, 여기에 바로 수행해야 할 "시스템 설정 오더"가 있다면 훨씬 매끄러운 시작이 가능함.

### 🎯 Goal
- `install.sh` 실행 시, 신규 설치 여부에 따라 `000_bootstrap.md` 또는 `000_migration.md` 오더 파일을 `docs/odd/tasks/active/`에 자동 생성.
- 생성된 오더 파일은 AI에게 `ODD_INIT.md` 또는 `ODD_UPDATE.md`를 읽고 절차를 수행하라는 지침을 포함함.
- "No Order, No Work" 원칙에 따라, 설치 직후 AI가 즉시 일을 시작할 수 있는 "첫 번째 일감"을 시스템이 미리 준비해 주는 것임.

## 2. Todo List (할 일)

### A. Install Script Refinement
- [ ] `install.sh` 하단에 오더 파일 생성 로직 추가
  - 신규 설치 시: `docs/odd/tasks/active/000_bootstrap.md` 생성
  - 업데이트 시: `docs/odd/tasks/active/000_migration_v0.9.3.md` 생성
- [ ] 오더 파일 내부에 Frontmatter와 기본 실천 지침 포함

### B. Verification
- [ ] 스크립트 실행 후 `active` 폴더에 오더 파일이 생성되는지 확인
- [ ] 생성된 오더 파일의 내용이 AI 에이전트가 이해하기 적절한지 검토

### C. Sync
- [ ] `odd-template/setup/install.sh`에도 동일하게 반영
