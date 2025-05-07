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
│   ├── progress.md           # Work status tracking
│   ├── decisionLog.md        # Record of decisions
│   └── systemPatterns.md     # Recurring patterns and standards
│
├── templates/                # Templates for project artifacts
│   ├── project-brief.md      # Project brief template
│   ├── prd.md                # Product requirements document template
│   ├── epicN.md              # Epic template
│   ├── pm-checklist.md       # Project manager checklist
│   ├── ui-ux-spec.md         # UI/UX specification template
│   ├── story-template.md     # User story template
│   ├── po-checklist.md       # Product owner checklist
│   ├── story-draft-checklist.md # Story draft checklist
│   ├── architect-checklist.md   # Architecture validation checklist
│   └── architecture-templates.md # Architecture document template
│
├── agents/                   # Agent role definitions
│   ├── analyst.md            # Business analyst agent
│   ├── pm-agent.md           # Project manager agent
│   ├── architect-agent.md    # Solution architect agent
│   ├── sm-agent.md           # Scrum master/product owner agent
│   ├── dev-agent.md          # Developer agent
│   ├── docs-agent.md         # Documentation specialist agent
│   ├── qa-agent.md           # Quality assurance agent
│   └── instructions.md       # Agent instructions
│
├── docs/                     # Project documentation
│   ├── architecture.md       # Architecture documentation
│   ├── api-reference.md      # API reference
│   ├── data-models.md        # Data models documentation
│   ├── coding-standards.md   # Coding standards
│   ├── environment-vars.md   # Environment variables documentation
│   ├── testing-strategy.md   # Testing strategy
│   ├── project-structure.md  # Project structure documentation
│   └── ui-ux-spec.md         # UI/UX specifications
│
├── artifacts/                # Instantiated documents from templates
│   ├── briefs/               # Project briefs
│   ├── requirements/         # PRD and epics
│   ├── architecture/         # Architecture documents
│   └── stories/              # User stories
│
├── ai/                       # AI-generated artifacts
│   ├── stories/              # Generated user stories
│   └── epics/                # Generated epics
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

- **1-Analyst**: Gathers and analyzes business requirements
- **2-PM**: Plans, executes, and monitors project activities
- **3-Architect**: Designs the technical architecture
- **4-PO/SM**: Manages product backlog and facilitates Agile processes
- **5-Dev**: Implements features and writes code
- **6-Docs**: Creates and maintains documentation
- **7-QA**: Develops and executes test plans

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

## License

[MIT License](LICENSE)

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.
