# Windsurf Project Template

A comprehensive and robust template for AI-assisted software development using the Windsurf framework. This template leverages a hierarchical memory bank system and advanced rules to streamline human+AI collaboration, ensure traceable and auditable decision-making, and enforce best practices throughout the project lifecycle.

## Project Intention & Purpose

- **Persist project context** across sessions and contributors
- **Enable traceable, explainable decision-making** via memory bank updates
- **Support agent-based workflows** with clear boundaries and triggers
- **Ensure security, best practices, and auditability** in all project operations
## Core Functionalities

### Hierarchical Memory Bank System
- Three-layer memory structure:
  - **Foundation layer**: projectbrief.md (source of truth)
  - **Context layer**: productContext.md, systemPatterns.md, techContext.md
  - **Current state layer**: activeContext.md, progress.md, decisionLog.md
- Enables audit trails and reverse traceability from code to requirements
- Project intelligence captured in `.windsurfrules`

### Smart Workflows System
- **Memory Structure**: Three-layer hierarchical approach (foundation → context → current state)
- **Memory Update**: Comprehensive process ensuring ALL files are reviewed when triggered by "update memory bank"

- **Task Lifecycle**: Structured events for workflow tracking and automation
- **Error Handling**: Framework for detection, logging, and recovery
- **Memory Consistency**: Verification system for memory bank reliability
- **Session Intelligence**: Advanced session management with context awareness
- **Smart MCP Integration**: Unified framework connecting all workflows

### Rules & Commands
- Initialization, session handling, and periodic validation
- Memory bank commands: UMB (Update), SMB (Summarize), CMB (Check)
- Natural language triggers for all major workflows

### MCP Server Integration
- All operations (git, testing, DB, docs) use mapped MCP servers
- Only explicitly allowed commands for each server

### Agent & Trigger System
- Specialized agents (BA, PM, Architect, PO, SM, Dev, QA, Docs)
- Natural language and direct command triggers
- Priority-based response and structured task lifecycle

### Security & Best Practices
- Session tagging, compact summaries, traceability
- Coding standards, references, and audit trails

## Workflow Triggers & Example Usage

### Natural Language Triggers
- "update memory bank" → Triggers comprehensive review of ALL memory files
- "update memory with [topic]" → Updates memory bank with specified topic
- "what's our current focus" → Retrieves context from activeContext.md
- "how does [component] work" → Retrieves information from systemPatterns.md
- "summarize current project" → Generates memory bank summary
- "check memory bank health" → Verifies memory integrity

### Task Lifecycle Commands
- "start task implementing authentication" → Initializes task tracking
- "update progress on authentication" → Records task progress
- "complete task authentication" → Finalizes task and updates memory

### Traditional Commands
- `UMB` to update the memory bank
- `SMB` to summarize memory bank state
- `CMB` to check memory bank integrity

### Workflow Slash Commands
- `/memory-structure` → Access the three-layer memory structure workflow
- `/task-lifecycle` → Access the task lifecycle events workflow
- `/error-handling` → Access the error handling framework workflow
- `/memory-consistency` → Access the memory consistency verification workflow
- `/session-intelligence` → Access the session intelligence workflow
- `/smart-mcp-integration` → Access the integration framework workflow

## How the System Works

1. **Project Initialization**
   - Checks for `.windsurf/` and memory-bank directory structures
   - Creates core files in hierarchical layers if they don't exist:
     - Foundation: projectbrief.md
     - Context: productContext.md, systemPatterns.md, techContext.md
     - Current State: activeContext.md, progress.md, decisionLog.md
   - Creates `.windsurfrules` to capture project intelligence

2. **Session Start**
   - Progressive context loading based on relevance
   - Verifies memory consistency and integrity
   - Identifies active tasks and continuation points
   - Prepares appropriate MCP tools based on context

