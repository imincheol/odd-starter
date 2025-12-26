# 오더 리포트: 아키텍처 및 로드맵 관리 체계 정비 (Refine Architecture & Roadmap Management)

## 1. 개요 (Overview)
- **오더 ID**: 20251226_07_RefineArchitecture
- **수행 기간**: 2025-12-26
- **목표**: 로드맵 비대화 방지 및 아카이브 구조의 명확화.

## 2. 변경 사항 (Changes)

### 2.1. 아카이브 구조 개편 (Restructured Archive)
기존의 날짜 기반 평면 아카이브 구조를 목적별로 분리하였습니다.
- **기존**: `docs/odd/archive/{yyyy}/{mm}/{dd}/` (태스크)
- **변경**: 
    - `docs/odd/archive/tasks/{yyyy}/{mm}/{dd}/`: 완료된 태스크 보관.
    - `docs/odd/archive/roadmaps/{yyyy}/{mm}/`: 로드맵 스냅샷 보관 (주요 변경 시점).

### 2.2. 로드맵 정리 (Roadmap Cleanup)
- `tasks/roadmap.md`에서 이미 완료된 **Milestone 1 (Foundation)** 및 **Milestone 2 (Integrity)** 항목들을 정리했습니다.
- 정리 전 로드맵은 `archive/roadmaps/2025/12/20251226_roadmap_snapshot_before_cleanup.md`로 백업되었습니다.
- 이제 로드맵은 **Milestone 3 (Refinement)** 및 현재 진행 중인 상태에 집중합니다.

### 2.3. ATLAS 및 문서 업데이트 (Documentation)
- **ATLAS.md**:
    - Workflow에 **"Divide and Conquer"** 전략 명시.
    - Archive 구조 및 History/Book의 개념적 차이 업데이트.
- **Structure.md**:
    - 변경된 아카이브 구조 반영.
- **odd-template**:
    - `docs/odd`의 최신 구조(Archive split 등)를 `odd-template`에 반영하여 설치 시에도 적용되도록 동기화.

## 3. 결론 (Conclusion)
이제 ODD 시스템은 과거의 모든 기록을 `archive/tasks`에 안전하게 보관하면서도, `archive/roadmaps`를 통해 프로젝트 진행 상황의 스냅샷을 관리할 수 있게 되었습니다. 이는 `roadmap.md`를 항상 가볍고 최신 상태로 유지하는 데 기여할 것입니다.

## 4. 향후 과제 (Future Works)
- `books` 레벨의 히스토리 관리(Domain History)에 대한 구체적인 구현 방안 수립 필요.
