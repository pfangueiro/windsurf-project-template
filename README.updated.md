# Windsurf Project Template

A comprehensive project structure template for AI-assisted software development using the Windsurf framework.

## Overview

This repository provides a standardized project structure designed to work seamlessly with the Windsurf IDE and AI agents. It includes a memory bank system, agent definitions, templates, and directory structure that facilitate efficient collaboration between humans and AI throughout the software development lifecycle.

## Key Features

- **Memory Bank System**: Persistent context tracking across sessions
- **Agent-Based Development**: Specialized AI agents for different roles in the development process
- **Comprehensive Templates**: Standardized templates for all project artifacts
- **Organized File Structure**: Clear conventions for document organization
- **Version Control Integration**: Git-ready structure for collaborative development
- **CI/CD Configuration**: Ready-to-use CI/CD pipeline templates
- **Agent Collaboration Model**: Automatic agent engagement based on context
- **Task Management Workflow**: Structured approach to task creation and tracking
- **Cross-Functional Teams**: Pre-defined teams for different development phases

## Getting Started

1. Clone this repository when starting a new project
2. Initialize the memory bank by interacting with the Windsurf IDE
3. Begin defining your project using the templates in the `templates/` directory
4. Use the appropriate agents to assist with different aspects of development

## Directory Structure

```
/
├── memory-bank/              # Project memory and context tracking
│   ├── activeContext.md      # Current session state and goals
│   ├── productContext.md     # Project scope definition
│   ├── progress.md           # Task status and completion
│   ├── decisionLog.md        # Technical and architectural decisions
│   └── systemPatterns.md     # Design patterns and standards
│
├── templates/                # Project templates
│   ├── project-brief.md      # Project overview template
│   ├── prd.md                # Product requirements template
│   ├── architecture-templates.md # Architecture templates
│   ├── story-template.md     # User story template
│   ├── task-templates/       # Task definition templates
│   │   ├── feature-task.yaml # Feature task template
│   │   ├── bug-task.yaml     # Bug task template
│   │   ├── test-task.yaml    # Test task template
│   │   ├── story-task.yaml   # Story task template
│   │   └── epic-task.yaml    # Epic task template
│   └── report-templates/     # Report templates
│       ├── task-completion-report.md  # Task completion report
│       ├── story-completion-report.md # Story completion report
│       └── epic-completion-report.md  # Epic completion report
│
├── agents/                   # Agent definitions and instructions
│   ├── analyst.md            # Business Analyst agent
│   ├── pm-agent.md           # Project Manager agent
│   ├── architect-agent.md    # Solution Architect agent
│   ├── sm-agent.md           # Scrum Master / Product Owner agent
│   ├── dev-agent.md          # Developer agent
│   ├── docs-agent.md         # Documentation agent
│   └── qa-agent.md           # Quality Assurance agent
│
├── artifacts/                # Instantiated documents
│   ├── briefs/               # Project briefs
│   │   └── project-brief.md  # Project brief document
│   ├── requirements/         # Product requirements
│   │   ├── prd.md            # Product requirements document
│   │   └── epicN.md          # Epic template
│   ├── architecture/         # Architecture documents
│   │   ├── architecture.md   # System architecture
│   │   └── tech-stack.md     # Technology stack
│   └── stories/              # User stories
│
├── docs/                     # Documentation
│   ├── api-reference.md      # API reference
│   ├── coding-standards.md   # Coding standards
│   ├── data-models.md        # Data models
│   ├── environment-vars.md   # Environment variables
│   ├── testing-strategy.md   # Testing strategy
│   ├── project-structure.md  # Project structure
│   └── ui-ux-spec.md         # UI/UX specifications
│
├── ai/                       # AI-related files
│   ├── stories/              # AI-generated stories
│   └── epics/                # AI-generated epics
│
├── code/                     # Source code
│   └── ci-cd-config.yml      # CI/CD configuration template
│
├── tasks/                    # Task management
│   ├── active/               # Active tasks
│   ├── completed/            # Completed tasks
│   └── templates/            # Task templates
│
├── tests/                    # Tests
│   ├── unit/                 # Unit tests
│   ├── integration/          # Integration tests
│   └── acceptance/           # Acceptance tests
│
├── reports/                  # Reports
│   ├── task-completion/      # Task completion reports
│   ├── story-completion/     # Story completion reports
│   └── epic-completion/      # Epic completion reports
│
├── logs/                     # Log files
├── global-rules.md           # Global system rules
├── local-rules.md            # Project-specific rules
├── .windsurfrules            # Windsurf configuration
├── codebase_sync.sh          # Script to synchronize codebase
├── codebase_snapshot.md      # Snapshot of codebase (auto-generated)
├── code_links.md             # Links to code files (auto-generated)
└── document-manifest.md      # Document location manifest
```

## Agent Roles