3. **Task Execution**
   - Smart MCP capability selection based on task context
   - Structured error handling with automatic recovery
   - Real-time progress tracking and focus monitoring
   - Adaptive tool selection as task context evolves

4. **Session End**
   - Automatically generates session summary
   - Updates all memory layers based on accomplishments
   - Identifies logical next steps for future sessions
   - Verifies and maintains memory bank consistency

## Summary Table

| Feature                  | Description                                                                 |
|--------------------------|-----------------------------------------------------------------------------|
| Hierarchical Memory Bank | Persistent, traceable project context and decision log                      |
| MCP Server Integration   | Secure, auditable operations via mapped MCP servers                         |
| Agent/Trigger System     | Natural language and direct command triggers for specialized agents          |
| Task Management          | Structured, traceable task and test lifecycle                               |
| Session Handling         | Context tagging, summaries, and periodic validation                         |
| Security/Best Practices  | Command boundaries, coding standards, and audit trails                      |

## How to Use

1. **Clone the repository** and open in Windsurf IDE.
2. **Follow README and GITHUB_SETUP.md** for initialization.
3. **Use natural language or direct commands** to interact with agents and memory bank.
4. **Let the system guide you**—it will prompt for missing context, validate structure, and enforce best practices.

## Why This Template?

- **Minimal and extensible:** Start with just the memory bank, add features as needed.
- **Traceable:** Every decision, code change, and context update is linked and auditable.
- **AI-ready:** Designed for seamless human+AI collaboration, with clear boundaries and workflows.
- **Secure and robust:** Only explicitly allowed operations and commands are permitted.

---

## Triggers: How to Activate Agents, Workflows, and System Operations

### 1. Natural Language Triggers

Each agent has natural language triggers that activate their specialized capabilities:

```
"Can you help me understand the business requirements?"
(Triggers Business Analyst agent)

"How are we tracking against our project timeline?"
(Triggers Project Manager agent)

"What's the best architecture approach for this feature?"
(Triggers Architect agent)

"Should we prioritize this feature for the next sprint?"
(Triggers Product Owner agent)

"How can we improve our development process?"
(Triggers Scrum Master agent)

"How should we implement this authentication flow?"
(Triggers Developer agent)

"What testing approach should we use for the payment system?"
(Triggers QA agent)
```

### 2. Use Direct Commands for Specific Tasks

For more direct control, use these commands:

```
UMB - Update Memory Bank with current changes
SMB - Summarize Memory Bank contents
CMB - Check Memory Bank for consistency issues
INIT - Initialize project with memory bank structure
DOC - Generate documentation for current context
PLAN - Create implementation plan for current task
```

### 3. Use Workflow Slash Commands

Access specific workflows with slash commands:

```
/memory-structure - Access the three-layer memory structure workflow
/task-lifecycle - Access the task lifecycle events workflow
/error-handling - Access the error handling framework workflow
/memory-consistency - Access the memory consistency verification workflow
/session-intelligence - Access the session intelligence workflow
/smart-mcp-integration - Access the smart MCP integration framework
```

---

## Advanced Functionalities & Best Practices

Beyond the core memory bank and agent system, this template supports a range of advanced features for robust, traceable, and collaborative development:

### Session Tagging & Summarization
- All sessions are tagged with timestamps and focus.
- Start/end summaries are recorded in `activeContext.md`.

### Reverse Traceability
- All code, decisions, requirements, and tests are linked for audit and compliance.

### Automatic Reference Injection
- Decisions/actions are auto-cited with relevant memory bank references.

### Implementation Scan on Sync
- Detects new patterns, decisions, or mismatches when syncing memory bank context.

### Coding Standards Enforcement
- Auto-formatting, linting, and testing before commit are enforced.

### Security & Command Boundaries
- Only explicitly allowed MCP commands can be executed; all operations are logged.

### Agile & Story Tracking
- Daily focus, story tracking, sprint reviews, and blocker detection are supported.

