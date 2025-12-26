---
order_id: 20251225_04_Refine_Docs_and_Library
type: refactor
priority: normal
status: pending
---

# 🎯 Goal
> **한 줄 요약**: 시스템 템플릿 명칭을 명확히 하고, 프로젝트 문서(Spec, Books, History)의 최신 상태를 점검 및 정리한다.

# 💼 Context
### Problem
1. **템플릿 혼동**: `odd/ATLAS.md`(소스)와 `docs/odd/ATLAS.md`(사용자)의 파일명이 같아 혼동을 줄 수 있음.
2. **문서 현황 불명확**: 프로젝트 초기로서 Specs, Books 등의 폴더가 비어있거나 템플릿만 존재하여, 실제 사용 가능한 상태인지 점검이 필요함.

### Solution
1. **Rename**: 소스 `odd/ATLAS.md`를 `odd/ATLAS_TEMPLATE.md`로 변경하여 역할을 명확히 함.
2. **Review & Update**: 
    - `install.sh` 스크립트 수정 (변경된 파일명 반영).
    - `docs/specs`, `docs/odd/books` 등의 초기 가이드/템플릿 내용 보강.

# ✅ Requirements
- [ ] `odd/ATLAS.md` -> `odd/ATLAS_TEMPLATE.md` 리네임
- [ ] `odd/setup/install.sh` 로직 수정
- [ ] Specs 및 Books 디렉토리의 초기 가이드라인 점검 및 필요 시 `README` 보강

# 🗺️ Plan
- [ ] **Step 1**: 템플릿 리네임 및 설치 스크립트 수정
- [ ] **Step 2**: 문서 라이브러리(Specs, Books) 점검 및 업데이트
