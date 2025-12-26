# 🏗️ ODD System Structure (시스템 구조)

> **"Template vs Instance"**
> ODD 시스템은 **배포용 원본(Template)**과 **실행용 인스턴스(Instance)**로 나뉩니다.

## 1. Directory Structure (디렉토리 구조)

### 📦 `odd-template/` (The Source)
이 프로젝트(`odd-starter`)의 핵심 산출물이자, 외부 프로젝트에 설치될 때 사용되는 **원본 템플릿**입니다.
이 폴더의 내용은 `install.sh`를 통해 사용자의 프로젝트로 복사됩니다.

- **`ATLAS_TEMPLATE.md`**: 복사될 때 `ATLAS.md`가 되는 원본.
- **`setup/install.sh`**: 설치 스크립트. GitHub에서 이 파일을 받아 실행합니다.
- **`books/README_TEMPLATE.md`**: 라이브러리 대문 원본.
- **`tasks/_template/`**: 오더 시스템 템플릿들 (`order.md`, `progress.md` 등).

### ⚙️ `docs/odd/` (The Instance)
현재 이 프로젝트를 관리하기 위해 **설치된 ODD 시스템**입니다. (Dogfooding)
"ODD Starter Kit" 프로젝트 자체를 개발하기 위한 두뇌 역할을 합니다.

- **`ATLAS.md`**: 현재 프로젝트의 헌법.
- **`tasks/`**: 현재 진행 중인 오더들.
- **`books/`**: 현재 프로젝트에 대한 지식(`domain`, `tech` 등).
- **`archive/`**: 완료된 작업물 저장소 (`tasks/`, `roadmaps/`로 구분).

## 2. File Roles (파일 역할 정의)

| File Name | Role | Location |
| :--- | :--- | :--- |
| **`ATLAS.md`** | **System Prompt**. AI가 세션 시작 시 반드시 읽어야 하는 파일. | `docs/odd/` |
| **`roadmap.md`** | **Project Snapshot**. 프로젝트의 현재 상태와 진행률을 보여주는 지도. | `docs/odd/tasks/` |
| **`install.sh`** | **Installer**. `odd-template/`의 내용을 로컬로 가져오는 스크립트. | `docs/odd/setup/` |
| **`book.md`** | **Knowledge Unit**. 지식을 담는 책의 기본 단위. | `docs/odd/books/` |

## 3. Deployment Flow (배포 흐름)
1.  **Develop**: `docs/odd/`에서 ODD 시스템을 개선하고 사용해봅니다.
2.  **Sync**: 개선된 내용을 `odd-template/`으로 복사하고 템플릿화 합니다.
3.  **Deploy**: GitHub에 Push 합니다.
4.  **Install**: 사용자는 `install.sh`를 통해 `odd-template/`의 내용을 자신의 `docs/odd/`로 내려받습니다.
