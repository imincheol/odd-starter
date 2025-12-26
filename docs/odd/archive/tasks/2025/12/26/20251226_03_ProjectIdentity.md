---
id: "20251226_03_ProjectIdentity"
type: "docs"
status: "inprogress"
priority: "high"
created_at: "2025-12-26"
summary: "도서관(Library) 채우기 Part 1: 프로젝트 정체성 및 개요 정의"
context:
  - "docs/odd/ATLAS.md"
  - "docs/odd/books/README.md"
---

# 📋 Order: 프로젝트 정체성 및 스펙 정의 (Book)

## 1. Context & Objective
### 🧐 Background
- 시스템 구조는 잡혔으나, 정작 "이 프로젝트가 무엇인가?"를 설명하는 **책(Content)**이 비어있습니다.
- ODD Starter Kit의 정체성을 정의하고, `specs/`에 흩어진 기획 내용을 `books/`로 통합해야 합니다.

### 🎯 Goal
- **Identity Book**: `docs/odd/books/general/overview.md` 작성.
- **Specification Migration**: 불변의 스펙은 History로, 살아있는 스펙은 Book으로 정의.

## 2. Todo List
### A. Fix & Policy (우선순위)
- [x] **로드맵 한글화**: `tasks/roadmap.md`를 한국어로 전면 수정 (User Rule 준수).
- [x] **언어 정책 수립**: 한국어 중심 개발과 외국인 접근성 사이의 균형점을 찾아 `books/general/policy-language.md`로 정리.

### B. General Knowledge (Identity)
- [x] **`docs/odd/books/general/overview.md` 작성**
- [ ] **`docs/odd/books/general/conventions.md` 작성** (Optional)

### C. Bilingual Refactoring (Language Policy)
- [x] **`docs/odd/ATLAS.md` 이중 언어화**: 영어(상단) + 한국어(하단) 병기 구조로 변경.
- [x] **`README.md` 이중 언어화**: 프로젝트 대문 글로버화.

### D. Roadmap Sync
- [x] `roadmap.md`의 내용을 기반으로 현재 프로젝트의 위상을 책에 반영.
