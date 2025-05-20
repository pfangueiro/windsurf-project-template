# Windsurf IDE Global Rules

This document contains the global rules that govern how the Windsurf IDE and its memory bank system operate. These rules define the initialization process, memory bank structure, agent roles, and update mechanisms.

```yaml
memory_system_rules:
  primary_system: "memory-bank"

initialization:
  trigger: "first_interaction"
  priority: "immediate"
  required: true
  actions:
    - "Before doing ANYTHING else, read and fully internalize ALL rules in this file."
    - "Check if memory-bank/ directory exists."
    - "If memory-bank exists: Read all core files (projectbrief.md, productContext.md, activeContext.md, systemPatterns.md, techContext.md, progress.md). Set status to [MEMORY BANK: ACTIVE]."
    - "If memory-bank does NOT exist: Inform user. Ask to create and provide yes and no response choices. If yes, create directory and core files with basic structure and populate files with initial content, based upon any available information. If no, set status to [MEMORY BANK: INACTIVE]."
    - "Load context from memory-bank files if active in hierarchical order (projectbrief first, then files that depend on it)."
    - "Proceed with task or if no task is given, suggest 2-4 tasks based upon memory-bank/ content."

  validation:
    - "Verify memory-bank status (ACTIVE/INACTIVE)."
    - "If ACTIVE, confirm core files were read."

system_validation:
  startup:
    - "Verify .windsurfrules loaded"
    - "Check memory-bank accessibility if expected"
    - "Confirm initialization sequence complete"
    - "Prevent ANY coding/editing until memory-bank is ACTIVE or explicitly declined by user"

memory_bank:
  hierarchy:
    - projectbrief.md: [productContext.md, systemPatterns.md, techContext.md]
    - productContext.md: [activeContext.md]
    - systemPatterns.md: [activeContext.md]
    - techContext.md: [activeContext.md]
    - activeContext.md: [progress.md]
  
  core_files:
    projectbrief.md:
      purpose: "Foundation document defining core requirements and goals, source of truth for project scope"
      required: true
    productContext.md:
      purpose: "Why this project exists, problems it solves, how it should work, user experience goals"
      required: true
    activeContext.md:
      purpose: "Current work focus, recent changes, next steps, active decisions and considerations"
      required: true
    systemPatterns.md:
      purpose: "System architecture, key technical decisions, design patterns in use, component relationships"
      required: true
    techContext.md:
      purpose: "Technologies used, development setup, technical constraints, dependencies"
      required: true
    progress.md:
      purpose: "What works, what's left to build, current status, known issues"
      required: true

  file_handling:
    read_all_at_startup: true
    build_complete_context: true
    update_triggers:
      - "When discovering new project patterns"
      - "After implementing significant changes"
      - "When user requests with 'update memory bank'"
      - "When context needs clarification"
      
  commands:
    UMB:  # Update Memory Bank
      description: "Update memory bank with latest project context"
      priority: "high"
      actions:
        - "Scan all recent conversation for new context"
        - "Identify changes to project state"
        - "Update activeContext.md with current focus and decisions"
        - "Update progress.md with task status changes"
        - "Review if projectbrief.md needs updates (rare)"
        - "Update systemPatterns.md if new patterns identified"
        - "Update any required dependencies based on hierarchy"
    SMB:  # Summarize Memory Bank
      description: "Generate summary of current memory bank state"
      priority: "medium"
      actions:
        - "Analyze current state of all memory bank files"
        - "Generate hierarchical summary starting with projectbrief.md"
        - "Identify any inconsistencies between files"
        - "Highlight important current context from activeContext.md"
        - "Present next steps from progress.md"
    CMB:  # Check Memory Bank
      description: "Verify memory bank integrity and consistency"
      priority: "medium"
      actions:
        - "Verify all required files exist"
        - "Check for hierarchical consistency"
        - "Validate that each file fulfills its purpose"
        - "Report any issues found"
        - "Suggest fixes if needed"
    
  practices:
    session_tagging: true
    compact_summaries: true
    always_link_code_to_decisions: true
    crosslink_agent_outputs: true
    auto_reference_injections: true
    reverse_code_traceability: true
    implementation_scan_on_sync: true
    
  session_handling:
    start_actions: 
      - "Record session start timestamp in activeContext.md"
      - "Create session summary section"
      - "Review last session summary from activeContext.md"
      - "Verify memory bank consistency against hierarchy"
    end_actions:
      - "Summarize all changes from session"
      - "Update progress.md with session accomplishments"
      - "Identify any incomplete tasks"
      - "Flag any decisions that require documentation"
    periodic_actions:
      - "Every 20 minutes, verify memory bank context is still being applied"
      - "After major code changes, check if memory bank updates are needed"
    format:
      session_header: "## Session [YYYY-MM-DD HH:MM] - [Session Focus]"
      session_summary: "### Summary\n- Accomplishments: [List]\n- Decisions: [List]\n- Next Steps: [List]"
    
  referencing:
    cite_format: "[FILE: section]"
    priority_sources: ["projectbrief.md", "activeContext.md"]
    cross_referencing: true
    versioning: true
    traceability:
      code_to_decision: true
      decision_to_requirement: true
      requirement_to_test: true
    validation:
      verify_reference_exists: true
      flag_stale_references: true

  additional_context:
    allow_creation: true
    suggested_folders:
      - "features/" # Complex feature documentation
      - "integrations/" # Integration specifications 
      - "api/" # API documentation
      - "testing/" # Testing strategies
      - "deployment/" # Deployment procedures

codebase_sync:
  trigger: "manual or memory-init if codebase/ directory is detected"
  required_files:
    - codebase/codebase_snapshot.md
    - codebase/code_links.md
  validation:
    - "Validate codebase directory structure exists"
    - "Read snapshot and links if present"
  agent_integration:
    behavior:
      - "If codebase is present, all agents (BA, PM, Architect, PO/SM) must check if codebase state impacts their area of responsibility"
      - "If mismatches or gaps exist, agents must raise it to the user with clear recommendation or question"
      - "If no issues found, confirm coverage and continue"

coding_standards:
  enforce_placeholder_editing: true
  auto_linting: true
  auto_formatting: true
  testing_required_before_commit: true
  llm_friendly_formatting: true
  enforce_output_blocks: true
  map_code_to_stories: true
  inject_llm_links: true

agile_sync:
  daily_focus_update: true
  story_tracking: true
  sprint_end_review_trigger: true
  link_stories_to_progress_log: true
  detect_blockers_from_epics: true
  detect_implementation_mismatches: true

mcp_usage:
  always_log_server_context: true
  auto_switch_servers_on_failure: true

roles_and_workflow:
  agents:
    - BA: analyst.md
    - PM: pm-agent.md
    - Architect: architect-agent.md
    - PO: sm-agent.md
    - ScrumMaster: sm-agent.md
    - Developer: dev-agent.md
    - QA: qa-agent.md
    - Docs: docs-agent.md
  execution_model:
    phases:
      - Business Analysis
      - Architecture Design
      - Sprint Planning
      - Development
      - Testing
      - Documentation
      - Deployment
      - Maintenance
    pattern:
      - "Agile methodology with 2-week sprints"
      - "Daily stand-ups"
      - "Weekly sprint reviews"
      - "Monthly retrospectives"
      - "Continuous integration/continuous deployment"
      - "Documentation-driven development"
  collaboration_model:
    auto_engagement:
      - BA: ["feature description", "user requirements", "business value", "market analysis"]
      - Architect: ["technical feasibility", "design patterns", "architecture impact", "technical debt"]
      - PM: ["timelines", "dependencies", "resource allocation", "risk management"]
      - PO: ["feature priority", "acceptance criteria", "user stories", "value proposition"]
      - QA: ["testability", "test plans", "quality risks", "regression impacts"]
      - Developer: ["implementation approach", "coding standards", "technical constraints", "refactoring needs"]
      - Docs: ["documentation needs", "api changes", "user-facing content", "technical documentation"]
    workflow_triggers:
      BA_triggers: ["@BA", "analyze requirement", "business analysis", "market need"]
      Architect_triggers: ["@Architect", "architecture", "design pattern", "technical approach"]
      PM_triggers: ["@PM", "timeline", "project plan", "resource need"]
      PO_triggers: ["@PO", "product backlog", "feature priority", "user story"]
      QA_triggers: ["@QA", "testing", "quality", "test plan", "verification"]
      Developer_triggers: ["@Developer", "implementation", "code", "develop"]
      Docs_triggers: ["@Docs", "documentation", "api docs", "user guide"]
    cross_functional_teams:
      requirement_analysis: ["BA", "PO", "Architect"]
      technical_planning: ["Architect", "Developer", "QA"]
      implementation: ["Developer", "Architect", "QA"]
      quality_assurance: ["QA", "Developer", "BA"]
      documentation: ["Docs", "Developer", "PO"]

status_prefix:
  general: "Begin EVERY response with either '[MEMORY BANK: ACTIVE]' or '[MEMORY BANK: INACTIVE]', according to the current state of the Memory Bank."

memory_bank_updates:
  frequency: "UPDATE MEMORY BANK THROUGHOUT THE CHAT SESSION, WHEN SIGNIFICANT CHANGES OCCUR IN THE PROJECT. Use judgment to determine significance."
  # Decisions are now tracked in activeContext.md instead of decisionLog.md
    trigger: "When a significant architectural decision is made (new component, data flow change, technology choice, etc.)."
    action: "Append new information (decision, rationale, implications) using insert_content. Never overwrite. Include timestamp."
    format: "[YYYY-MM-DD HH:MM:SS] - [Summary of Decision]"
  productContext.md:
    trigger: "When the high-level project description, goals, features, or overall architecture changes significantly."
    action: "Update existing information or append new information as appropriate. Focus on keeping this document concise and up-to-date."
    format: "Structured markdown with clear sections."
  progress.md:
    trigger: "When tasks are completed, new tasks are identified, or blockers are encountered."
    action: "Update existing information or append new information as appropriate. Automatically update task status."
    format: "Structured markdown with clear sections for completed, current, and next steps. Include task IDs and status."
  activeContext.md:
    trigger: "At the beginning of each session and when focus shifts significantly."
    action: "Begin with timestamp and current focus. Append new information as session progresses. Update with current task focus."
    format: "[YYYY-MM-DD HH:MM] - [Current Focus] - [Active Task ID]"
  systemPatterns.md:
    trigger: "When a new pattern or standard is established."
    action: "Append new pattern or modify existing pattern as appropriate."
    format: "Structured markdown with pattern name, description, example, and context."
  tasks:
    trigger: "When agent proposes a task, when project goals are defined, or when a new requirement is identified."
    action: "Create new task with appropriate metadata, assign to agent, update dependencies."
    format: "YAML task definition with ID, title, description, status, and related metadata."
  tests:
    trigger: "When a new feature task is created or when test requirements change."
    action: "Create corresponding test tasks, link to feature tasks, define acceptance criteria."
    format: "YAML test definition with ID, title, type, related task, and status."

rules_and_workflows:
  task_management:
    workflow:
      creation:
        - "Create task with clear scope, measurable goals and acceptance criteria"
        - "Estimate task duration (aim for 2 hours max per task)"
        - "Identify dependencies and prerequisites"
        - "Assign to appropriate agent(s)"
        - "Generate unique task ID in format TASK-[number]"
        - "Automatically create test tasks for feature tasks"
      execution:
        - "Update activeContext.md with current task focus"
        - "Follow defined process for implementation"
        - "Document progress in real-time"
        - "Report blockers immediately"
        - "Update task status as work progresses"
      review:
        - "Self-review by implementing agent"
        - "Cross-review by another relevant agent"
        - "Verify against acceptance criteria"
        - "Execute all related tests and verify they pass"
      completion:
        - "Document completion in progress.md"
        - "Update any relevant documentation"
        - "Capture decisions in activeContext.md"
        - "Update memory bank with UMB command"
        - "Automatically update status of dependent tasks"
        - "Generate completion report"
    documentation:
      task_format:
        - "ID: Unique identifier (TASK-[number])"
        - "Title: Clear, concise description"
        - "Agent: Responsible agent(s)"
        - "Duration: Estimated hours"
        - "Dependencies: Blockers or prerequisites"
        - "Acceptance: Measurable criteria"
        - "Status: to_do, in_progress, testing, done"
        - "Related Tests: List of test IDs"
        - "Related Story: Story ID"
        - "Related Epic: Epic ID"
    test_driven_development:
      workflow:
        - "Create test tasks before or alongside feature tasks"
        - "Define test requirements and acceptance criteria"
        - "Implement tests before or alongside feature code"
        - "Execute tests frequently during development"
        - "All tests must pass before task completion"
        - "Update test coverage metrics"
      test_format:
        - "ID: Unique identifier (TEST-[number])"
        - "Title: Clear description of what is being tested"
        - "Type: unit, integration, system, acceptance"
        - "Related Task: Feature task ID"
        - "Status: to_do, in_progress, failed, passed"
        - "Automated: true/false"
        - "Coverage Target: Percentage"
      progression_rules:
        - "Feature tasks cannot be marked done until all related tests pass"
        - "Stories cannot be marked complete until all tasks are done"
        - "Epics cannot be marked complete until all stories are done"
        - "New tasks in a story cannot start until current tasks are tested"
        - "Test results must be documented in progress.md"
```

