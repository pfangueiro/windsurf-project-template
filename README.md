# Windsurf Project Template

A minimal, robust, and extensible template for AI-assisted software development using the Windsurf IDE. This template leverages a hierarchical memory bank system and advanced rules to streamline human+AI collaboration, ensure traceable and auditable decision-making, and enforce best practices throughout the project lifecycle.

## Project Intention & Purpose

- **Persist project context** across sessions and contributors
- **Enable traceable, explainable decision-making** via memory bank updates
- **Support agent-based workflows** with clear boundaries and triggers
- **Ensure security, best practices, and auditability** in all project operations

## Core Functionalities

### Hierarchical Memory Bank System
- Six core files persist context, decisions, and progress
- Enables audit trails and reverse traceability from code to requirements

### Rules & Workflows
- Initialization, session handling, and periodic validation
- Memory bank commands: UMB (Update), SMB (Summarize), CMB (Check)

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

## Triggers & Example Usage

- "How should we prioritize the upcoming features?" → Triggers Product Owner agent
- "What testing approach should we use for the payment system?" → Triggers QA agent
- `UMB` to update the memory bank
- `SMB` to summarize memory bank state
- `CMB` to check memory bank integrity

## How the System Works

1. On project open/session start: Loads and validates memory bank, records session start
2. During work: Logs decisions and progress, triggers agents by language or command, enforces MCP usage
3. On session end: Summarizes accomplishments, updates progress and context

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

The memory bank system maintains project context across sessions through six core files in the `memory-bank/` directory:

- `memory-bank/projectbrief.md` - Foundation document defining core requirements and goals
- `memory-bank/productContext.md` - Defines project scope and components (updated on scope changes)
- `memory-bank/systemPatterns.md` - Documents recurring patterns and practices (updated when patterns are identified)
- `memory-bank/techContext.md` - Technologies used, development setup, technical constraints, dependencies
- `memory-bank/activeContext.md` - Current work focus, decisions, and considerations (updated throughout the session)
- `memory-bank/progress.md` - Tracks work status and next steps (updated on task status changes)

All responses begin with `[MEMORY BANK: ACTIVE]` when the system is properly initialized. The memory bank can be explicitly updated using the `UMB` command.

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

## Task Management Workflow

Tasks follow a structured lifecycle:

(…rest of README unchanged…)
