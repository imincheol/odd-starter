# 🔄 ODD 시스템 업데이트 프로토콜 (System Update Guide)

> **ODD Standard Protocol v0.8.0**
>
> **For AI Agent:**
> 사용자가 이 문서를 제공하면, 당신은 **"ODD 시스템 관리자"**로서 기존 프로젝트를 ODD 체계에 맞게 정리(Refactoring/Organizing)해야 합니다.
> 모든 작업은 **Order(명령서)와 Progress(진행상황)**에 기반하여 기록되어야 합니다.

---

## **Phase 0: 질서 부여 (Self-Registration)**

가장 먼저, 이 마이그레이션 작업 자체를 시스템에 등록하여 추적 가능하게 만드십시오.

1. **오더 생성**: `docs/odd/tasks/active/000_migration.json` 파일을 생성하십시오.
   - **Type**: `setup`
   - **Goal**: "기존 프로젝트 분석 및 ODD 시스템으로의 이관"
   - **Plan**: 1. 현황 분석, 2. 지식 이관, 3. 업무 동기화
2. **진행 상황 초기화**: `docs/odd/tasks/active/000_migration_progress.json`을 생성하고 상태를 `IN_PROGRESS`로 설정하십시오.
3. **로드맵 등록**: `docs/odd/roadmap.md` 최상단에 `### [Phase 0] Migration` 섹션을 만들고, 이 태스크(`000_migration`)를 최우선 순위로 체크박스(`[ ]`)와 함께 등록하십시오.

## **Phase 1: 시스템 정제 및 현황 분석 (Cleanup & Analysis)**
이제 오더가 생성되었으니, 공식적으로 작업을 시작합니다. `progress.json`에 로그를 남기며 진행하세요.

### 1-1. 레거시 파일 정리 (System Cleanup)
가장 먼저, 구버전 시스템의 잔재를 청소하여 혼란을 방지하십시오.
1.  **구버전 프로토콜 삭제**: `ODD_BOOTSTRAP.md`, `ODD_MIGRATION.md` 등 이름이 변경되었거나 더 이상 쓰이지 않는 구버전 가이드 파일이 있다면 **과감히 삭제**하십시오.
2.  **구버전 스크립트 삭제**: 프로젝트 루트의 `install_odd.sh` 등 구버전 설치 파일이 있다면 삭제하십시오. (최신 스크립트는 `docs/odd/setup/install.sh`에 있습니다.)
3.  **버전 확인 및 마이그레이션**:
    *   **설정/상태 파일**(`roadmap.md`, `ATLAS.md`): 최신 포맷으로 내용을 갱신(Refactor)하고 버전을 업데이트하십시오.
    *   **기록/아카이브 파일**(`history/`, `archive/`): **절대 수정하지 마십시오.** 과거의 기록은 그 당시의 버전으로 보존되어야 합니다.
        *   > **Rule of Interpretation**: AI는 과거 기록을 읽을 때 파일에 명시된 버전을 확인하고, **"그 시대의 문맥(Context)"**에 맞춰 해석해야 합니다. (마치 조선시대 서책을 현대 문법으로 고치지 않고, 시대적 배경을 고려해 해석하듯이.)

### 1-3. 버저닝 및 동기화 규칙 (Versioning & Sync Rules)
시스템 버전을 변경할 때는 다음 규칙을 엄격히 따르십시오.

1.  **Semantic Versioning (SemVer) 기준**:
    *   **Major (x.0.0)**: 로드맵 Phase 변경, 데이터 구조의 호환성 파괴, 대규모 프로세스 변경 시.
    *   **Minor (0.x.0)**: 새로운 기능(Feature) 추가, 폴더 구조 변경, 새로운 문서 템플릿 추가 시.
    *   **Patch (0.0.x)**: 문서의 오타 수정, 버그 수정, 예제 파일 업데이트 등 단순 변경 시.
2.  **전수 동기화 원칙 (All or Nothing)**:
    *   버전을 올릴 때는 핵심 파일(`README.md`, `ATLAS.md`, `install.sh`)뿐만 아니라, **모든 템플릿(`_template/`)**과 **예제 파일(`*.temp`)**까지 빠짐없이 버전을 통일해야 합니다.
    *   하나라도 버전이 다르면 시스템 무결성이 깨진 것으로 간주합니다.
    *   특히, 히스토리나 리포트의 **형식(Format)**이 변경되면 반드시 버전을 올려야 합니다.

### 1-4. 현황 분석 (Analysis)
1.  **파일 구조 스캔**: 프로젝트의 전체 파일 구조를 읽고 핵심 디렉토리와 파일을 파악하십시오. (예: `src`, `components`, `api` 등)
2.  **기술 스택 식별**: `package.json`, `requirements.txt` 등의 의존성 파일을 분석하여 사용 중인 기술 스택을 파악하십시오.
3.  **히스토리 분석**: 최근 `git log`나 커밋 메시지를 확인하여 현재 진행 중이거나 최근에 완료된 작업이 무엇인지 파악하십시오.

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
