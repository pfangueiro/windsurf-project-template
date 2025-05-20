# Windsurf Project Template

A comprehensive project structure template for AI-assisted software development using the Windsurf framework. Featuring an advanced trigger system for natural language agent activation and intelligent context management.

## Overview

This repository provides a standardized project structure designed to work seamlessly with the Windsurf IDE and AI agents. It establishes a robust memory bank system, specialized agent roles, and structured workflows that enable efficient collaboration between humans and AI throughout the software development lifecycle.

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
