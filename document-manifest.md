# Document Manifest

This file serves as a guide to the location of all project documents, both templates and instantiated documents. It provides a central index of all files in the Windsurf Project Template.

## Key Documentation for Natural Language Trigger System

These documents provide comprehensive information about the advanced trigger system:

- **global-rules.md** - System-wide rules for agent activation and memory maintenance
- **.windsurfrules** - Local configuration file for project-specific settings
- **README.md** - Main documentation with quick start guide

## Security and Waterfall Methodology Documentation

These documents provide guidance on security practices and waterfall methodology implementation:

### Security Documentation
- **docs/security-architecture.md** - Comprehensive security architecture reference
- **docs/security-standards.md** - Security standards and requirements
- **agents/security-architect-agent.md** - Security Architect agent instructions
- **agents/security-engineer-agent.md** - Security Engineer agent instructions
- **artifacts/security/threat-model.md** - Sample threat model
- **artifacts/security/security-controls.md** - Security controls implementation guide

### Waterfall Methodology Documentation
- **templates/phase-gate-template.md** - Template for phase gate reviews
- **templates/formal-requirements-template.md** - Template for formal requirements specification
- **templates/system-design-template.md** - Template for system design documentation
- **templates/change-request-template.md** - Template for change request management
- **artifacts/requirements/phase-gate-review.md** - Sample phase gate review

## Templates

### Document Templates
All document templates are stored in the `templates/` directory with `.md` extension:
- `templates/project-brief.md` - Project brief template
- `templates/prd.md` - Product requirements document template
- `templates/epicN.md` - Epic template
- `templates/story-template.md` - User story template
- `templates/architect-checklist.md` - Architecture checklist
- `templates/architecture-templates.md` - Architecture document templates
- `templates/pm-checklist.md` - Project management checklist
- `templates/po-checklist.md` - Product owner checklist
- `templates/story-draft-checklist.md` - Story drafting checklist
- `templates/ui-ux-spec.md` - UI/UX specification template

#### Security Document Templates
- `templates/threat-model-template.md` - Threat modeling template
- `templates/security-templates.md` - Security documentation templates
- `templates/security-test-template.md` - Security testing template

#### Waterfall Document Templates
- `templates/formal-requirements-template.md` - Formal requirements specification template
- `templates/system-design-template.md` - System design document template
- `templates/phase-gate-template.md` - Phase gate review template
- `templates/change-request-template.md` - Change request template

### Task Templates
Task templates are stored in the `templates/task-templates/` directory with `.yaml` extension:
- `templates/task-templates/feature-task.yaml` - Feature task template
- `templates/task-templates/bug-task.yaml` - Bug task template
- `templates/task-templates/test-task.yaml` - Test task template
- `templates/task-templates/story-task.yaml` - Story task template
- `templates/task-templates/epic-task.yaml` - Epic task template

### Report Templates
Report templates are stored in the `templates/report-templates/` directory with `.md` extension:
- `templates/report-templates/task-completion-report.md` - Task completion report template
- `templates/report-templates/story-completion-report.md` - Story completion report template
- `templates/report-templates/epic-completion-report.md` - Epic completion report template

## Instantiated Documents
Instantiated documents (documents created from templates) are stored in the `artifacts/` directory, organized by type:

### Project Briefs and Business Analysis
- Location: `artifacts/briefs/`
- Documents:
  - project-brief.md (from templates/project-brief.md)

### Product Requirements
- Location: `artifacts/requirements/`
- Documents:
  - prd.md (from templates/prd.md) - Product Requirements Document
  - epicN.md (from templates/epicN.md) - Epic definition

### UI/UX Specifications
- Location: `docs/`
- Documents:
  - ui-ux-spec.md (from templates/ui-ux-spec.md) - UI/UX specifications

### Architecture and Technical Design
- Location: `artifacts/architecture/`
- Documents:
  - architecture.md (from templates/architecture-templates.md)
  - tech-stack.md
  - api-reference.md
  - data-models.md
  - coding-standards.md
  - environment-vars.md
  - testing-strategy.md
  - project-structure.md

### User Stories
- Location: `artifacts/stories/`
- Documents:
  - Individual story files (from templates/story-template.md)

## Documentation for Developers
The `docs/` directory contains finalized documentation that is referenced by developers:
- `docs/api-reference.md` - API reference documentation
- `docs/architecture.md` - System architecture documentation
- `docs/coding-standards.md` - Coding standards and conventions
- `docs/data-models.md` - Data model definitions
- `docs/environment-vars.md` - Environment variable documentation
- `docs/project-structure.md` - Project structure documentation
- `docs/testing-strategy.md` - Testing strategy and guidelines
- `docs/ui-ux-spec.md` - UI/UX specifications

