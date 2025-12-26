# 🚀 ODD Starter Kit (v0.9.3 Standard Edition)

> **[English] "Curing AI Amnesia in Software Development."**
> **[한국어] "AI 개발의 기억 상실증을 치료하라."**
>
> **Order Driven Development (ODD) v0.9.3: Library & Atlas Framework**

---

## 🛠️ 1. Installation (설치하기)

**[English]**
Run the command below in your terminal to instantly set up the ODD system.

**[한국어]**
어떠한 환경에서도 터미널에서 아래 명령어를 실행하면, 즉시 ODD 시스템이 구축됩니다.

```bash
curl -sL https://raw.githubusercontent.com/imincheol/odd-starter/main/docs/odd/setup/install.sh | bash
```

*(Note: `docs/` folder will be created. Your existing data is safe.)*

```
docs/
├── odd/                # 🧠 Operation & Memory (The Brain)
│   ├── ATLAS.md        #    - Single Source of Truth
│   ├── tasks/          #    - Working Memory (Roadmap & Active Orders)
│   │   ├── roadmap.md  #    - Project Snapshot (Navigation)
│   │   ├── active/     #    - Currently Processing Tasks
│   │   └── _template/  #    - Order/Progress/Report Templates
│   ├── books/          #    - Long-term Memory (Living Knowledge)
│   │   ├── general/    #    - Core Principles & UI/UX Policies
│   │   ├── domain/     #    - Business Logic & Data Models
│   │   └── tech/       #    - Tech Stack & Coding Standards
│   ├── history/        #    - Chronicles (Immutable Delta)
│   │   ├── system/     #    - Infrastructure & Refactoring Logs
│   │   └── domain/     #    - Context & Policy Change Logs
│   ├── archive/        #    - Storage (Completed Jobs)
│   └── setup/          #    - Setup Scripts (install.sh)
│
└── specs/              # 🏛️ Product Specifications
    ├── README.md       #    - Product Overview
    └── ...             #    - Planning, Design, Dev Specs
```

---

## 📖 2. User Guide (사용자 가이드)

### 🆕 New Project (신규 프로젝트)

**[English]**
1. **Initial Setup**: Run the install script.
2. **First Order**: Share `docs/odd/setup/ODD_INIT.md` with your AI agent.
3. **Execution**: Create an Order -> Progress -> Report -> Archive.

**[한국어]**
1. **초기 설정**: 설치 스크립트를 실행합니다.
2. **첫 주문**: `docs/odd/setup/ODD_INIT.md` 내용을 복사해서 AI에게 건네주세요.
3. **실전 개발**: 오더 생성 -> 작업 수행 -> 리포트 제출 -> 아카이브 순으로 진행합니다.

### 🏙️ Existing Project (기존 프로젝트)

**[English]**
1. **Update**: Run the install script in your project root.
2. **Migration**: Share `docs/odd/setup/ODD_UPDATE.md` with your AI agent to analyze and migrate your project context into ODD.

**[한국어]**
1. **업데이트**: 프로젝트 루트에서 설치 스크립트를 실행합니다.
2. **이식(Migration)**: `docs/odd/setup/ODD_UPDATE.md` 내용을 AI에게 주면, 기존 코드를 분석하여 로드맵을 현행화해줍니다.

---

## 🧭 3. Reference Context (참조 가이드)

Efficiency comes from clarity. Use generic personas to call the AI.
효율적인 협업을 위해, AI를 부를 때 **역할(@Context)**을 지정해 주세요.

| Context | Role | Purpose |
| :--- | :--- | :--- |
| **`@odd`** | **Student (학생)** | "Start Task", "Check Progress" (Tasks, Roadmap) |
| **`@library`** | **Librarian (사서)** | "Update Books", "Check Tech Stack" (Books, History) |
| **`@specs`** | **Professor (교수)** | "Review Order", "Check Requirements" (Specifications) |

---

## 💡 Pro Tips

*   **Session Start**: Always load `ATLAS.md` and `roadmap.md` first.
*   **Approve First**: Never let the AI code without an **Approved Order**.
*   **Librarian Update**: The Librarian is responsible for both **History (Immutable)** and **Books (Living Doc)** after every task.