### Agent Collaboration & Escalation
- Multiple agents can be triggered and escalate tasks as needed.

### Periodic Validation
- Context validation occurs every 20 minutes or after major changes.

### Customizable Workflows
- Easily add new agents, triggers, or workflows by updating rules/memory bank files.

#### Summary Table of Advanced Functionalities

| Feature/Capability         | Description                                                                 |
|---------------------------|-----------------------------------------------------------------------------|
| Session Tagging           | Auto-records session start/end, focus, and summaries                        |
| Reverse Traceability      | Links code, decisions, requirements, and tests for audits                    |
| Reference Injection       | Auto-injects citations for decisions and actions                             |
| Implementation Scan       | Detects new patterns and context changes on sync                             |
| Coding Standards          | Enforces linting, formatting, and testing before commit                      |
| Security Boundaries       | Restricts commands and logs all operations                                   |
| Agile/Story Tracking      | Supports daily focus, sprint reviews, and links stories to progress          |
| Agent Collaboration       | Multi-agent triggers and escalation paths                                    |
| Periodic Validation       | Ensures context is always applied and up to date                             |
| Custom Workflows          | Easily extensible for new agents, triggers, or integrations                  |

---

| Example User Input                                             | Triggered Agent/Workflow      |
|---------------------------------------------------------------|-------------------------------|
| “How should we prioritize the upcoming features?”              | Product Owner (PO)            |
| “What’s the best way to structure our database schema?”        | Architect                     |
| “What testing approach should we use for the payment system?”  | QA                            |
| “Can you clarify the business value of this feature?”          | Business Analyst (BA)         |
| “What are the security risks for this release?”                | Security Architect or QA      |
| “What is the current project status?”                          | Project Manager (PM)          |
| “How do we deploy to production?”                              | DevOps/Deployment Agent       |
| “What documentation is available for this API?”                | Docs Agent                    |

### 2. Direct Command Triggers
| Command | Description                       | Triggered Action              |
|---------|-----------------------------------|-------------------------------|
| `UMB`   | Update Memory Bank                | Updates context/progress      |
| `SMB`   | Summarize Memory Bank             | Generates project summary     |
| `CMB`   | Check Memory Bank                 | Validates integrity/consistency|

### 3. Agent Role Triggers
| Mention/Keyword Example                     | Triggered Agent               |
|---------------------------------------------|-------------------------------|
| “feature description”, “user requirements”  | Business Analyst (BA)         |
| “architecture”, “system design”             | Architect                     |
| “project plan”, “timeline”, “status”        | Project Manager (PM)          |
| “priority”, “backlog”, “sprint”             | Product Owner (PO)/Scrum Master (SM) |
| “test”, “QA”, “verification”                | QA                            |
| “documentation”, “spec”                     | Docs Agent                    |
| “security”, “threat model”                  | Security Architect            |

### 4. Workflow/Task Triggers
| Workflow Phrase/Action                      | Triggered Workflow            |
|---------------------------------------------|-------------------------------|
| “Create a new task/story/epic”              | Task Management Workflow      |
| “Start a new sprint”                        | Sprint Planning Workflow      |
| “Run tests”                                 | Test Execution Workflow       |
| “Deploy to staging/production”              | Deployment Workflow           |

### 5. MCP Operation Triggers
| User Intent                                 | Triggered MCP Server          |
|---------------------------------------------|-------------------------------|
| “Push code”, “create branch”, “list commits”| GitHub MCP                    |
| “Test UI”, “take screenshot”                | Playwright MCP                |
| “Query database”, “apply migration”         | Supabase MCP                  |
| “Summarize documentation”                   | Context7 MCP                  |