## Requirement Review Workflow

### Overview
The Requirement Review Workflow is a standardized process for evaluating the impact of new requirements on existing project plans, epics, stories, and architecture. This process ensures that all project artifacts remain synchronized when requirements change or are added.

### Trigger
This workflow is triggered when:
- A new requirement is proposed
- An existing requirement is modified
- A feature is updated or enhanced
- The explicit `@RequirementReview` command is used

### Participants
The Requirement Impact Analysis team handles this workflow, consisting of:
- Business Analyst (BA)
- Product Owner (PO)
- Architect
- QA Engineer

### Process Steps

1. **Initial Analysis**
   - BA analyzes new requirement for business impact
   - PO evaluates feature priority and value proposition
   - Architect assesses technical feasibility and architecture impact
   - QA determines testing implications

2. **Document Impact Assessment**
   - Identify affected epics and stories
   - Evaluate timeline implications
   - Determine architectural changes needed
   - Assess testing requirements

3. **Update Project Artifacts**
   - Modify affected epics with new acceptance criteria
   - Update or create user stories
   - Adjust architecture documentation if necessary
   - Revise PRD to include new requirements

4. **Timeline Adjustment**
   - Evaluate impact on current sprint
   - Update project timeline if necessary
   - Reassess priorities
   - Identify risks related to the changes

