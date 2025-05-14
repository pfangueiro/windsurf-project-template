# Windsurf Project Template

A comprehensive project structure template for AI-assisted software development using the Windsurf framework. Featuring an advanced trigger system for natural language agent activation and intelligent context management.

## Overview

This repository provides a standardized project structure designed to work seamlessly with the Windsurf IDE and AI agents. It establishes a robust memory bank system, specialized agent roles, and structured workflows that enable efficient collaboration between humans and AI throughout the software development lifecycle.

## Key Features

- **Smart Trigger System**: Natural language activation of specialized agents without explicit commands
- **Priority-Based Response**: Intelligent handling of multiple agent triggers in conversation
- **Memory Bank System**: Persistent context tracking across sessions
- **Agent-Based Development**: Specialized AI agents for different roles
- **Secure SDLC Integration**: Security-focused development with specialized security agents
- **Dual Methodology Support**: Support for both Agile and Waterfall development methodologies
- **Comprehensive Templates**: Standardized templates for all project artifacts
- **Organized File Structure**: Clear conventions for document organization
- **Version Control Integration**: Git-ready structure for collaborative development
- **CI/CD Configuration**: Ready-to-use CI/CD pipeline templates
- **Task Management Workflow**: Structured approach to task creation and tracking
- **Test-Driven Development**: Integrated testing processes and enforcement

## Getting Started

1. Clone this repository when starting a new project
2. Open the project in Windsurf IDE
3. The memory bank will initialize automatically on first interaction
4. Begin using agent triggers and commands to develop your project

## Quick Start: Using the Trigger System

Here's how to start leveraging the system's powerful trigger capabilities immediately:

### 1. Ask Domain-Specific Questions

Simply ask questions using natural language - the right agent will automatically respond:

```
"What's the best way to structure our database schema for this project?"
(Triggers Architect agent)

"How should we prioritize the upcoming features?"
(Triggers Product Owner agent)

"What testing approach should we use for the payment system?"
(Triggers QA agent)
```

### 2. Use Direct Commands for Specific Tasks

When you need a specific agent, use the `@` prefix:

```
@Developer How should we implement the authentication flow?
@BA What user requirements should we gather for the profile feature?
```

### 3. Initiate Task Management

Start creating and tracking tasks with simple phrases:

```
"We need to create a task for implementing user authentication"
"Update the status of the payment gateway task to in progress"
"Let's generate a report for the completed login feature"
```

### 4. Try Team-Based Collaboration

Activate cross-functional teams for complex activities:

```
"We need to analyze the requirements for the new reporting feature"
(Activates Requirement Analysis Team with BA, PO, and Architect)

"Let's plan the technical implementation of the file upload system"
(Activates Technical Planning Team with Architect, Developer, and QA)
```

> **Pro Tip**: For a comprehensive guide with examples of natural language triggers, see `docs/trigger-examples.md`

## Directory Structure