### Quick-Reference Trigger Table
| Trigger Type        | Example/Command                                  | Activated Agent/Workflow         |
|---------------------|--------------------------------------------------|----------------------------------|
| Natural Language    | “How should we prioritize features?”             | Product Owner                    |
| Direct Command      | `UMB`, `SMB`, `CMB`                              | Memory Bank System               |
| Agent Role Mention  | “What’s the architecture?”                       | Architect                        |
| Workflow/Task       | “Create a new epic”                              | Task Management                  |
| MCP Operation       | “Push code”, “run tests”, “query DB”             | GitHub, Playwright, Supabase MCP |

## Key Features

- **Smart Trigger System**: Natural language activation of specialized agents without explicit commands
- **Priority-Based Response**: Intelligent handling of multiple agent triggers in conversation
- **Hierarchical Memory Bank System**: Persistent context tracking across sessions with clear file dependencies
- **Intelligent MCP Server Integration**: Structured mappings for MCP operations with secure command boundaries
- **Agent-Based Development**: Specialized AI agents for different roles
- **Secure SDLC Integration**: Security-focused development with specialized security agents
- **Dual Methodology Support**: Support for both Agile and Waterfall development methodologies
- **Comprehensive Templates**: Standardized templates for all project artifacts
- **Organized File Structure**: Clear conventions for document organization
- **Version Control Integration**: Git-ready structure for collaborative development
- **CI/CD Configuration**: Ready-to-use CI/CD pipeline templates
- **Task Management Workflow**: Structured approach to task creation and tracking
- **Test-Driven Development**: Integrated testing processes and enforcement

## Current Status (As of June 5, 2025)

- Memory Bank: **Implemented and Refreshed** (June 2, 2025)
- Agent Framework: **Defined but needs testing**
- Workflow Integration: **Partially implemented**
- TDD Implementation: **Not started**

## Known Issues

1. Memory Bank Updates: Need to verify that updates properly propagate through the hierarchy after recreation
2. Agent Triggers: Need to test that agents engage based on defined triggers with refreshed memory bank
3. Workflow Integration: Memory bank updates need to be integrated with task workflows

## Next Steps (After Cloning)

1. Clone this repository when starting a new project
2. Open the project in Windsurf IDE
3. The memory bank will initialize automatically on first interaction
4. Begin using agent triggers and commands to develop your project

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

(…rest of README unchanged…)

## Memory Bank System

The memory bank system maintains project context across sessions through a hierarchical three-layer structure of files in the `memory-bank/` directory:

### Foundation Layer (Source of Truth)
- `memory-bank/projectbrief.md` - Foundation document defining core requirements and goals

### Context Layer (Derived from Foundation)
- `memory-bank/productContext.md` - Defines project scope and components (updated on scope changes)
- `memory-bank/systemPatterns.md` - Documents recurring patterns and practices (updated when patterns are identified)
- `memory-bank/techContext.md` - Technologies used, development setup, technical constraints, dependencies

### Current State Layer (Derived from Context)
- `memory-bank/activeContext.md` - Current work focus, decisions, and considerations (updated throughout the session)
- `memory-bank/progress.md` - Tracks work status and next steps (updated on task status changes)
- `memory-bank/decisionLog.md` - Key decisions and rationale with timestamp tracking

All responses begin with `[MEMORY BANK: ACTIVE]` when the system is properly initialized. The memory bank can be explicitly updated using the `UMB` command or by saying "update memory bank" which triggers a comprehensive review of ALL memory files.

## MCP Server Integration

The template includes intelligent MCP server mappings for various operations:

| Operation | MCP Server | Primary Use Cases |
|-----------|------------|-------------------|
| Repository Management | GitHub | Code storage, version control, collaboration |
| Web Testing | Playwright | UI testing, web interaction automation |
| Database Operations | Supabase | Database design, queries, migrations |
| Complex Problem Solving | Sequential-thinking | Step-by-step analysis, algorithm design |
| Documentation | Context7 | Library documentation, code reference |
| UI Automation | Puppeteer | Browser automation, screenshot captures |

Each server has defined command boundaries to ensure secure and appropriate usage. The configuration enforces:

