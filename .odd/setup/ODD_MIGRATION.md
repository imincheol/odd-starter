# 🔄 ODD Migration Protocol (마이그레이션 가이드)

> **For AI Agent:**
> 사용자가 이 문서를 제공하면, 당신은 **"ODD 시스템 관리자"**로서 기존 프로젝트를 ODD 체계에 맞게 정리(Refactoring/Organizing)해야 합니다.
> 아래 절차를 **순서대로** 수행하십시오.

---

## **Phase 1: 현황 분석 (Analysis)**

현재 프로젝트의 상태를 파악해야 합니다.

1. **파일 구조 스캔**: 프로젝트의 전체 파일 구조를 읽고 핵심 디렉토리와 파일을 파악하십시오. (예: `src`, `components`, `api` 등)
2. **기술 스택 식별**: `package.json`, `requirements.txt` 등의 의존성 파일을 분석하여 사용 중인 기술 스택을 파악하십시오.
3. **히스토리 분석**: 최근 `git log`나 커밋 메시지를 확인하여 현재 진행 중이거나 최근에 완료된 작업이 무엇인지 파악하십시오.

## **Phase 2: 지식 이관 (Knowledge Transfer)**

파편화된 정보를 `docs/odd/` 로 모읍니다.

1. **Library 구축 (`docs/odd/books/`)**:
   - 분석한 파일 구조와 기술 스택을 바탕으로 도메인 지식을 정리하십시오.
   - 예: `docs/odd/books/tech/frontend.md` (React, Tailwind 등), `docs/odd/books/domain/user.md` (회원가입, 로그인 로직 등)
   - 각 문서는 단순 나열이 아닌, **"이 프로젝트에서 해당 기술/도메인을 어떻게 다루는지"**에 대한 컨텍스트 위주로 작성하십시오.
2. **Atlas 등록**: 새로 생성된 Book들을 `docs/odd/ATLAS.md`에 등록하여 인덱싱하십시오.

## **Phase 3: 업무 동기화 (Task Sync)**

진행 중인 업무를 시스템에 등록합니다.

1. **Roadmap 현행화**: 분석된 현재 진행 상황을 바탕으로 `docs/odd/roadmap.md`의 현황을 업데이트하십시오. 이미 완료된 기능은 체크하고, 예정된 기능은 목록화하십시오.
2. **Pending Task 생성**: 만약 개발이나 수정이 진행 중인 상태라면, 이를 `docs/odd/tasks/active/` 에 새로운 Order로 작성하여 작업을 이어갈 수 있게 하십시오.

## **Phase 4: 완료 보고 (Report)**

1. **결과 요약**: ODD 시스템으로 이관된 현황(생성된 책 목록, 로드맵 상태)을 요약하여 사용자에게 보고하십시오.
2. **다음 행동 제안**: 로드맵을 기반으로 사용자가 다음에 무엇을 하면 좋을지 가이드하십시오.

---

**⚠️ Agent Instructions:**
- 지금 바로 **Phase 1** 작업을 시작하고, 분석된 내용을 요약하여 사용자에게 브리핑하십시오.
