# System Patterns

## Coding Patterns

### Memory-Aware Development
**Pattern**: Always update memory bank when making significant code changes
**Description**: When implementing new features or making architectural changes, explicitly update the memory bank to document the change.
**Example**: After implementing a new module, use the UMB command to update progress.md and decisionLog.md.
**Context**: Ensures all development remains documented and contextualized.

### Agent-Driven Implementation
**Pattern**: Engage specific agents for specialized development tasks
**Description**: Use the @[agent] syntax to explicitly request help from specific agent types based on the task at hand.
**Example**: Use @Developer for code implementation, @Architect for design decisions, @QA for testing strategies.
**Context**: Provides specialized expertise for each aspect of development.

### Task-Based Development
**Pattern**: Break down all work into discrete, trackable tasks
**Description**: Use the @CreateTask command to create formal task definitions before starting work.
**Example**: @CreateTask title:Implement user authentication type:feature priority:high assignee:Developer
**Context**: Enables tracking, assignment, and completion metrics for all development work.

## Architecture Patterns

### Memory Bank System
**Pattern**: Centralized context persistence across sessions
**Description**: Use the five core memory bank files to maintain project context.
**Example**: activeContext.md tracks current session focus, productContext.md defines project scope.
**Context**: Solves the problem of context loss between development sessions.

### Agent-Based Workflow
**Pattern**: Specialized AI agents for different roles in development
**Description**: Each agent has specific knowledge, triggers, and permissions.
**Example**: Business Analyst agent for requirements, Developer agent for implementation.
**Context**: Provides specialized assistance tailored to specific types of tasks.

### Cross-Functional Teams
**Pattern**: Predefined agent combinations for specific types of work
**Description**: Teams of agents work together on related aspects of development.
**Example**: Technical Planning team includes Architect, Developer, and QA agents.
**Context**: Ensures comprehensive coverage of all aspects when addressing complex tasks.

### Command-Driven Interactions
**Pattern**: Explicit commands for system actions
**Description**: Special syntax triggers specific workflows in the system.
**Example**: UMB updates memory bank, @RequirementReview triggers analysis workflow.
**Context**: Creates clear, predictable interfaces for human-AI collaboration.

## Testing Patterns

### Test-First Development
**Pattern**: Create tests before or alongside feature implementation
**Description**: Define test requirements before coding features.
**Example**: Use @CreateTest to create test tasks connected to feature tasks.
**Context**: Ensures testability and quality from the start of development.

### Automated Test Generation
**Pattern**: Feature tasks automatically generate related test tasks
**Description**: When a feature task is created, corresponding test tasks are created automatically.
**Example**: A login feature task generates unit, integration, and acceptance test tasks.
**Context**: Ensures test coverage for all features.

### Test-Driven Task Completion
**Pattern**: Tasks cannot be marked complete until tests pass
**Description**: Force all tests to pass before marking implementation tasks as done.
**Example**: Run @RunTests taskId:TASK-123 and verify all pass before completion.
**Context**: Ensures quality and prevents regression.

## Documentation Patterns

### Core Memory Bank Files
**Pattern**: Structured persistence of project context
**Description**: Five core files maintain different aspects of project context.
**Example**:
  - activeContext.md: Tracks session state and goals
  - productContext.md: Defines project scope
  - progress.md: Tracks work status
  - decisionLog.md: Records decisions
  - systemPatterns.md: Documents recurring patterns
**Context**: Provides persistent, structured project memory.

### Auto-Documentation
**Pattern**: Documentation updated automatically during development
**Description**: Memory bank files are updated throughout the development process.
**Example**: When a task is completed, progress.md is automatically updated.
**Context**: Ensures documentation stays current with minimal effort.

### Report Generation
**Pattern**: Standardized reports for completed work
**Description**: Generate formal reports when tasks, stories, or epics are completed.
**Example**: Use @GenerateReport to create standardized completion documentation.
**Context**: Provides consistent documentation of completed work.

## Workflow Patterns

### Memory Bank Initialization
**Pattern**: Initialize memory bank on first project interaction
**Description**: System automatically checks for memory bank and initializes if needed.
**Example**: First interaction sets up memory bank files and displays [MEMORY BANK: ACTIVE].
**Context**: Ensures context tracking from the beginning of a project.

### Regular Memory Updates
**Pattern**: Explicitly update memory bank at significant milestones
**Description**: Use the UMB command to update memory bank with latest context.
**Example**: After completing a feature or making architectural decisions, use UMB.
**Context**: Keeps project context current and accurate.

### Requirement Impact Analysis
**Pattern**: Formally evaluate impact of requirement changes
**Description**: Use @RequirementReview to trigger a formal impact analysis.
**Example**: @RequirementReview Add weather API integration to improve forecasting
**Context**: Ensures changes are properly integrated with existing plans and architecture.

## Workflow Patterns
- Agile methodology with 2-week sprints
- Daily stand-ups
- Weekly sprint reviews
- Monthly retrospectives
- Continuous integration/continuous deployment
- Documentation-driven development

## Naming Conventions
- To be defined

## File Organization
- memory-bank/: Project context and documentation
- templates/: Reusable document templates
- agents/: Agent-specific instructions
- docs/: Project documentation
- code/: Source code
- artifacts/: Project artifacts
