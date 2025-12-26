---
id: "20251226_12_EnhanceInstallerUX"
type: "feat"
status: "approved"
priority: "high"
created_at: "2025-12-26"
summary: "사용자가 설치/업데이트 후 다음 행동을 명확히 알 수 있도록 install.sh 로직 및 안내 강화"
context:
  - "docs/odd/setup/install.sh"
  - "docs/odd/setup/ODD_INIT.md"
  - "docs/odd/setup/ODD_UPDATE.md"
---

# 📋 Order: 설치 스크립트 UX 개선 (초기화 vs 업데이트 분기 안내)

## 1. Context & Objective (배경 및 목표)

### 🧐 Issues & Insight
1. 현재 `install.sh`는 파일을 복사하는 기능에 집중되어 있어, 설치가 끝난 후 사용자가 무엇을 해야 하는지(처음이면 INIT, 기존이면 UPDATE)에 대한 동선 안내가 부족함.
2. 사용자의 환경(신규 프로젝트 vs 기존 프로젝트)을 감지하거나, 최소한 실행 후 출력 메시지에서 두 시나리오를 명확히 구분해 주어야 함.

### 🎯 Goal
- `install.sh` 실행 시 로컬에 `docs/odd/ATLAS.md`가 이미 존재하는지 체크하여 **[신규 설치]** 인지 **[시스템 업데이트]** 인지 판단.
- 판단된 결과에 따라 AI에게 건네줄 다음 가이드(`ODD_INIT.md` 또는 `ODD_UPDATE.md`)를 맞춤형으로 안내.
- 사용자 경험(UX)을 개선하여 도구 도입의 허들을 낮춤.

## 2. Todo List (할 일)

### A. Install Script Enhancement
- [ ] `install.sh` 내부에 기존 ODD 존재 여부 체크 로직 추가 (`IS_UPDATE` 플래그)
- [ ] 종료 메시지(Final Message)를 상황별로 분기 처리
  - **신규(New)**: "축하합니다! `docs/odd/setup/ODD_INIT.md`를 AI에게 건네주어 프로젝트를 시작하세요."
  - **업데이트(Update)**: "성공적으로 업데이트되었습니다! 변경 사항 적용을 위해 `docs/odd/setup/ODD_UPDATE.md`를 AI에게 건네주세요."

### B. Guide Refinement
- [ ] `ODD_INIT.md` 및 `ODD_UPDATE.md` 상단에 사용자가 복사하기 편하도록 요약 메시지 보강

### C. Verification
- [ ] 신규 설치 시나리오 테스트 (docs 삭제 후 실행)
- [ ] 업데이트 시나리오 테스트 (기존 상태에서 실행)
