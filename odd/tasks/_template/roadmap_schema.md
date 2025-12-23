# Roadmap Schema & Rules (ODD v0.8.0)

## 1. 개요
`roadmap.md`는 프로젝트의 현재 상태를 보여주는 **스냅샷(Snapshot)**입니다.

## 2. 구조 (Structure)
- **Current Status**: 현재 어떤 단계(Phase)에 있는지, 상태는 무엇인지 명시
- **Active Phases**: 현재 진행 중이거나 곧 진행할 마일스톤
- **Backlog**: 당장 진행하지 않지만 기억해야 할 아이디어

## 3. 업데이트 규칙 (Update Rules)
- Progress 시작 시: 해당 Task가 어느 Phase에 속하는지 확인
- Report 완료 시: Task 체크박스 `[x]` 처리 및 Phase 진행률 업데이트
- 상태 변경 시: `State` 필드 업데이트 (Mapping -> Development -> Review)