1. **Preference for MCP Servers**: MCP servers are preferred over direct tool calls
2. **Operation-Server Mappings**: Clear mapping between operations and appropriate servers
3. **Command Boundaries**: Each server has a defined list of allowed commands
4. **Connection Verification**: Server connections are verified on startup
5. **Usage Logging**: All MCP operations are logged and included in session summaries

## Smart MCP Integration

Windsurf operations use a task-based approach that automatically selects the appropriate MCP server:

1. **Capability-Focused Operations**
   - Instead of specifying servers, you describe what you want to accomplish
   - The system analyzes the task and selects the optimal MCP server
   - Example: "Create a new repository" automatically uses GitHub MCP

2. **Task Categories**
   - **Version Control**: Repository and branch management
   - **Web Interaction**: Navigate websites, capture screenshots, interact with elements
   - **Database Operations**: Execute queries, manage schemas, create migrations
   - **Complex Thinking**: Sequential problem solving, structured analysis
   - **Documentation**: Access library docs, generate technical documentation

3. **Adaptive Learning**
   - The system tracks operation success rates
   - Learns from previous executions to improve server selection
   - Adapts to your preferences and workflow patterns

4. **Integration with Workflows**
   - Error handling framework informs MCP selection for recovery
   - Session intelligence prepares relevant MCP tools based on context
   - Task lifecycle events provide rich context for smarter tool selection

## Task Management Workflow

Tasks follow a structured lifecycle:

## System Organization

The Windsurf Project Template is organized into a clear directory structure:

```
/
├── .windsurf/              # Core system files
│   ├── core/               # Core system components
│   │   ├── event-handlers.md       # Event lifecycle handlers
│   │   ├── function-map.md         # System function definitions
│   │   ├── mcp-capability-map.md   # MCP server mappings
│   │   ├── memory-index.md         # Memory file index and checksums
│   │   ├── memory-system.md        # Memory system architecture
│   │   └── rules.md                # System rules and constraints
│   ├── errors/             # Error handling and recovery
│   ├── plans/              # Implementation plans
│   └── workflows/          # System workflows
│       ├── documentation.md        # Documentation workflow
│       ├── error-handling.md       # Error recovery framework
│       ├── evaluation.md           # Performance evaluation
│       ├── implementation.md       # Implementation process
│       ├── initialization.md       # System initialization
│       ├── memory-consistency.md   # Memory verification
│       ├── memory-structure.md     # Three-layer memory approach
│       ├── memory-update.md        # Memory update process
│       ├── self-critique.md        # Self-improvement
│       ├── session-intelligence.md # Session management
│       ├── smart-mcp-integration.md # MCP integration
│       └── task-lifecycle.md       # Task tracking
├── memory-bank/           # Hierarchical memory files
│   ├── projectbrief.md            # Foundation layer
│   ├── productContext.md          # Context layer
│   ├── systemPatterns.md          # Context layer
│   ├── techContext.md             # Context layer
│   ├── activeContext.md           # Current state layer
│   ├── progress.md                # Current state layer
│   └── decisionLog.md             # Current state layer
├── .windsurfrules         # Project intelligence
└── README.md              # Project documentation
```

## Example Agent Triggers

| User Query                                                | Triggered Agent              |
|-----------------------------------------------------------|------------------------------|  
| "How should we prioritize the upcoming features?"          | Product Owner (PO)           |
| "What's the best way to structure our database schema?"    | Architect                    |
| "What testing approach should we use for the payment system?" | QA                         |
| "Can you clarify the business value of this feature?"      | Business Analyst (BA)        |
| "What are the security risks for this release?"            | Security Architect or QA     |
| "What is the current project status?"                      | Project Manager (PM)         |
| "How do we deploy to production?"                          | DevOps/Deployment Agent      |
| "What documentation is available for this API?"            | Docs Agent                   |