- **BA**: Business Analyst who gathers and analyzes business requirements
- **PM**: Project Manager who plans, executes, and monitors project activities
- **Architect**: Solution Architect who designs the technical architecture
- **PO**: Product Owner who manages product backlog and prioritizes features
- **ScrumMaster**: Facilitates Agile processes and removes impediments
- **Developer**: Implements features and writes code
- **Docs**: Creates and maintains documentation
- **QA**: Develops and executes test plans

## Agent Activation

To activate a specific agent, use the `@[agent]` syntax in your conversation with Windsurf IDE:

- `@BA` - Activate Business Analyst agent
- `@PM` - Activate Project Manager agent
- `@Architect` - Activate Solution Architect agent
- `@PO` - Activate Product Owner agent
- `@ScrumMaster` - Activate Scrum Master agent
- `@Developer` - Activate Developer agent
- `@Docs` - Activate Documentation agent
- `@QA` - Activate Quality Assurance agent

Additionally, agents can be automatically triggered by certain keywords:

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

## Special Commands

The system supports several special commands for different workflows:

### Memory Bank Commands
- `UMB` or `update memory` or `@UpdateMemory` - Update Memory Bank with latest project context

### Task Management Commands
- `@CreateTask` - Create a new task with parameters
  - Example: `@CreateTask title:Implement login feature type:feature priority:high assignee:Developer`
- `@UpdateTask` - Update an existing task's status or details
- `@RunTests` - Run tests for a specific task or component
  - Example: `@RunTests taskId:TASK-123 type:unit,integration`

### Requirement Review Commands
- `@RequirementReview` - Trigger requirement impact analysis workflow
  - Example: `@RequirementReview Add weather API integration to improve forecasting`

### Report Generation Commands
- `@GenerateReport` - Create a report for a task, story, or epic

## Cross-Functional Teams

Pre-defined teams for different development activities:

| Team | Members | Activities |
|------|---------|------------|
| Requirement Analysis | BA, PO, Architect | Feature analysis, requirements gathering, feasibility assessment |
| Technical Planning | Architect, Developer, QA | Technical design, implementation planning, test strategy |
| Implementation | Developer, Architect, QA | Code development, code review, unit testing |
| Quality Assurance | QA, Developer, BA | Test execution, bug verification, acceptance testing |
| Documentation | Docs, Developer, PO | API documentation, user guides, technical documentation |
| Requirement Impact Analysis | BA, PO, Architect, QA | Impact assessment, plan adjustment, story refinement, documentation update |
| Test-Driven Development | Developer, QA, Architect | Test definition, test implementation, test execution, code implementation |

## Task Management Workflow

Structured approach to task management:

1. **Creation**: Define scope, goals, acceptance criteria, dependencies
   - Use `@CreateTask` to create new tasks
   - Tasks are automatically assigned IDs in the format `TASK-[number]`
   - Feature tasks automatically generate related test tasks

2. **Execution**: Update context, document progress, report blockers
   - Current task focus is tracked in `activeContext.md`
   - Progress is documented in real-time

3. **Review**: Self-review, cross-review, verification against criteria
   - All tasks undergo review by the implementing agent
   - Cross-review by another relevant agent
   - Verification against acceptance criteria
   - All related tests must pass

4. **Completion**: Document completion, update documentation, capture decisions
   - Completion is documented in `progress.md`
   - Decisions are captured in `decisionLog.md`
   - A completion report is generated

## Test-Driven Development

The system enforces a test-driven development approach:

- Test tasks are created alongside feature tasks
- Tests must pass before tasks can be marked as complete
- Test coverage targets are defined and tracked
- Test results are documented in progress reports

## Memory Bank System

The memory bank system maintains context across sessions through five core files:

- **activeContext.md**: Tracks session state and goals
- **productContext.md**: Defines project scope
- **progress.md**: Tracks work status
- **decisionLog.md**: Records decisions
- **systemPatterns.md**: Documents recurring patterns

These files are automatically updated during the session and can be explicitly updated using the `UMB` command.

## Automatically Generated Files

The following files are automatically generated by the system:

- `codebase_snapshot.md`: Created by running `codebase_sync.sh`
- `code_links.md`: Created by running `codebase_sync.sh`
- Task files in `tasks/active/` and `tasks/completed/`
- Report files in `reports/` subdirectories
- Updates to memory bank files

## How to Use with Windsurf IDE

1. Open the project in Windsurf IDE
2. The IDE will automatically detect the `.windsurfrules` file
3. The memory bank will be initialized on first interaction, displaying `[MEMORY BANK: ACTIVE]` in responses
4. Use agent triggers or direct `@[agent]` mentions to engage specific agents
5. Use special commands to create tasks, run tests, or update the memory bank
6. The system will maintain context across sessions through the memory bank

## File Creation Guidelines

- Template files (`.md` and `.yaml`) are provided and should be copied and customized
- New tasks are created using the `@CreateTask` command
- Memory bank files are automatically created and updated
- Code files should be created in the `code/` directory
- Test files should be created in the appropriate test directory

## License

[MIT License](LICENSE)

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.
