# Project Atlas: The Single Source of Truth
> **ODD System Version: v0.7.3**

이 문서는 **ODD(Order-Driven Development) 시스템의 유일한 나침반(Map)**입니다.
모든 에이전트는 작업 시작 시 이 문서를 먼저 참조하여 현재 위치와 규칙을 확인하십시오.

---

## 🏛️ System Architecture (ODD Space)

### 1. 📍 Tasks (Working Memory) -> `./tasks/`
- **`roadmap.md`**: 프로젝트의 현재 상태 스냅샷.
- **`active/`**: 현재 진행 중인 JSON 오더 파일들이 위치함.

### 2. 🧠 Books (Long-term Memory) -> `./books/`
- **`_template/book.md`**: 도메인 지식 기록용 마크다운.
- **`domain/`**: 비즈니스 로직, UI 등 도메인 지식.
- **`tech/`**: 기술 스택, 인프라 지식.

### 3. 📜 History (Chronicles) -> `./history/`
- **`_template/history.md`**: 월별 히스토리 기록용 템플릿.
- **`yyyy/mm/`**: 시계열로 쌓이는 불변의 기록.

### 4. 📦 Archive (Completed Memory) -> `./archive/`
- 완료된 리포트 파일들이 `yyyy/mm/dd/` 구조로 보관됨.