5. **Documentation Updates**
   - Update all affected documentation
   - Record decisions in activeContext.md
   - Update activeContext.md with new focus
   - Record changes in progress.md

6. **Report Generation**
   - Create a summary of all impacts
   - Include all updated artifacts
   - Provide recommended next steps
   - Highlight any blockers or risks

### Output Artifacts
The process produces several updated artifacts:
- Updated epics and user stories
- Architecture change recommendations
- Timeline adjustments
- Documentation updates
- Impact assessment report

### Usage
To trigger this workflow, simply use:
```
@RequirementReview [description of new requirement]
```

### Example
```
@RequirementReview Add weather API integration to improve solar production forecasting
```

This would trigger the full review process to assess how this requirement impacts existing plans, potentially updating Epic 4 (LLM Integration and Advanced Features), adding new user stories, and adjusting the architecture document to include the weather API component.

## Implementation Guidelines

1. **Brevity and Focus**
   - Keep requirement descriptions clear and specific
   - Focus on the new functionality, not implementation details

2. **Complete Context**
   - Provide sufficient context for proper assessment
   - Include business justification when possible

3. **Timing Considerations**
   - Allow sufficient time for thorough analysis
   - Consider sprint boundaries when introducing significant changes

4. **Cross-Team Communication**
   - Ensure all affected teams are aware of the requirement
   - Facilitate discussion between teams if needed

This standardized approach ensures that project plans remain cohesive and up-to-date as requirements evolve throughout the development process.