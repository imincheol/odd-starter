---
id: "20251226_13_AutoGenerateSetupOrder"
status: "completed"
created_at: "2025-12-26"
summary: "설치 및 업데이트 시 AI 에이전트용 초기 오더 가이드 파일을 자동 생성하는 기능을 구현함"
---

# 📝 Report: 설치 시 초기 오더 자동 생성 기능 구현

## 1. Summary of Work (작업 요약)
- **자동화 로직 구현**: `install.sh` 실행 시 신규 설치/업데이트 여부에 따라 적절한 초기 오더 파일(`000_bootstrap.md` 또는 `000_migration_v0.9.3.md`)을 `docs/odd/tasks/active/` 폴더에 자동으로 생성하도록 개선했습니다.
- **AI 동선 최적화**: 사용자가 설치 후 AI에게 길게 설명할 필요 없이, AI가 세션을 시작하며 즉시 시스템 초기화 또는 마이그레이션 오더를 발견하고 수행할 수 있도록 했습니다.
- **템플릿 반영**: 배포용 `odd-template`에도 동일한 로직을 적용하여 모든 환경에서 일관된 UX를 제공합니다.

## 2. Key Changes (주요 변경 사항)

### 📂 install.sh (Enhancement)
- `create_initial_order` 함수 추가: 날짜 기반의 Frontmatter를 포함한 정규 오더 문서 생성.
- **신규 설치 시**: "시스템 초기화 및 부스트랩" 오더 생성.
- **업데이트 시**: "시스템 마이그레이션 (v0.9.3)" 오더 생성.

### ✅ 검증 결과
- 스크립트 실행 시 `docs/odd/tasks/active/000_migration_v0.9.3.md` 파일이 정상적으로 생성됨을 확인했습니다.
- 파일 내용에 `ODD_UPDATE.md` 정독 등의 수행 지침이 명확히 포함되어 있음을 확인했습니다.

## 3. Review & Conclusion (검토 및 결론)
- "No Order, No Work"라는 ODD의 핵심 원칙을 시스템 설치 단계부터 적용할 수 있게 되었습니다.
- 사용자는 설치 후 AI에게 별다른 지시를 하지 않아도, AI가 스스로 `ATLAS.md`와 `tasks/active/`를 읽고 시스템 정비를 시작할 수 있는 강력한 자동화 환경이 구축되었습니다.