```
/
├── memory-bank/              # Project memory and context tracking (auto-created)
│   ├── activeContext.md      # Current session state and goals
│   ├── productContext.md     # Project scope definition
│   ├── progress.md           # Task status and completion
│   ├── decisionLog.md        # Technical and architectural decisions
│   └── systemPatterns.md     # Design patterns and standards
│
├── templates/                # Project templates (pre-existing)
│   ├── project-brief.md      # Project overview template
│   ├── prd.md                # Product requirements template
│   ├── architecture-templates.md # Architecture templates
│   ├── story-template.md     # User story template
│   ├── security-templates.md # Security documentation templates
│   ├── threat-model-template.md # Threat modeling template
│   ├── security-checklist.md # Security checklist for waterfall phases
│   ├── formal-requirements-template.md # Formal requirements template
│   ├── system-design-template.md # System design template
│   ├── phase-gate-template.md # Phase gate review template
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
├── agents/                   # Agent definitions and instructions (pre-existing)
│   ├── analyst.md            # Business Analyst agent
│   ├── pm-agent.md           # Project Manager agent
│   ├── architect-agent.md    # Solution Architect agent
│   ├── sm-agent.md           # Scrum Master / Product Owner agent
│   ├── dev-agent.md          # Developer agent
│   ├── docs-agent.md         # Documentation agent
│   ├── qa-agent.md           # Quality Assurance agent
│   ├── security-architect-agent.md # Security Architect agent
│   └── security-engineer-agent.md # Security Engineer agent
│
├── artifacts/                # Instantiated documents (auto-created as needed)
│   ├── briefs/               # Project briefs
│   │   └── project-brief.md  # Project brief document
│   ├── requirements/         # Product requirements
│   │   ├── prd.md            # Product requirements document
│   │   ├── epicN.md          # Epic template
│   │   └── phase-gate-review.md # Phase gate review document
│   ├── architecture/         # Architecture documents
│   │   ├── architecture.md   # System architecture
│   │   └── tech-stack.md     # Technology stack
│   ├── security/             # Security artifacts
│   │   ├── threat-model.md   # Threat model
│   │   └── security-controls.md # Security controls implementation
│   └── stories/              # User stories
│
├── docs/                     # Documentation (pre-existing)
│   ├── api-reference.md      # API reference
│   ├── coding-standards.md   # Coding standards
│   ├── data-models.md        # Data models
│   ├── environment-vars.md   # Environment variables
│   ├── testing-strategy.md   # Testing strategy
│   ├── project-structure.md  # Project structure
│   ├── ui-ux-spec.md         # UI/UX specifications
│   ├── security-architecture.md # Security architecture
│   ├── security-standards.md # Security standards
│   └── trigger-examples.md   # Trigger system examples
│
├── ai/                       # AI-related files (auto-created as needed)
│   ├── stories/              # AI-generated stories
│   └── epics/                # AI-generated epics
│
├── code/                     # Source code (add your code here)
│   └── ci-cd-config.yml      # CI/CD configuration template
│
├── tasks/                    # Task management (auto-created as needed)
│   ├── active/               # Active tasks
│   ├── completed/            # Completed tasks
│   └── templates/            # Task templates
│
├── tests/                    # Tests (auto-created as needed)
│   ├── unit/                 # Unit tests
│   ├── integration/          # Integration tests
│   └── acceptance/           # Acceptance tests
│
├── reports/                  # Reports (auto-created as needed)
│   ├── task-completion/      # Task completion reports
│   ├── story-completion/     # Story completion reports
│   └── epic-completion/      # Epic completion reports
│
├── logs/                     # Log files (auto-created as needed)
├── global-rules.md           # Global system rules (pre-existing)
├── .windsurfrules            # Windsurf configuration (pre-existing)
├── codebase_sync.sh          # Script to synchronize codebase (pre-existing)
├── codebase_snapshot.md      # Snapshot of codebase (auto-generated)
└── code_links.md             # Links to code files (auto-generated)
```

## Smart Trigger System & Agent Collaboration

The template features an advanced natural language trigger system for activating specialized AI agents without explicit commands. This system uses a priority-based approach to ensure the most relevant agent responds to your queries.

### 1. Activation Methods

Agents can be activated in three ways:

#### A. Explicit Activation (Direct)

Use the `@` prefix followed by the agent name:

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
| `@SecurityArchitect` | Security Architect | Security design and threat modeling |
| `@SecurityEngineer` | Security Engineer | Security implementation and testing |

**Example**: `@Architect How should we structure the authentication system?`

#### B. Implicit Activation (Role Mention)

Mention the agent role in conversation without the `@` symbol:

**Example**: `As an Architect, what would be the best approach here?`

#### C. Keyword Activation (Auto-Trigger)

Use domain-specific keywords that automatically trigger the relevant agent:

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
| SecurityArchitect | security architecture, threat model, security design, security requirements, security controls, attack vectors |
| SecurityEngineer | security implementation, security controls, secure coding, security testing, vulnerability assessment, code security |

**Example**: "We need to assess the technical feasibility of implementing WebSockets." (triggers Architect agent)

### 2. Priority Scoring System

When multiple trigger keywords appear in the same message, the system uses a sophisticated scoring algorithm to determine which agent(s) should respond:

| Trigger Type | Score | Description |
|--------------|-------|--------------|
| Exact Match | 10 | Direct match with a trigger keyword |
| Partial Match | 5 | Partial or synonym match |
| Context Relevance | 8 | Match within conversation context |
| Explicit Mention | 15 | When agent role is mentioned without @ symbol |

**Example**: "We need to assess the technical feasibility of this implementation approach."
- Triggers: "technical feasibility" (Architect, 10 points) and "implementation approach" (Developer, 10 points)
- Response: Both agents may respond, with Architect first (if context favors architecture)

### 3. Multi-Agent Collaboration

The system supports collaborative responses from multiple agents when appropriate:

#### A. Sequential Collaboration

Agents respond in order of relevance, with clear transition markers:

```
Architect: From an architecture perspective, I recommend using WebSockets for this real-time feature because...

Developer: Now regarding the implementation approach, you'll want to consider using the Socket.IO library because...
```

#### B. Team-Based Collaboration

Predefined cross-functional teams can be activated for complex activities:

