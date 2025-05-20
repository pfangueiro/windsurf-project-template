---
description: Three-Layer Memory Structure
---

# Three-Layer Memory Structure

This enhancement implements a tiered memory approach for optimal context management across sessions.

```yaml
memory_structure:
  working_memory:
    file: "activeContext.md"
    purpose: "Current focus and immediate task context"
    refresh_rate: "continuous"
    contents:
      - "Current task focus"
      - "Active decisions"
      - "Immediate next steps"
      - "Session timestamps"
    update_triggers:
      - "At session start"
      - "When task focus changes"
      - "At regular intervals during long sessions"
  
  short_term_memory:
    directory: "task-logs/"
    purpose: "Recent activities and decisions"
    retention_period: "14 days"
    file_naming: "YYYY-MM-DD_task_[id].md"
    contents:
      - "Task objectives"
      - "Implementation details"
      - "Decisions made"
      - "Challenges encountered"
      - "Solutions applied"
      - "Performance metrics"
    cleanup_policy:
      automatic_archiving: true
      retention_days: 14
      archive_location: "task-logs/archive/"
  
  long_term_memory:
    files: ["projectbrief.md", "productContext.md", "systemPatterns.md", "techContext.md", "progress.md"]
    purpose: "Core project knowledge and architectural decisions"
    update_frequency: "when significant changes occur"
    consistency_checks:
      frequency: "daily"
      verification_method: "checksum"
    cross_referencing:
      enabled: true
      format: "[FILE: section]"
    versioning:
      enabled: true
      format: "YYYY-MM-DD HH:MM - [author]"
```

## Integration with Smart MCP

The three-layer memory structure provides optimal context for MCP operations:

1. **Working Memory** (activeContext.md) informs immediate tool selection
2. **Short-Term Memory** (task-logs) provides recent patterns for similar operations
3. **Long-Term Memory** (core files) ensures consistency with project architecture

This structure ensures the MCP intelligence has access to the right level of context for each operation, preventing both context overload and insufficiency.
