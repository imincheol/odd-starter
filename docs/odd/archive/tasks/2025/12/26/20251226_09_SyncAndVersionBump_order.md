---
id: "20251226_09_SyncAndVersionBump"
type: "docs"
status: "approved"
priority: "high"
created_at: "2025-12-26"
summary: "시스템 버전을 v0.9.3으로 업데이트하고 README와 템플릿을 현행화함"
context:
  - "docs/odd/ATLAS.md"
  - "docs/odd/tasks/roadmap.md"
  - "CHANGELOG.md"
  - "README.md"
---

# 📋 Order: 시스템 버전 업데이트 및 현행화 (v0.9.3)

## 1. Context & Objective (배경 및 목표)

### 🧐 Issues & Insight
1. 현재 시스템은 v0.9.2로 업데이트되었으나, 최상위 `README.md`는 v0.9.1에 머물러 있음.
2. v0.9.2 이후 히스토리 분리(System/Domain) 및 아카이브 구조 개선 등의 중요한 리팩토링이 수행되었으나 버전이 갱신되지 않음.
3. `odd-template`과 현재 운영 중인 `docs/odd` 간의 동기화가 필요함.

### 🎯 Goal
- 시스템 버전을 **v0.9.3**으로 격상하고 `CHANGELOG.md` 기록.
- 최상위 `README.md`를 v0.9.3 사양에 맞게 전면 현행화.
- `odd-template` 폴더 내의 템플릿 파일들을 현재의 최신 구조와 일치시킴.

## 2. Todo List (할 일)

### A. Version Update & Changelog
- [ ] `CHANGELOG.md`에 v0.9.2와 v0.9.3 변경 사항 기록
- [ ] `docs/odd/ATLAS.md` 버전을 v0.9.3으로 변경
- [ ] `docs/odd/setup/install.sh` 버전을 v0.9.3으로 변경 및 로직 확인

### B. Syncing Templates (odd-template)
- [ ] `odd-template/ATLAS_TEMPLATE.md` 업데이트 (v0.9.3)
- [ ] `odd-template/setup/install.sh` 업데이트 (v0.9.3)
- [ ] 기타 변경된 구조(History 분리 등)를 `odd-template`에 반영

### C. Final Readme Update
- [ ] 최상위 `README.md`의 버전 표기 및 시스템 설명 업데이트
- [ ] 설치 스크립트 및 구조도 수정
