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
    - "If memory-bank exists: Read all core files (productContext.md, activeContext.md, systemPatterns.md, decisionLog.md, progress.md). Set status to [MEMORY BANK: ACTIVE]."
    - "If memory-bank does NOT exist: Inform user. Ask to create and provide yes and no response choices. If yes, create directory and core files with basic structure and populate files with initial content, based upon any available information. If no, set status to [MEMORY BANK: INACTIVE]."
    - "Load context from memory-bank files if active."
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
  core_files:
    activeContext.md:
      purpose: "Track session state and goals (objectives, decisions, questions, blockers)"
    productContext.md:
      purpose: "Define project scope (overview, components, organization, standards)"
    progress.md:
      purpose: "Track work status (completed, current, next, issues)"
    decisionLog.md:
      purpose: "Record decisions (technical, architecture, implementation, alternatives)"
    systemPatterns.md:
      purpose: "Document recurring patterns and standards (coding, architecture, testing)"

  file_handling:
    read_all_at_startup: true
    build_complete_context: true

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
  decisionLog.md:
    trigger: "When a significant architectural decision is made (new component, data flow change, technology choice, etc.)."
    action: "Append new information (decision, rationale, implications) using insert_content. Never overwrite. Include timestamp."
    format: "[YYYY-MM-DD HH:MM:SS] - [Summary of Decision]"
  productContext.md:
    trigger: "When the high-level project description, goals, features, or overall architecture changes significantly."
    action: "Update existing information or append new information as appropriate. Focus on keeping this document concise and up-to-date."
    format: "Structured markdown with clear sections."
  progress.md:
    trigger: "When tasks are completed, new tasks are identified, or blockers are encountered."
    action: "Update existing information or append new information as appropriate."
    format: "Structured markdown with clear sections for completed, current, and next steps."
  activeContext.md:
    trigger: "At the beginning of each session and when focus shifts significantly."
    action: "Begin with timestamp and current focus. Append new information as session progresses."
    format: "[YYYY-MM-DD HH:MM] - [Current Focus]"
  systemPatterns.md:
    trigger: "When a new pattern or standard is established."
    action: "Append new pattern or modify existing pattern as appropriate."
    format: "Structured markdown with pattern name, description, example, and context."

rules_and_workflows:
  task_management:
    workflow:
      creation:
        - "Create task with clear scope, measurable goals and acceptance criteria"
        - "Estimate task duration (aim for 2 hours max per task)"
        - "Identify dependencies and prerequisites"
        - "Assign to appropriate agent(s)"
      execution:
        - "Update activeContext.md with current task focus"
        - "Follow defined process for implementation"
        - "Document progress in real-time"
        - "Report blockers immediately"
      review:
        - "Self-review by implementing agent"
        - "Cross-review by another relevant agent"
        - "Verify against acceptance criteria"
      completion:
        - "Document completion in progress.md"
        - "Update any relevant documentation"
        - "Capture decisions in decisionLog.md"
        - "Update memory bank with UMB command"
    documentation:
      task_format:
        - "Title: Clear, concise description"
        - "Agent: Responsible agent(s)"
        - "Duration: Estimated hours"
        - "Dependencies: Blockers or prerequisites"
        - "Acceptance: Measurable criteria"
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
   - Record decisions in decisionLog.md
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