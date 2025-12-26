---
id: "20251226_14_VersionBump_v0.9.4"
type: "chore"
status: "approved"
priority: "high"
created_at: "2025-12-26"
summary: "설치 UX 개선 및 초기 오더 자동 생성 기능 반영을 위해 버전을 v0.9.4로 상향함"
context:
  - "docs/odd/ATLAS.md"
  - "CHANGELOG.md"
  - "README.md"
  - "docs/odd/setup/install.sh"
---

# 📋 Order: 시스템 버전 상향 (v0.9.4)

## 1. Context & Objective (배경 및 목표)

### 🧐 Issues & Insight
1. 설치 스크립트에 환경 감지 로직과 초기 오더 자동 생성 기능이 추가됨.
2. 이는 사용자 경험(UX) 측면에서 중요한 기능적 진보이므로 버전을 **v0.9.4**로 격상해야 함.

### 🎯 Goal
- 시스템 전반의 버전 표기를 **v0.9.4**로 통일.
- `CHANGELOG.md`에 새로운 기능들을 명문화.
- 자동 생성되는 마이그레이션 오더의 버전 명칭도 v0.9.4로 업데이트.

## 2. Todo List (할 일)

### A. Version Update (Files)
- [ ] `docs/odd/ATLAS.md` -> v0.9.4
- [ ] `README.md` -> v0.9.4
- [ ] `docs/odd/setup/install.sh` -> v0.9.4 (안내 메시지 포함)
- [ ] `odd-template` 내 동일 파일들 업데이트
- [ ] `ODD_INIT.md`, `ODD_UPDATE.md` (docs/odd 및 odd-template) 내부 버전 업데이트

### B. Logic Update
- [ ] `install.sh` 내부의 자동 생성 오더 파일명을 `000_migration_v0.9.4.md`로 변경

### C. Changelog
- [ ] `CHANGELOG.md`에 v0.9.4 섹션 추가 및 기능 기록
