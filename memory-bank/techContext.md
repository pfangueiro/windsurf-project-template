# Technical Context

## Technologies Used

### Core Technologies
- **Windsurf IDE** - Primary development environment
- **Markdown** - Documentation format for memory bank
- **YAML** - Configuration format for rules files
- **Mermaid** - Diagram generation within documentation

### Support Technologies
- **Git** - Version control
- **GitHub Actions** (optional) - CI/CD integration
- **Test Frameworks** - Supporting TDD workflow

## Development Setup

### Required Tools
- Windsurf IDE with latest updates
- Git client
- Terminal access

### Directory Structure
```
project-root/
├── .windsurfrules           # Local rules configuration
├── global-rules.md          # Global rules definition
├── memory-bank/             # Project memory system
│   ├── projectbrief.md      # Foundation document
│   ├── productContext.md    # Product/problem context
│   ├── systemPatterns.md    # Architecture & patterns
│   ├── techContext.md       # Technical constraints & setup
│   ├── activeContext.md     # Current work state
│   └── progress.md          # Work tracking
├── agents/                  # Agent instruction files
│   ├── analyst.md           # BA agent instructions
│   ├── pm-agent.md          # PM agent instructions
│   └── ...                  # Other agent instruction files
├── templates/               # Templates for various documents
│   ├── project-brief.md     # Project brief template
│   └── ...                  # Other templates
├── artifacts/               # Project artifacts
│   ├── architecture/        # Architecture documents
│   ├── requirements/        # Requirement documents
│   └── stories/             # User story documents
└── docs/                    # Documentation
    ├── api-reference.md     # API documentation
    ├── coding-standards.md  # Coding standards
    └── ...                  # Other documentation files
```

## Technical Constraints

### Memory Bank Constraints
- All files must be in Markdown format
- Files must maintain hierarchical dependencies
- Core files are required and cannot be removed
- File size should be kept reasonable (< 100KB)

### Agent Constraints
- Agents must respect their defined roles
- Agent permissions determine allowed actions
- Cross-functional teams define collaboration patterns
- Agents must update the memory bank when appropriate

### Workflow Constraints
- Tasks should be scoped to 2 hours maximum
- TDD workflow must be followed for development
- Documentation must be updated with code changes
- Workflow rules must be consistent between global and local rules

## Dependencies

### Internal Dependencies
- `.windsurfrules` depends on `global-rules.md`
- Memory bank files depend on their hierarchical parents
- Agent instructions depend on templates and rules

### External Dependencies
- No required external dependencies beyond Windsurf IDE
- Optional integration with version control systems
- Optional integration with CI/CD systems

## Technical Debt Management

- Regular reviews of memory bank for consistency
- Updates to agent instructions as patterns evolve
- Refactoring of rules when complexity increases
- Documentation of known issues in progress.md

---
*Note: This document builds on projectbrief.md and should be referenced by activeContext.md*
