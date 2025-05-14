# Document Manifest

## Key Documentation for Natural Language Trigger System

These documents provide comprehensive information about the advanced trigger system:

- **README.improved.md** - Main documentation with quick start guide and complete feature overview
- **docs/trigger-examples.md** - Extensive examples of using triggers in natural conversation
- **windsurfrules.updated** - Configuration file with trigger definitions and scoring mechanisms
- **global-rules.md** - System-wide rules for agent activation and memory maintenance

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
- `templates/security-checklist.md` - Security checklist for waterfall phase gates

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

## Memory Bank

The memory bank stores context across sessions in the `memory-bank/` directory with `.md` extension:
- `memory-bank/activeContext.md` - Current session state and goals
- `memory-bank/productContext.md` - Project scope definition
- `memory-bank/progress.md` - Task status and completion
- `memory-bank/decisionLog.md` - Technical and architectural decisions
- `memory-bank/systemPatterns.md` - Design patterns and standards

## Agents

Agent instructions are stored in the `agents/` directory with `.md` extension:
- `agents/analyst.md` - Business Analyst agent
- `agents/pm-agent.md` - Project Manager agent
- `agents/architect-agent.md` - Solution Architect agent
- `agents/sm-agent.md` - Scrum Master / Product Owner agent
- `agents/dev-agent.md` - Developer agent
- `agents/docs-agent.md` - Documentation agent
- `agents/qa-agent.md` - Quality Assurance agent
- `agents/security-architect-agent.md` - Security Architect agent
- `agents/security-engineer-agent.md` - Security Engineer agent

## System Configuration

System configuration files are stored in the project root:
- `.windsurfrules` - The main configuration file defining all rules, agents, and commands
- `global-rules.md` - Global system rules
- `local-rules.md` - Local rules for the current project

## Directories and Special Files

### Artifacts
Generated artifacts are stored in the `artifacts/` directory:
- `artifacts/briefs/` - Project briefs
- `artifacts/requirements/` - Product requirements
- `artifacts/architecture/` - Architecture documents
- `artifacts/stories/` - User stories
- `artifacts/security/` - Security artifacts (threat models, security controls)

### Documentation
Project documentation is stored in the `docs/` directory:
- `docs/api-reference.md` - API reference
- `docs/coding-standards.md` - Coding standards
- `docs/data-models.md` - Data models
- `docs/environment-vars.md` - Environment variables
- `docs/testing-strategy.md` - Testing strategy
- `docs/project-structure.md` - Project structure
- `docs/ui-ux-spec.md` - UI/UX specifications
- `docs/security-architecture.md` - Security architecture
- `docs/security-standards.md` - Security standards
- `docs/trigger-examples.md` - Trigger system examples

### AI
AI-generated content is stored in the `ai/` directory:
- `ai/stories/` - AI-generated stories
- `ai/epics/` - AI-generated epics

### Code
Source code is stored in the `code/` directory:
- `code/ci-cd-config.yml` - CI/CD configuration template

### Tasks
Task management is stored in the `tasks/` directory:
- `tasks/active/` - Active tasks
- `tasks/completed/` - Completed tasks
- `tasks/templates/` - Task templates

### Tests
Tests are stored in the `tests/` directory:
- `tests/unit/` - Unit tests
- `tests/integration/` - Integration tests
- `tests/acceptance/` - Acceptance tests

### Reports
Generated reports are stored in the `reports/` directory:
- `reports/task-completion/` - Task completion reports
- `reports/story-completion/` - Story completion reports
- `reports/epic-completion/` - Epic completion reports

## Agent Knowledge References
Each agent has specific knowledge files that inform their expertise:

### Business Analyst (BA)
- `templates/project-brief.md` - Project brief template
- Knowledge of user requirements and business analysis

### Project Manager (PM)
- `templates/prd.md` - Product requirements document template
- `templates/epicN.md` - Epic template
- `templates/pm-checklist.md` - Project management checklist
- `templates/ui-ux-spec.md` - UI/UX specification template
- `artifacts/briefs/project-brief.md` - Project brief document

### Solution Architect (Architect)
- `templates/architect-checklist.md` - Architecture checklist
- `templates/architecture-templates.md` - Architecture document templates
- `artifacts/architecture/architecture.md` - System architecture
- `artifacts/architecture/tech-stack.md` - Technology stack

### Product Owner (PO) / Scrum Master
- `templates/story-template.md` - User story template
- `templates/po-checklist.md` - Product owner checklist
- `templates/story-draft-checklist.md` - Story drafting checklist
- `artifacts/requirements/prd.md` - Product requirements document
- `artifacts/requirements/epicN.md` - Epic document
- `artifacts/architecture/architecture.md` - System architecture
- `docs/api-reference.md` - API reference
- `docs/data-models.md` - Data models
- `docs/coding-standards.md` - Coding standards
- `docs/environment-vars.md` - Environment variables
- `docs/testing-strategy.md` - Testing strategy
- `docs/project-structure.md` - Project structure
- `docs/ui-ux-spec.md` - UI/UX specifications

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
- `docs/api-reference.md` - API reference
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
- `templates/security-checklist.md` - Security checklist for waterfall methodology

### Security Engineer
- `docs/security-standards.md` - Security standards and requirements
- `docs/security-architecture.md` - Security architecture reference
- `artifacts/security/security-controls.md` - Security controls implementation guide
- `artifacts/security/threat-model.md` - Threat model reference
- `templates/security-test-template.md` - Security testing template
- `templates/security-checklist.md` - Security checklist for implementation