| Team | Members | Activities |
|------|---------|------------|
| Requirement Analysis | BA, PO, Architect | Feature analysis, requirements gathering, feasibility assessment |
| Technical Planning | Architect, Developer, QA | Technical design, implementation planning, test strategy |
| Implementation | Developer, Architect, QA | Code development, architecture refinement, testing |
| Security Architecture | SecurityArchitect, Architect, BA | Security requirements, threat modeling, security design |
| Security Implementation | SecurityEngineer, Developer, QA | Security controls implementation, secure coding, security testing |

**Example**: "We need to define the security architecture for our payment system."
(Activates Security Architecture Team with SecurityArchitect, Architect, and BA)

## Waterfall Methodology Support

The Windsurf Project Template provides comprehensive support for waterfall development methodologies with the following features:

### Phase Gate Reviews
Formal phase gate review templates and processes to ensure each development phase meets quality criteria before proceeding to the next phase:

- Requirements Phase Gate
- Design Phase Gate
- Implementation Phase Gate
- Testing Phase Gate
- Deployment Phase Gate

### Formal Documentation
Structured templates for formal documentation required in waterfall methodologies:

- Formal Requirements Specification
- System Design Documents
- Change Request Management
- Test Plans and Reports

### Security Integration
SecurityArchitect and SecurityEngineer agents provide specialized knowledge for incorporating security throughout the waterfall development lifecycle:

- Security requirements gathering
- Threat modeling
- Security architecture design
- Security control implementation
- Security testing and verification

## Memory Bank System

The memory bank system provides persistent context across development sessions through five core files:

1. **activeContext.md**: Tracks the current session state and goals
   - Current objectives
   - In-progress tasks
   - Open questions
   - Current blockers

2. **productContext.md**: Defines the project scope
   - Project overview
   - Component descriptions
   - Organization and structure
   - Standards and conventions

3. **progress.md**: Tracks work status
   - Completed tasks
   - Current work
   - Next steps
   - Known issues

4. **decisionLog.md**: Records project decisions
   - Technical decisions
   - Architectural decisions
   - Implementation approaches
   - Considered alternatives

5. **systemPatterns.md**: Documents recurring patterns
   - Coding patterns
   - Architecture patterns
   - Testing patterns
   - Documentation patterns

## Initialization

The system initializes automatically upon first interaction:

1. The system detects the `.windsurfrules` file
2. It checks for memory-bank/ directory
3. If not found, it creates the directory and initializes core files
4. All responses begin with `[MEMORY BANK: ACTIVE]` or `[MEMORY BANK: INACTIVE]`
5. The system is ready to accept agent triggers and commands

## Task Management

The template includes a comprehensive task management system:

### Task Types
- **Feature**: New functionality or enhancement
- **Bug**: Issue or problem to be fixed
- **Refactor**: Code improvement without changing behavior
- **Documentation**: Documentation task
- **Test**: Testing-related task

### Task Status
- **Backlog**: Not yet scheduled
- **Todo**: Scheduled but not started
- **In Progress**: Currently being worked on
- **Review**: Ready for review
- **Done**: Completed

### Task Commands

| Command | Aliases | Parameters | Example |
|---------|---------|------------|----------|
| `@CreateTask` | `create task`, `new task` | title, type, priority, assignee | `@CreateTask title:Implement login feature type:feature priority:high assignee:Developer` or "We need to create a new task for implementing the login feature" |
| `@UpdateTask` | `update task`, `change task` | taskId, status, notes | `@UpdateTask taskId:TASK-123 status:in_progress notes:Starting implementation` or "I'm changing the status of TASK-123 to in progress" |
| `@CreateTest` | `create test`, `new test` | title, type, relatedTask | `@CreateTest title:Test login validation type:unit relatedTask:TASK-123` or "Let's create a unit test for login validation" |
| `@RunTests` | `run tests`, `execute tests` | taskId, type | `@RunTests taskId:TASK-123 type:unit,integration` or "Run the unit tests for TASK-123" |

### Requirement Analysis Commands

| Command | Aliases | Parameters | Example |
|---------|---------|------------|----------|
| `@RequirementReview` | `review requirement`, `analyze requirement` | description | `@RequirementReview Add weather API integration to improve forecasting` or "We need to analyze how adding weather API would impact our system" |

### Report Generation Commands

| Command | Aliases | Parameters | Example |
|---------|---------|------------|----------|
| `@GenerateReport` | `create report`, `generate report` | type, id | `@GenerateReport type:task id:TASK-123` or "Generate a report for task 123" |

### Command Detection in Natural Language

The system can detect commands even when embedded in natural conversation:

```
"Let's update our memory bank with the latest changes and then create a new task for implementing the login feature. Also, we should run the unit tests for the authentication module."
```

> **Note**: When commands are detected in natural language, the system will prompt for any missing required parameters.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Contributing

Contributions to the Windsurf Project Template are welcome. Please see the contributing guidelines for more information.