## Memory Bank System
The memory bank system maintains project context across sessions through six core files in the `memory-bank/` directory:

- `memory-bank/projectbrief.md` - Foundation document defining core requirements and goals
- `memory-bank/productContext.md` - Defines project scope and components (updated on scope changes)
- `memory-bank/systemPatterns.md` - Documents recurring patterns and practices (updated when patterns are identified)
- `memory-bank/techContext.md` - Technologies used, development setup, technical constraints, dependencies
- `memory-bank/activeContext.md` - Current work focus, decisions, and considerations (updated throughout the session)
- `memory-bank/progress.md` - Tracks work status and next steps (updated on task status changes)

## System Configuration Files
Core configuration files for the Windsurf Project Template:

- `.windsurfrules` - Primary Windsurf configuration (defines agents, workflows, and system structure)
- `global-rules.md` - Global rules for the Windsurf IDE (defines memory system behavior and workflows)
- `codebase_sync.sh` - Script to sync code to memory bank (creates codebase snapshot)
- `README.md` - Project documentation and usage guide

## Task & Test Management Files

### Task Files
Task files are automatically created in YAML format in the following directories:
- `tasks/active/` - Contains active tasks in progress (auto-generated based on @CreateTask commands)
- `tasks/completed/` - Contains completed tasks (auto-moved when tasks are completed)
- Task files follow the templates in `templates/task-templates/`

### Test Files
Test files are organized by test type in the following directories:
- `tests/unit/` - Unit tests (auto-generated for feature tasks)
- `tests/integration/` - Integration tests
- `tests/acceptance/` - Acceptance tests

### Report Files
Reports are automatically generated in the following directories:
- `reports/task-completion/` - Task completion reports
- `reports/story-completion/` - Story completion reports
- `reports/epic-completion/` - Epic completion reports

## Auto-Generated Files
The following files are automatically generated by the system:
- `codebase_snapshot.md` - Snapshot of the code directory (generated by codebase_sync.sh)
- `code_links.md` - Links to code files (generated by codebase_sync.sh)
- Memory bank files are automatically updated during development
- Task files are generated from @CreateTask commands
- Report files are generated from @GenerateReport commands
- Test files are generated alongside feature tasks

## Agent Trigger System

The Windsurf Project Template uses an advanced trigger system to activate specialized agent responses. This system works in two ways:

### 1. Explicit Agent Activation

Direct agent invocation using the `@` prefix:

| Command | Agent Type | Responsibility |
|---------|------------|----------------|
| `@BA` | Business Analyst | Requirements gathering and analysis |
| `@PM` | Project Manager | Project planning and coordination |
| `@Architect` | Solution Architect | Technical design and architecture |
| `@PO` | Product Owner | Feature prioritization and backlog management |
| `@ScrumMaster` | Scrum Master | Process facilitation and impediment removal |
| `@Developer` | Developer | Code implementation and technical tasks |
| `@Docs` | Documentation Specialist | Documentation creation and management |
| `@QA` | Quality Assurance | Test planning and quality verification |

### 2. Implicit Activation Through Keywords

Agents are automatically activated during normal conversation when these keywords appear:

| Agent | Auto-Trigger Keywords |
|-------|------------------------|
| BA | feature description, user requirements, business value, market analysis, requirement change, feature update |
| PM | timelines, dependencies, resource allocation, risk management, project impact, schedule change |
| Architect | technical feasibility, design patterns, architecture impact, technical debt, implementation change, requirement impact |
| PO | feature priority, acceptance criteria, user stories, value proposition, requirement review, story adjustment |
| ScrumMaster | sprint planning, impediment removal, team facilitation, process improvement, workflow adjustment |
| Developer | implementation approach, coding standards, technical constraints, refactoring needs, code impact assessment |
| Docs | documentation needs, api changes, user-facing content, technical documentation, documentation update |
| QA | testability, test plans, quality risks, regression impacts, test case update |

### 3. Special Command Triggers

Beyond agent activation, the system recognizes these special commands with standardized aliases:

| Command | Aliases | Description | Parameters | Example |
|---------|---------|-------------|------------|----------|
| `UMB` | `update memory`, `@UpdateMemory` | Updates memory bank files | None | `UMB` |
| `@CreateTask` | `create task`, `new task` | Creates a new task | title, type, priority, assignee | `@CreateTask title:Implement login type:feature priority:high assignee:Developer` |
| `@UpdateTask` | `update task`, `change task` | Updates task status | taskId, status, notes | `@UpdateTask taskId:TASK-123 status:in_progress` |
| `@CreateTest` | `create test`, `new test` | Creates a test task | title, type, relatedTask | `@CreateTest title:Test login validation type:unit relatedTask:TASK-123` |
| `@RunTests` | `run tests`, `execute tests` | Runs tests | taskId, type | `@RunTests taskId:TASK-123 type:unit,integration` |
| `@RequirementReview` | `review requirement`, `analyze requirement` | Triggers requirement analysis | description | `@RequirementReview Add weather API` |
| `@GenerateReport` | `create report`, `generate report` | Creates a report | type, id | `@GenerateReport type:task id:TASK-123` |

### 4. Trigger Priority and Collaboration Mechanisms

When multiple triggers are detected in conversation, the system uses these rules to determine the response:

- **Trigger Priority Scoring**:
  - Exact match: 10 points
  - Partial match: 5 points
  - Context relevance: 8 points
  - Explicit mention (without @): 15 points

- **Multi-Agent Handling**:
  - Maximum 2 agents can respond to a single message
  - Agents respond in sequential order (highest priority first)
  - Responses are labeled by agent role

- **Conversation Flow**:
  - Automatic transitions between agents based on context
  - Explicit transition markers include "Now regarding...", "Switching to..."
  - Context is maintained across agent transitions

## Agent Knowledge References
Each agent has specific knowledge files that inform their expertise:

### Business Analyst (BA)
- `templates/project-brief.md` - Project brief template
- Knowledge of user requirements and business analysis

### Project Manager (PM)
- `templates/prd.md` - Product requirements document
- `templates/epicN.md` - Epic template
- `templates/pm-checklist.md` - Project management checklist
- `templates/ui-ux-spec.md` - UI/UX specifications
- `artifacts/briefs/project-brief.md` - Project brief

### Solution Architect (Architect)
- `templates/architect-checklist.md` - Architecture checklist
- `templates/architecture-templates.md` - Architecture document templates
- `artifacts/architecture/architecture.md` - System architecture
- `artifacts/architecture/tech-stack.md` - Technology stack

### Product Owner & Scrum Master (PO/SM)
- `templates/story-template.md` - User story template
- `templates/po-checklist.md` - Product owner checklist
- `templates/story-draft-checklist.md` - Story drafting checklist
- `artifacts/requirements/prd.md` - Product requirements document
- `artifacts/requirements/epicN.md` - Epic definition
- `artifacts/architecture/architecture.md` - System architecture
- Documentation files in `docs/` directory

### Developer
- `artifacts/requirements/prd.md` - Product requirements document
- `artifacts/architecture/architecture.md` - System architecture
- `docs/api-reference.md` - API reference
- `artifacts/stories/*` - All user story files
- `docs/coding-standards.md` - Coding standards
- `docs/data-models.md` - Data models
- `docs/environment-vars.md` - Environment variables
- `docs/testing-strategy.md` - Testing strategy

### Documentation Specialist (Docs)
- `docs/api-reference.md` - API reference documentation
- `templates/story-template.md` - User story template
- `templates/story-draft-checklist.md` - Story drafting checklist
- `docs/ui-ux-spec.md` - UI/UX specifications

### Quality Assurance (QA)
- `docs/testing-strategy.md` - Testing strategy
- `artifacts/requirements/prd.md` - Product requirements document
- `artifacts/stories/*` - All user story files
- `docs/api-reference.md` - API reference
- `templates/story-template.md` - User story template for QA input
- `docs/coding-standards.md` - Coding standards for testing validation

### Security Architect
- `templates/security-templates.md` - Security documentation templates
- `templates/threat-model-template.md` - Threat modeling template
- `artifacts/security/threat-model.md` - Sample threat model
- `artifacts/architecture/architecture.md` - System architecture
- `docs/security-architecture.md` - Security architecture guidance
- `docs/security-standards.md` - Security standards and requirements

### Security Engineer
- `docs/security-standards.md` - Security standards and requirements
- `docs/security-architecture.md` - Security architecture reference
- `artifacts/security/security-controls.md` - Security controls implementation guide
- `artifacts/security/threat-model.md` - Threat model reference
- `templates/security-test-template.md` - Security testing template
