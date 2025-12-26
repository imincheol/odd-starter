---
id: "20251226_05_VerifySubsystems"
type: "test" # feat, fix, refactor, docs, chore, test
status: "inprogress"
priority: "high"
created_at: "2025-12-26"
summary: "[Milestone 2] ODD 서브시스템 무결성 검증 및 설치 스크립트 현행화"
context:
  - "docs/odd/ATLAS.md"
  - "docs/odd/books/domain/order-system.md"
---

# 📋 Order: ODD 서브시스템 검증 (Verify Subsystems)

## 1. Context & Objective
### 🧐 Background
- Milestone 1에서 `books/` 구조 개편, Markdown 오더 도입 등 많은 변화가 있었습니다.
- 하지만 시스템을 구축해주는 자동화 스크립트(`install.sh`)는 아직 구버전일 가능성이 높습니다.
- 또한, 리팩토링 과정에서 남은 부산물(`*.deprecated`)이나 빈 폴더 규칙(`.gitkeep`)이 깨졌는지 확인해야 합니다.

### 🎯 Goal
- **Install Script Update**: 변경된 폴더 구조(`books/domain` 등)를 스크립트에 반영.
- **Sanity Check**: 템플릿 파일, 폴더 구조, `ATLAS`가 일관성을 유지하는지 전수 조사.
- **Cleanup**: 더 이상 필요 없는 Legacy 파일 제거.

## 2. Todo List
### A. Automation (설치 스크립트)
- [ ] `docs/odd/setup/install.sh` 점검 및 업데이트.
    - `books` 하위 디렉토리(`domain`, `tech`, `general`) 생성 로직 추가.
    - `tasks/_template` 내의 Markdown 템플릿 복사 로직 확인.

### B. Integrity (무결성 검증)
- [ ] **Templates**: `order.md`, `progress.md`, `report.md` 템플릿 내용 점검.
- [ ] **Structure**: 각 폴더에 `.gitkeep`이 정상적으로 존재하는지 확인 (빈 폴더 유지).

### D. Deploy (배포)
- [ ] **Git Push**: 변경된 시스템(`docs/odd`, `install.sh`)을 원격 저장소에 배포 (v0.9.2).
- [ ] **.gitignore 점검**: `docs/odd/tasks/active/` 내의 파일들이 ignore 되는지 확인 (개인 작업 보호).
