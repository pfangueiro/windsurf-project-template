# Windsurf IDE Local Rules

This document contains the local project-specific rules that govern how the Windsurf IDE and its agents operate for this project. These rules define the agent configurations, workflows, task management, and team structure.

```yaml
# Agent definitions
agents:
  - agent: BA
    instructions: agents/analyst.md
    knowledge:
      - templates/project-brief.md
    triggers:
      - feature description
      - user requirements
      - business value
      - market analysis
      - requirement change
      - feature update
    task_permissions:
      can_create:
        - feature
        - documentation
      can_review:
        - documentation
        - user story
        - acceptance criteria

  - agent: PM
    instructions: agents/pm-agent.md
    knowledge:
      - templates/prd.md
      - templates/epicN.md
      - templates/pm-checklist.md
      - templates/ui-ux-spec.md
      - artifacts/briefs/project-brief.md
    triggers:
      - timelines
      - dependencies
      - resource allocation
      - risk management
      - project impact
      - schedule change
    task_permissions:
      can_create:
        - epic
        - story
        - milestone
      can_review:
        - task dependencies
        - timelines
        - resource allocation

  - agent: Architect
    instructions: agents/architect-agent.md
    knowledge:
      - templates/architect-checklist.md
      - templates/architecture-templates.md
      - artifacts/architecture/architecture.md
      - artifacts/architecture/tech-stack.md
    triggers:
      - technical feasibility
      - design patterns
      - architecture impact
      - technical debt
      - implementation change
      - requirement impact
    task_permissions:
      can_create:
        - feature
        - refactor
        - architecture
      can_review:
        - feature
        - refactor
        - test
        - technical implementation

  - agent: PO
    instructions: agents/sm-agent.md
    knowledge:
      - templates/story-template.md
      - templates/po-checklist.md
      - templates/story-draft-checklist.md
      - artifacts/requirements/prd.md
      - artifacts/requirements/epicN.md
      - artifacts/architecture/architecture.md
      - docs/api-reference.md
      - docs/data-models.md
      - docs/coding-standards.md
      - docs/environment-vars.md
      - docs/testing-strategy.md
      - docs/project-structure.md
      - docs/ui-ux-spec.md
    triggers:
      - feature priority
      - acceptance criteria
      - user stories
      - value proposition
      - requirement review
      - story adjustment
    task_permissions:
      can_create:
        - feature
        - story
        - documentation
      can_review:
        - feature
        - documentation
        - user value
        - acceptance criteria

  - agent: ScrumMaster
    instructions: agents/sm-agent.md
    knowledge:
      - templates/story-template.md
      - templates/po-checklist.md
      - templates/story-draft-checklist.md
      - docs/project-structure.md
    triggers:
      - sprint planning
      - impediment removal
      - team facilitation
      - process improvement
      - workflow adjustment
    task_permissions:
      can_create: []
      can_review:
        - feature
        - bug
        - documentation
        - refactor
        - test
        - process

  - agent: Developer
    instructions: agents/dev-agent.md
    knowledge:
      - artifacts/requirements/prd.md
      - artifacts/architecture/architecture.md
      - docs/api-reference.md
      - artifacts/stories/*
      - docs/coding-standards.md
      - docs/data-models.md
      - docs/environment-vars.md
      - docs/testing-strategy.md
    triggers:
      - implementation approach
      - coding standards
      - technical constraints
      - refactoring needs
      - code impact assessment
    task_permissions:
      can_create:
        - feature
        - bug
        - refactor
        - test
      can_review:
        - feature
        - bug
        - refactor
        - test
        - code

  - agent: Docs
    instructions: agents/docs-agent.md
    knowledge:
      - docs/api-reference.md
      - templates/story-template.md
      - templates/story-draft-checklist.md
      - docs/ui-ux-spec.md
    triggers:
      - documentation needs
      - api changes
      - user-facing content
      - technical documentation
      - documentation update
    task_permissions:
      can_create:
        - documentation
      can_review:
        - documentation
        - api docs
        - user guides

  - agent: QA
    instructions: agents/qa-agent.md
    knowledge:
      - docs/testing-strategy.md
      - artifacts/requirements/prd.md
      - artifacts/stories/*
      - docs/api-reference.md
      - templates/story-template.md
      - docs/coding-standards.md
    triggers:
      - testability
      - test plans
      - quality risks
      - regression impacts
      - test case update
    task_permissions:
      can_create:
        - bug
        - test
      can_review:
        - feature
        - bug
        - test
        - quality

# Cross-functional teams
teams:
  requirement_analysis:
    members: [BA, PO, Architect]
    activities: [feature analysis, requirements gathering, feasibility assessment]
  
  technical_planning:
    members: [Architect, Developer, QA]
    activities: [technical design, implementation planning, test strategy]
  
  implementation:
    members: [Developer, Architect, QA]
    activities: [code development, code review, unit testing]
  
  quality_assurance:
    members: [QA, Developer, BA]
    activities: [test execution, bug verification, acceptance testing]
  
  documentation:
    members: [Docs, Developer, PO]
    activities: [api documentation, user guides, technical documentation]
  
  requirement_impact_analysis:
    members: [BA, PO, Architect, QA]
    activities: [impact assessment, plan adjustment, story refinement, documentation update]
  
  test_driven_development:
    members: [Developer, QA, Architect]
    activities: [test definition, test implementation, test execution, code implementation]

# Workflow triggers for specific actions
workflow_triggers:
  BA_triggers: ["@BA", "analyze requirement", "business analysis", "market need"]
  Architect_triggers: ["@Architect", "architecture", "design pattern", "technical approach"]
  PM_triggers: ["@PM", "timeline", "project plan", "resource need"]
  PO_triggers: ["@PO", "product backlog", "feature priority", "user story"]
  QA_triggers: ["@QA", "testing", "quality", "test plan", "verification"]
  Developer_triggers: ["@Developer", "implementation", "code", "develop"]
  Docs_triggers: ["@Docs", "documentation", "api docs", "user guide"]
  
  requirement_review_triggers: ["@RequirementReview", "new requirement", "requirement change", "feature update"]
  task_management_triggers: ["@CreateTask", "new task", "create task", "add task"]
  task_update_triggers: ["@UpdateTask", "update task", "change task", "task status"]
  test_creation_triggers: ["@CreateTest", "new test", "create test", "add test"]
  test_execution_triggers: ["@RunTests", "run tests", "execute tests", "test task"]
  report_generation_triggers: ["@GenerateReport", "create report", "task report", "progress report"]
  memory_update_triggers: ["UMB", "update memory", "@UpdateMemory"]

# Development standards and practices
coding_standards:
  enforce_placeholder_editing: true
  auto_linting: true
  auto_formatting: true
  testing_required_before_commit: true

memory_bank_practices:
  session_tagging: true
  compact_summaries: true
  always_link_code_to_decisions: true
  track_task_status: true
  link_tasks_to_tests: true

agile_sync:
  daily_focus_update: true
  story_tracking: true
  sprint_end_review_trigger: true
  task_progress_tracking: true
  test_coverage_reporting: true

# Task management system
task_management_system:
  enabled: true
  storage:
    directory: tasks/
    structure:
      - active/
      - completed/
      - templates/
  
  task_types:
    - feature
    - bug
    - documentation
    - refactor
    - test
    - story
    - epic
  
  status_values:
    - to_do
    - in_progress
    - testing
    - done
  
  priority_values:
    - low
    - medium
    - high
    - critical
  
  auto_creation:
    from_agent_input: true
    from_requirements: true
    test_tasks_with_features: true
  
  templates:
    feature_task: templates/task-templates/feature-task.yaml
    bug_task: templates/task-templates/bug-task.yaml
    test_task: templates/task-templates/test-task.yaml
    story_task: templates/task-templates/story-task.yaml
    epic_task: templates/task-templates/epic-task.yaml

# Test-driven development workflow
test_driven_workflow:
  enabled: true
  enforce_test_first: true
  storage:
    directory: tests/
    structure:
      - unit/
      - integration/
      - acceptance/
  
  test_types:
    - unit
    - integration
    - system
    - acceptance
  
  status_values:
    - to_do
    - in_progress
    - failed
    - passed
  
  requirements:
    coverage_minimum: 80
    all_tests_pass: true
    review_required: true
  
  progression_rules:
    task_completion_requires_tests: true
    story_completion_requires_all_tasks: true
    epic_completion_requires_all_stories: true
    test_documentation_required: true

# Requirement review workflow
requirement_review_workflow:
  trigger: "@RequirementReview"
  steps:
    - "Analyze new requirement against existing plan"
    - "Identify affected epics and stories"
    - "Assess architecture impact"
    - "Update relevant documentation"
    - "Adjust project timeline if necessary"
    - "Create or update tasks based on requirement changes"
    - "Update test requirements"
    - "Report impact assessment summary"
  outputs:
    - "Updated epics and stories"
    - "Architecture change recommendations"
    - "Timeline adjustments"
    - "Documentation updates"
    - "New or updated tasks"
    - "New or updated tests"

# Commands that can be used in the IDE
commands:
  UMB:
    description: "Update Memory Bank with latest project context"
    actions:
      - "Update activeContext.md with current session info"
      - "Update progress.md with task status changes"
      - "Add new decisions to decisionLog.md"
      - "Update systemPatterns.md if new patterns identified"
      - "Run codebase sync if code changes detected"
  
  @CreateTask:
    description: "Create a new task with specified parameters"
    parameters:
      - "title: Task title"
      - "type: Task type (feature, bug, etc.)"
      - "priority: Task priority"
      - "assignee: Agent responsible"
    example: "@CreateTask title:Implement login feature type:feature priority:high assignee:Developer"
  
  @RunTests:
    description: "Run tests for a specific task or component"
    parameters:
      - "taskId: Task ID to test"
      - "type: Test type(s) to run"
    example: "@RunTests taskId:TASK-123 type:unit,integration"

  @RequirementReview:
    description: "Trigger requirement impact analysis workflow"
    parameters:
      - "description: Brief description of the requirement"
    example: "@RequirementReview Add weather API integration to improve forecasting"
```
