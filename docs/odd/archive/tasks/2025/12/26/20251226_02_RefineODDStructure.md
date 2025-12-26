---
id: "20251226_02_RefineODDStructure"
type: "refactor"
status: "inprogress"
priority: "high"
created_at: "2025-12-26"
summary: "ODD 시스템 구조 개선: Markdown 오더 도입 및 라이브러리/히스토리 정의 확립"
context:
  - "docs/odd/ATLAS.md"
  - "docs/odd/roadmap.md"
---

# 📋 Order: ODD 시스템 구조 정의 및 개선

## 1. Context & Objective (배경 및 목표)

### 🧐 Issues & Insight
1.  **JSON의 한계**: 현재의 `order.json` 포맷은 긴 텍스트 매뉴얼이나, 복잡한 설계 철학, 논의된 맥락(Context)을 충분히 담아내기 어렵습니다. 문자열(`\n`)로 인코딩된 오더는 가독성이 떨어집니다.
2.  **개념의 모호성**: 프로젝트가 커지면서 `Specs`(기획서), `Books`(지식), `History`(기록) 간의 경계가 모호해질 수 있습니다. 사용자의 통찰대로 "책은 현행화(Living), 히스토리는 불변(Immutable)"이라는 원칙을 시스템에 박아넣어야 합니다.

### 🎯 Goal
- **Markdown Order 도입**: 오더 시스템을 `JSON`에서 `Markdown + YAML Frontmatter` 구조로 전면 개편합니다.
- **Library/History 정의 확립**: 논의된 내용을 `ATLAS.md`와 `Books`에 반영하여 프로젝트의 헌법으로 삼습니다.

## 2. Todo List (할 일)

### A. System Refactoring (Order Format)
- [ ] **Template 생성**: `docs/odd/tasks/_template/order.md` 생성 (YAML Frontmatter 적용).
- [ ] **가이드 업데이트**: `ATLAS.md` 및 `README.md`에서 오더 작성 가이드를 Markdown 방식으로 수정.
- [ ] **Legacy 제거**: 기존 `order.json` 템플릿 처리 방안 결정 (Deprecated).

### B. Definition Alignment (ATLAS Update)
- [ ] **ATLAS.md 수정**:
    - **Library (Books)**: "현재 상태(Current State)"를 대변하는 현행화된 문서. 개정판이 나오면 내용이 바뀜.
    - **History**: "변경 내역(Delta)"을 기록하는 불변의 문서. 시계열 데이터.
    - **Specs**: "작업의 기준(Truth)". 완료된 스펙은 Book으로 흡수되고, 변경된 스펙은 History에 남음.

### C. Library Initialization
- [ ] **도서관 서문(Preface) 작성**: `docs/books/README.md` 또는 `overview.md`를 통해 이 프로젝트가 무엇인지(Identity) 정의.
