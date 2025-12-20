# 🚀 ODD Starter Kit (v5.0 Atlas Edition)

> **"AI 개발의 기억 상실증을 치료하다."**
> Order Driven Development (ODD) v5.0: Atlas & Agent System

**ODD Starter**는 LLM(Large Language Model)과의 협업 시 발생하는 컨텍스트 유실, 환각(Hallucination), 그리고 히스토리 부재 문제를 해결하기 위한 **구조적 개발 방법론(Framework)**입니다.

단순히 프롬프트를 던지는 것을 넘어, **도서관(Library)**과 **지도(Atlas)**, 그리고 **전문 에이전트(Agents)** 시스템을 통해 AI가 프로젝트의 맥락을 완벽하게 이해하고 "지속 가능한 개발"을 할 수 있도록 돕습니다.

---

## 🌟 Why ODD v5.0?

AI 코딩 툴(Cursor, Claude, ChatGPT 등)을 사용할 때 이런 문제를 겪지 않으셨나요?

* 😫 *"어제 고친 건데 오늘 또 틀리네?"* (기억력 부재)
* 😵‍💫 *"파일이 너무 많아서 뭘 참고해야 할지 모르겠어."* (컨텍스트 과부하)
* 😡 *"시키지도 않은 일을 멋대로 해버렸어!"* (통제 불가능)

ODD v5.0은 **인간의 지식 경영 방식(도서관과 관장)**을 차용하여 이 문제들을 해결합니다.

### Key Features

1. **🗺️ Atlas System (지식의 지도)**
* AI에게 수백 개의 파일을 던지는 대신, 단 하나의 진입점 **`ATLAS.md`**를 제공합니다.
* 지식 간의 **거리(Distance)**와 **위상(Topology)**을 정의하여 AI가 필요한 정보만 정확히 찾아냅니다.


2. **👥 Dual Agent Personas (이원화된 역할)**
* **👨‍🎓 Student Agent (실행가)**: 도서관에서 책을 빌려 정해진 `Order`만 수행하고 빠집니다.
* **📚 Librarian Agent (관리자)**: 작업이 끝나면 결과를 분석해 도서관의 **책(Book)**을 업데이트하고 지식을 축적합니다.


3. **🛡️ "No Order, No Work" Protocol**
* 철저한 **주문(Order) 기반 개발**입니다.
* **Draft & Stop**: 승인되지 않은 오더는 절대 실행되지 않습니다.



---

## 📂 Directory Structure

이 프로젝트는 **진실(Specs)**, **과정(Process)**, **지혜(Library)**가 물리적으로 분리되어 있습니다.

```text
.
├── CLAUDE.md                 # [SYSTEM] 에이전트의 뇌 (프롬프트 & 행동 강령)
└── docs/
    ├── library/              # [WISDOM] 지식 도서관 (RAG 저장소)
    │   ├── ATLAS.md          # 🗺️ 프로젝트의 대문 (Entry Point)
    │   ├── domains/          # 도메인 지식 (예: Sync, UI, Payment)
    │   └── tech/             # 기술 지식 (예: DB Schema, Deploy)
    │
    ├── odd/                  # [PROCESS] 업무 처리 공간
    │   ├── roadmap.md        # 📅 전체 계획 (Single Source of Truth)
    │   ├── history.md        # 📜 의사결정 로그 (태그 기반 인덱스)
    │   ├── tasks/            # 📝 현재 진행 중인 오더 (Workspace)
    │   └── archive/          # 🗄️ 완료된 오더 보관소
    │
    └── specs/                # [TRUTH] 5-Layer 스펙 (불변의 규칙)
        ├── 1_planning/       # 기획
        ├── 2_design/         # 디자인
        └── ...

```

---

## 🚀 Workflow (How it works)

ODD의 사이클은 **계획(Roadmap) → 주문(Order) → 실행(Progress) → 기록(Library)**으로 순환합니다.

### Step 1. Start with Atlas

AI 세션을 시작할 때, **`ATLAS.md`** 파일 하나만 참조시킵니다. AI는 지도를 보고 현재 위치(Roadmap)와 필요한 지식(Library)을 스스로 로드합니다.

### Step 2. Draft Order (Student Agent)

AI는 사용자의 요청을 바탕으로 **`docs/odd/tasks/`** 에 `_order.json` 파일을 **초안(DRAFT)** 상태로 작성하고 멈춥니다.

> *"오더를 작성했습니다. 승인해 주시겠습니까?"*

### Step 3. Execute & Report (Student Agent)

사용자가 승인하면, AI는 `progress.json`에 로그를 남기며 코드를 작성합니다. 완료 후 `report.json`을 제출합니다.

### Step 4. Update Wisdom (Librarian Agent)

작업이 끝나면 **관장(Librarian)** 모드로 전환하여, 이번 작업에서 얻은 경험(버그, 노하우)을 **`docs/library/`** 의 책들에 업데이트합니다.

> *"이번 싱크 로직 변경 사항을 `sync_logic.md` 책에 기록했습니다."*

---

## 🛠️ Getting Started

1. **Clone & Copy**: 이 저장소를 복제하거나, 폴더 구조를 당신의 프로젝트에 복사하세요.
2. **Initialize Atlas**: `docs/library/ATLAS.md` 파일을 열어 당신의 프로젝트 구조에 맞게 수정하세요.
3. **Set Roadmap**: `docs/odd/roadmap.md`에 현재 프로젝트의 단계와 할 일을 적으세요.
4. **Inject Persona**: `CLAUDE.md`의 내용을 당신의 AI(Cursor, Claude Project 등)의 시스템 프롬프트에 입력하세요.
5. **Start!**: "아틀라스 확인하고 첫 번째 오더 시작해"라고 명령하면 됩니다.

---

## 📜 Philosophy

> **"지능은 언어 간의 거리(Distance)를 파악하는 능력이다."**

ODD v5.0은 단순한 자동화를 거부합니다. 우리는 AI가 인간의 뇌처럼 **지식의 거리를 이해하고**, 과거의 경험을 통해 **스스로 성장하는 시스템**을 지향합니다.

**Welcome to the Future of Collaboration.**
