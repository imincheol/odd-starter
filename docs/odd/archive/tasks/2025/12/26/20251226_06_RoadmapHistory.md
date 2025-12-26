---
id: "20251226_06_RoadmapHistory"
type: "feat"
status: "inprogress"
priority: "medium"
created_at: "2025-12-26"
summary: "[Milestone 2] 로드맵 히스토리(Snapshot) 관리 체계 구축"
context:
  - "docs/odd/ATLAS.md"
  - "docs/odd/tasks/roadmap.md"
---

# 📋 Order: 로드맵 히스토리 관리 (Roadmap History)

## 1. Context & Objective
### 🧐 Background
- 현재 `roadmap.md`는 단일 파일로 관리되어, 프로젝트의 진행 궤적(Trajectory)을 파악하기 어렵습니다.
- "우리가 언제 Phase 1을 끝냈지?", "원래 계획은 뭐였지?" 같은 질문에 답하려면 Git History를 뒤져야 하는데, 이는 비효율적입니다.

### 🎯 Goal
- **Snapshot System**: 로드맵의 중요한 변화(Milestone 달성 등)가 있을 때마다 스냅샷을 저장하는 규칙 정의.
- **Directory**: `docs/odd/history/roadmaps/YYYY/` 구조 생성.
- **Automation Idea**: 스크립트로 자동 백업하면 좋겠지만, 우선은 **절차(Protocol)**로 정의합니다.

## 2. Todo List
### A. Structure Setup
- [ ] `docs/odd/history/roadmaps/` 디렉토리 구조 생성.
- [ ] 현재(`2025-12-26`) 시점의 `roadmap.md`를 최초의 스냅샷으로 저장.

### B. Rule Definition (Books Update)
- [ ] `books/domain/order-system.md` (또는 `memory-model.md`)에 "로드맵 아카이빙 규칙" 추가.
    - 규칙: "Milestone이 완료되거나, 로드맵 구조가 크게 바뀔 때 스냅샷을 뜬다."
