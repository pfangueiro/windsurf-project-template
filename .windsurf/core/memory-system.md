# Memory System Architecture

The Memory Bank is the central source of truth across all sessions. After every memory reset, the system begins completely fresh and depends entirely on the Memory Bank for context.

## Memory Layers

1. **Foundation Layer** - Project requirements, vision, and goals
   - `projectbrief.md` - Core requirements document
   - `productContext.md` - Why the project exists and what problems it solves

2. **Architecture Layer** - System design and technical decisions
   - `systemPatterns.md` - System architecture and patterns
   - `techContext.md` - Technology choices and dependencies

3. **Active Layer** - Current state and progress
   - `activeContext.md` - Current focus and recent decisions
   - `progress.md` - Task status and next steps
   - `decisionLog.md` - Record of key decisions and reasoning

## Memory Management Principles

1. **Hierarchical Loading** - Files are loaded in dependency order
2. **Consistency Verification** - Checksums verify memory integrity
3. **Adaptive Detail** - Critical information prioritized in context
4. **Session Tagging** - Each interaction tagged for context tracking

Following Memory-First Development principles ensures continuous understanding across sessions, creating a robust system that maintains deep context even after reset events.