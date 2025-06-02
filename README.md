# Windsurf Project Template

A minimal, robust, and extensible template for AI-assisted software development using the Windsurf IDE. This template leverages a hierarchical memory bank system and advanced rules to streamline human+AI collaboration, ensure traceable and auditable decision-making, and enforce best practices throughout the project lifecycle.

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
- **Memory Update**: Comprehensive process ensuring ALL files are reviewed when triggered
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
| "How should we prioritize the upcoming features?"              | Product Owner (PO)            |
| "What's the best way to structure our database schema?"        | Architect                     |
| "What testing approach should we use for the payment system?"  | QA                            |
| "Can you clarify the business value of this feature?"          | Business Analyst (BA)         |
| "What are the security risks for this release?"                | Security Architect or QA      |
| "What is the current project status?"                          | Project Manager (PM)          |
| "How do we deploy to production?"                              | DevOps/Deployment Agent       |
| "What documentation is available for this API?"                | Docs Agent                    |