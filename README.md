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
│   └── ... (other templates)
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
│   ├── requirements/         # Product requirements
│   ├── architecture/         # Architecture documents
│   └── stories/              # User stories
│
├── docs/                     # Documentation
│   ├── api-reference.md      # API reference
│   ├── coding-standards.md   # Coding standards
│   ├── testing-strategy.md   # Testing strategy
│   └── ... (other docs)
│
├── ai/                       # AI-related files
│   ├── stories/              # AI-generated stories
│   └── epics/                # AI-generated epics
│
├── code/                     # Source code
│   └── ci-cd-config.yml      # CI/CD configuration template
│
├── logs/                     # Log files
├── .windsurfrules            # Windsurf configuration
├── codebase_sync.sh          # Script to synchronize codebase
├── codebase_snapshot.md      # Snapshot of codebase
├── code_links.md             # Links to code files
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

## Agent Collaboration Model

Agents automatically engage based on contextual triggers:

```yaml
auto_engagement:
  - BA: ["feature description", "user requirements", "business value"]
  - Architect: ["technical feasibility", "design patterns", "architecture impact"]
  - PM: ["timelines", "dependencies", "resource allocation"]
  # ... other agents and triggers
```

## Cross-Functional Teams

Pre-defined teams for different development activities:

```yaml
teams:
  requirement_analysis: ["BA", "PO", "Architect"]
  technical_planning: ["Architect", "Developer", "QA"]
  implementation: ["Developer", "Architect", "QA"]
  quality_assurance: ["QA", "Developer", "BA"]
  documentation: ["Docs", "Developer", "PO"]
```

## Task Management Workflow

Structured approach to task management:

1. **Creation**: Define scope, goals, acceptance criteria, dependencies
2. **Execution**: Update context, document progress, report blockers
3. **Review**: Self-review, cross-review, verification against criteria
4. **Completion**: Document completion, update documentation, capture decisions

## Memory Bank System

The memory bank system maintains context across sessions through five core files:

- **activeContext.md**: Tracks session state and goals
- **productContext.md**: Defines project scope
- **progress.md**: Tracks work status
- **decisionLog.md**: Records decisions
- **systemPatterns.md**: Documents recurring patterns

## How to Use with Windsurf IDE

1. Open the project in Windsurf IDE
2. The IDE will automatically detect the `.windsurfrules` file
3. The memory bank will be initialized on first interaction
4. Use the command "Update Memory Bank" or "UMB" to synchronize the memory bank with the current session
5. Request agent assistance using `@[agent_name]` syntax (e.g., `@Architect explain the system design`)

## License

[MIT License](LICENSE)

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.
