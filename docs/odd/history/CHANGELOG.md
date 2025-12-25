# ODD Starter Kit Version History

## v0.9.1 (Ongoing)
### Features & Improvements
- **Context Retention**: `progress.json` 템플릿과 워크플로우를 개선하여 작업 재개 시 참조했던 Spec/Book을 확인할 수 있게 함 (20251225_02_ImproveContextRetention).
- **Dogfooding**: `docs/odd` 폴더를 통해 ODD Starter 프로젝트 자체를 ODD 시스템으로 관리하도록 설정.
- **Empty Dirs Maintenance**: `.gitkeep` 파일 추가 및 설치 스크립트 수정을 통해 빈 폴더 구조가 Git과 설치본에서 유지되도록 보완.

## v0.9.0 (2025-12-25)
### Major Refactoring
- **Directory Structure**: `.odd` (숨김 폴더)를 `odd` (일반 폴더)로 변경하여 접근성 향상.
- **Install Script Update**: 폴더명 변경에 맞춰 `install.sh` 로직 수정 (Remote `odd` -> Local `.odd` Temp -> Target).

## v0.8.0 (2025-xx-xx)
- **Release**: ODD v0.8.0 Standard Edition w/ Order Driven Development Core.

> *Note: This changelog is automatically curated from ODD System reports and Git history.*
