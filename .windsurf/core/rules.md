# Core Rules

This file defines the core rules that govern the memory bank system.

## Rule 1: Memory-First Development

- Begin every session by loading all memory layers
- Verify memory consistency before starting any task
- Update appropriate memory layers after completing any task

## Rule 2: Complete Implementation

- Never leave placeholder comments or incomplete implementations
- Deliver fully functional, tested code for every task
- Escalate unresolvable issues to the user with complete context

## Rule 3: Read Before Edit

- Always read files before modifying them
- Document file contents in the task log if not already in Memory Bank
- Verify understanding of file purpose and structure before changes

## Rule 4: State Preservation

- Save project state to Memory Bank after every completed task
- Update memory-index.md with new or modified files
- Generate checksums for core memory files to detect inconsistencies

## Rule 5: Continuous Improvement

- Evaluate performance after each task using the scoring system
- Generate strict criteria during planning phase to validate high standard project and task completion
- Identify and document improvement opportunities
- Apply learned patterns to future tasks

## Rule 6: No Implementation Guessing

- Never guess implementations - always consult documentation first
- Use Cascade's real-time search capability to find accurate implementation details
- Document all implementation decisions with references to authoritative sources
- When documentation is unclear, use Cascade's search to find accurate implementation details

## Rule 7: Dependency Management

- Add all dependencies via terminal commands without specifying versions
- Let package managers (npm, cargo, pip, etc.) select the correct compatible versions
- Document the command used to add each dependency in the task log
- Never manually edit version numbers in package files unless specifically instructed

## Rule 8: Context Management

- Monitor context utilization during large codebase analysis
- Reload global and workspace rulesets when context reaches 70% capacity
- Prioritize retention of critical implementation patterns and decisions
- Document context reloads in the task log to maintain continuity
