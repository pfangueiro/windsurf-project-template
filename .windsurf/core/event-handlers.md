# Event Handlers

This file defines the system event handlers that trigger specific actions during different lifecycle events.

## Session Lifecycle Events

### SessionStart
- Check if `.windsurf/` directory structure exists
- If structure doesn't exist, scaffold it by creating all required directories
- If memory files don't exist, initialize them with available project information
- Load all memory layers from `.windsurf/core/`
- Verify memory consistency using checksums in memory-index.md
- Identify current task context from activeContext.md
- Create a memory of this initialization process

### TaskStart
- Document task objectives in new task log
- Develop criteria for successful task completion
- Load relevant context from memory
- Create implementation plan

### ErrorDetected
- Document error details in `.windsurf/errors/`
- Check memory for similar errors
- Apply recovery strategy
- Update error patterns

### TaskComplete
- Document implementation details in task log
- Evaluate performance
- Update all memory layers
- Update activeContext.md with next steps

### SessionEnd
- Ensure all memory layers are synchronized
- Document session summary in activeContext.md
- Update checksums in memory-index.md
