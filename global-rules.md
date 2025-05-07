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
    - 1-Analyst: analyst.md
    - 2-PM: pm-agent.md
    - 3-Architect: architect-agent.md
    - 4-PO+SM: sm-agent.md
  execution_model:
    phases:
      - Brainstorming
      - Deep Research
      - Project Brief
      - PRD
      - Architecture
      - Epics
      - Stories
      - QA
    pattern:
      - "Build small, verify, iterate"
      - "Test each module independently"
      - "Retest full system after section completion"
      - "Proactively flag gaps, clarify with user"
      - "Collaborate to prevent LLM drift from goals"

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
    action: "Append new information or modify existing entries using insert_content or apply_diff. Append timestamp and summary as footnote."
    format: "[YYYY-MM-DD HH:MM:SS] - [Summary of Change]"
  systemPatterns.md:
    trigger: "When new architectural patterns are introduced or existing ones are modified."
    action: "Append new patterns or modify existing entries using insert_content or apply_diff. Include timestamp."
    format: "[YYYY-MM-DD HH:MM:SS] - [Description of Pattern/Change]"
  activeContext.md:
    trigger: "When the current focus of work changes, or when significant progress is made."
    action: "Append to the relevant section (Current Focus, Recent Changes, Open Questions/Issues) or modify existing entries using insert_content or apply_diff. Include timestamp."
    format: "[YYYY-MM-DD HH:MM:SS] - [Summary of Change/Focus/Issue]"
  progress.md:
    trigger: "When a task begins, is completed, or its status changes."
    action: "Append the new entry using insert_content. Never overwrite. Include timestamp."
    format: "[YYYY-MM-DD HH:MM:SS] - [Summary of Progress Update]"

umb: # Update Memory Bank command
  trigger: "^(Update Memory Bank|UMB)$"
  instructions:
    - "Halt Current Task: Stop current activity."
    - "Acknowledge Command: Respond with '[MEMORY BANK: UPDATING]'."
    - "Review Chat History: Analyze the complete current chat session."

  core_update_process: |
    1. Current Session Review: Analyze chat history for relevant decisions, context changes, progress updates, clarifications etc.
    2. Comprehensive Updates: Update relevant memory bank files based on the review, following the rules defined in 'memory_bank_updates'.
    3. Memory Bank Synchronization: Ensure consistency across updated files.

  task_focus: "During UMB, focus ONLY on capturing information explicitly present in the *current chat session* (clarifications, decisions, progress). Do NOT summarize the entire project or perform actions outside this scope."
  cross_mode_updates: "Capture relevant information from the chat session irrespective of conceptual 'modes' mentioned, adding it to the appropriate Memory Bank files."

  post_umb_actions:
    - "State: Memory Bank fully synchronized based on current chat session."
    - "State: Session context preserved for continuation."
```

## Implementation Notes

These global rules are automatically loaded by the Windsurf IDE and govern the behavior of the system. The rules ensure:

1. **Consistent Memory Management**: The memory bank system maintains context across sessions.
2. **Structured Workflow**: The agent-based approach provides specialized assistance for each phase of development.
3. **Contextual Awareness**: The system tracks decisions, progress, and patterns throughout the project lifecycle.
4. **Automated Updates**: The UMB command provides a mechanism for synchronizing the memory bank with the current session.

When using this project template with the Windsurf IDE, these rules will be automatically applied, ensuring a consistent and productive development experience.