# Project Atlas: The ODD System (v7.0)

이 문서는 **ODD(Order-Driven Development) 시스템의 유일한 나침반(Map)**입니다.
모든 에이전트는 작업 시작 시 이 문서를 먼저 참조하여 현재 위치와 규칙을 확인하십시오.

---

## 🏛️ System Architecture (ODD Space)

### 1. 📍 Tasks (Working Memory) -> `odd/tasks/`
- **`roadmap.md`**: 프로젝트의 현재 상태 스냅샷. 작업 전후 반드시 확인 및 업데이트.
- **`_template/`**: Order, Progress, Report 생성용 JSON 템플릿 및 Roadmap 규칙.
- **Active Tasks**: 현재 진행 중인 JSON 파일들이 위치함.

### 2. 🧠 Books (Long-term Memory) -> `odd/books/`
- **`_template/book.md`**: 도메인 지식 기록용 마크다운. `frontmatter`의 `reference_count` 관리 필수.
- **`domain/`**: 비즈니스 로직, UI 등 도메인 지식.
- **`tech/`**: 기술 스택, 인프라 지식.

### 3. 📜 History (Chronicles) -> `odd/history/`
- **`_template/history.md`**: 월별 히스토리 기록용 템플릿.
- **`yyyy/mm/`**: 시계열로 쌓이는 불변의 기록.

### 4. 📦 Archive (Completed Memory) -> `odd/archive/`
- 완료된 리포트 파일들이 `yyyy/mm/dd/` 구조로 보관됨.

---

## ⚡️ Workflow Protocol

1. **Order**: `odd/tasks/_template/order.json` 복사 -> `승인` -> 작업 시작
2. **Progress**: `odd/tasks/_template/progress.json` 생성 -> `roadmap.md` 업데이트 -> 구현
3. **Report**: `odd/tasks/_template/report.json` 작성 -> `odd/archive/` 이동 -> `odd/books/` 지식 추가 -> `odd/history/` 기록

---
**"기록되지 않은 것은 기억되지 않으며, 연결되지 않은 지식은 죽은 지식이다."**
