# 🔄 The Order System (오더 시스템)

> **"No Order, No Work."**
> 승인된 주문만이 코드가 된다. 이것은 ODD의 제1원칙입니다.

## 1. Concept (개념)
오더 시스템은 AI와의 모호한 대화를 명확한 **작업 지시서(Order)**로 변환하여 협업의 정확도를 높이는 프로세스입니다.
구두 계약(Chat)이 아닌 서면 계약(Markdown)을 통해 작업의 **범위, 목표, 맥락**을 고정합니다.

## 2. The Artifacts (3대 문서)

### 📋 Order (주문서)
- **파일명**: `order.md`
- **역할**: "무엇을 할 것인가?" (기획서 + 작업지시서)
- **필수 항목**:
    - `id`: 고유 식별자 (예: `20251226_01_FixBug`)
    - `context`: 참고해야 할 책이나 문서 링크
    - `todo`: 체크리스트 형태의 세부 작업 목록
- **승인 절차**: `draft` 상태로 작성 -> User 승인 -> `inprogress` 변경 -> 작업 시작.

### 🚀 Progress (진행 일지)
- **파일명**: `progress.md`
- **역할**: "어떻게 하고 있는가?" (작업 로그)
- **내용**:
    - 작업 착수 시점의 생각 (Plan)
    - 진행 중 발생한 문제 및 해결 과정 (Log)
    - 변경된 파일 목록 (Artifacts)
- **중요성**: AI 세션이 끊겨도 이 파일을 읽으면 작업을 이어서 할 수 있습니다.

### 📸 Roadmap Snapshot (로드맵 스냅샷)
- **위치**: `docs/odd/history/roadmaps/YYYY/`
- **규칙**:
    - 주요 **마일스톤(Milestone)**이 끝날 때마다 현재의 `roadmap.md`를 스냅샷으로 저장합니다.
    - 파일명 컨벤션: `YYYYMMDD_vX.X.X_description.md`
    - 목적: 프로젝트의 계획이 어떻게 변해왔는지 궤적(Trajectory)을 추적하기 위함입니다.

### 🏁 Report (결과 보고서)
- **파일명**: `report.md`
- **역할**: "결과는 무엇인가?" (최종 산출물 + 회고)
- **후속 조치**: 작업이 끝나면 사서(Librarian)가 이 리포트를 기반으로 **지식을 갱신**하고 **기록을 아카이빙**합니다.

## 3. The Lifecycle (생명주기)
1.  **Draft**: `tasks/_template/order.md` 복사 및 작성.
2.  **Order**: User 승인 (`status: inprogress`).
3.  **Work**: 코드 작성 및 `progress.md` 기록.
4.  **Review**: 결과물 확인 및 `report.md` 작성.
5.  **Archive**: `docs/odd/archive/`로 이동. (Task 종료)
