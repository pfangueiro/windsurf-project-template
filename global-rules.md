# Global Rules - Smart MCP Configuration

This document contains the core global rules optimized for intelligent MCP usage and enhanced memory bank operations.

```yaml
memory_system_rules:
  primary_system: "memory-bank"
  version: "2.0"
  system_health_monitoring: true

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
  recovery:
    - "If initialization fails, attempt recovery by checking file permissions"
    - "If memory bank is incomplete, suggest rebuilding from available files"

system_validation:
  startup:
    - "Verify .windsurfrules loaded"
    - "Check memory-bank accessibility if expected"
    - "Confirm initialization sequence complete"
    - "Prevent ANY coding/editing until memory-bank is ACTIVE or explicitly declined by user"
  runtime:
    - "Monitor memory bank consistency throughout session"
    - "Alert on detection of outdated or inconsistent information"

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
      content_sections:
        - "Project Vision"
        - "Core Requirements"
        - "Success Metrics"
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
    intelligent_loading:
      priority_sections: true
      context_aware_retrieval: true
    update_triggers:
      - "When discovering new project patterns"
      - "After implementing significant changes"
      - "When user requests with 'update memory bank'"
      - "When context needs clarification"
      
  commands:
    UMB:  # Update Memory Bank
      description: "Update memory bank with latest project context"
      priority: "high"
      trigger_phrases:
        - "update memory bank"
        - "save current context"
      actions:
        - "Scan all recent conversation for new context"
        - "Identify changes to project state"
        - "Update activeContext.md with current focus and decisions"
        - "Update progress.md with task status changes"
        - "Update systemPatterns.md if new patterns identified"
      intelligence:
        - "Analyze conversation for implicit context changes"
        - "Detect inconsistencies in understanding"
    SMB:  # Summarize Memory Bank
      description: "Generate summary of current memory bank state"
      priority: "medium"
      trigger_phrases:
        - "summarize memory bank"
        - "show project overview"
      actions:
        - "Generate hierarchical summary starting with projectbrief.md"
        - "Highlight important current context from activeContext.md"
        - "Present next steps from progress.md"
    CMB:  # Check Memory Bank
      description: "Verify memory bank integrity and consistency"
      priority: "medium"
      trigger_phrases:
        - "check memory bank"
        - "verify memory integrity"
      actions:
        - "Verify all required files exist"
        - "Check for hierarchical consistency"
        - "Report any issues found"
        - "Suggest fixes if needed"
    
  practices:
    session_tagging: true
    compact_summaries: true
    always_link_code_to_decisions: true
    auto_reference_injections: true
    knowledge_gap_detection: true
    
  session_handling:
    start_actions: 
      - "Record session start timestamp in activeContext.md"
      - "Create session summary section"
      - "Review last session summary from activeContext.md"
    end_actions:
      - "Summarize all changes from session"
      - "Update progress.md with session accomplishments"
      - "Identify any incomplete tasks"
    periodic_actions:
      - "Every 20 minutes, verify memory bank context is still being applied"
      - "After major code changes, check if memory bank updates are needed"
    format:
      session_header: "## Session [YYYY-MM-DD HH:MM] - [Session Focus]"
      session_summary: "### Summary\n- Accomplishments: [List]\n- Decisions: [List]\n- Next Steps: [List]"
    intelligence:
      detect_session_focus: true
      track_focus_shifts: true
    
  referencing:
    cite_format: "[FILE: section]"
    priority_sources: ["projectbrief.md", "activeContext.md"]
    cross_referencing: true
    traceability:
      code_to_decision: true
      decision_to_requirement: true

codebase_sync:
  trigger: "manual or memory-init if codebase/ directory is detected"
  required_files:
    - codebase/codebase_snapshot.md
    - codebase/code_links.md
  validation:
    - "Validate codebase directory structure exists"
    - "Read snapshot and links if present"
  intelligent_sync:
    code_to_context_mapping: true
    detect_implementation_drift: true

# Smart MCP Integration at Global Level
mcp_intelligence:
  natural_language_understanding:
    command_detection:
      fuzzy_matching: true
      intent_recognition: true
    conversation_memory:
      maintain_conversation_context: true
      identify_unresolved_questions: true
  
  task_execution:
    capability_classification:
      - version_control
      - web_interaction
      - database_operations
      - complex_thinking
      - documentation
    
    capability_detection:
      analyze_request_intent: true
      identify_required_tools: true
      determine_execution_sequence: true
    
    contextual_adaptation:
      learn_from_previous_executions: true
      adapt_to_user_preferences: true
      improve_through_feedback: true
  
  cross_server_operations:
    enable_operation_chaining: true
    orchestrate_complex_workflows: true
    handle_multi_server_dependencies: true
  
  continuous_improvement:
    track_operation_success_rate: true
    analyze_failure_patterns: true
    suggest_optimization_strategies: true

# Integration with task management
task_intelligence:
  capabilities:
    detect_task_type: true
    suggest_optimal_approach: true
    identify_required_resources: true
    estimate_completion_difficulty: true
  
  execution:
    sequence_substeps: true
    monitor_progress: true
    adapt_to_blockers: true
    suggest_alternative_paths: true
  
  knowledge_application:
    apply_domain_patterns: true
    leverage_prior_solutions: true
    generalize_successful_approaches: true
```

## Using Smart MCP with Memory Bank

The integration between the memory bank and smart MCP creates a powerful system that:

1. **Maintains Project Context** - The memory bank stores all project information in a structured hierarchy
2. **Understands Task Intent** - The smart MCP system analyzes requests to determine the appropriate capabilities
3. **Adapts Over Time** - Both systems learn from usage patterns to improve their effectiveness

## Implementation Guidelines

When working with this integrated system:

1. Focus on describing what you want to accomplish, not how to do it
2. Allow the system to select the appropriate tools based on your intent
3. Provide feedback to help the system learn your preferences
4. Regularly update the memory bank to maintain accurate project context

## Example Workflows

### Feature Development

```
1. "What are our current priorities?" (Memory bank retrieval)
2. "I want to implement the authentication system" (Task initiation)
3. The system automatically:
   - Retrieves relevant architecture patterns from memory bank
   - Selects appropriate MCP tools for implementation
   - Documents decisions in activeContext.md
   - Updates progress.md when complete
```

### Project Exploration

```
1. "Summarize our current project" (Memory bank command)
2. "Show me how the payment system works" (Memory bank + code exploration)
3. The system automatically:
   - Provides context from memory bank
   - Uses appropriate MCP tools to visualize code
   - Links documentation to implementation
```