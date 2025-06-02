# Function Map

This file defines the function map that serves as a software layer within the model context.

## Memory Bank Structure Functions

- **createProjectBrief**: Create the foundational project brief document
- **createProductContext**: Document why the project exists and problems it solves
- **createSystemPatterns**: Document system architecture and design patterns
- **createTechContext**: Document technologies, setup and dependencies
- **createActiveContext**: Document current work focus and next steps
- **createProgressDoc**: Document what works and what's left to build
- **checkMemoryBankExists**: Verify if memory bank directory structure exists
- **createMemoryBankDirectory**: Create the memory-bank directory structure
- **scaffoldMemoryBankStructure**: Create all required subdirectories
- **populateMemoryBankFiles**: Initialize core memory files with available information
- **readMemoryBank**: Load all memory layers from memory-bank/

## Documentation Functions

- **checkDocumentationExists**: Verify if documentation exists for current context
- **scaffoldDocumentationStructure**: Create documentation structure following unified format
- **generateDocumentation**: Create comprehensive documentation for current context
- **selfEvaluateDocumentation**: Score documentation quality on 10-point scale
- **reviewDocumentation**: Perform critical review of documentation on 5-point scale
- **reviseDocumentation**: Improve documentation based on review feedback
- **updateMemoryBank**: Synchronize all memory layers with new information
- **calculateDocumentationQualityScore**: Compute numerical quality score for documentation
- **documentChanges**: Record all changes made during implementation
- **reviewAllFiles**: Examine all modified files for documentation needs
- **documentCurrentState**: Update activeContext.md with current project state
- **clarifyNextSteps**: Document clear next steps in activeContext.md
- **updateProjectRules**: Update project-specific rules

## Implementation Functions

- **executeTask**: Execute a specific implementation task
- **checkMemoryBank**: Review memory bank for relevant context
- **updateDocumentation**: Update documentation with new information
- **updatePlans**: Update .windsurf/plans/ with current implementation details
- **executeImplementation**: Execute the actual implementation work
- **enforceCodeQualityStandards**: Maintain high code quality

## Error Recovery Functions

- **detectToolFailure**: Identify when a tool or process has failed
- **logFailureDetails**: Document detailed error information
- **analyzeFailureCauses**: Determine root causes of failure
- **reviewToolUsage**: Examine how the tool was being used
- **adjustParameters**: Modify parameters to address failure causes
- **executeRetry**: Attempt the operation again with adjusted parameters
- **escalateFailure**: Report the failure to a higher system level
- **documentRecoveryStrategy**: Record successful recovery approach
- **trackErrorPatterns**: Identify recurring error patterns
- **implementErrorPrevention**: Add safeguards to prevent similar errors

## Memory Consistency Functions

- **verifyChecksums**: Verify file integrity using checksums
- **validateHierarchy**: Ensure proper relationships between memory layers
- **validateCrossReferences**: Check that all references between files are valid
- **detectConflicts**: Identify potential conflicts or inconsistencies
- **calculateDrift**: Measure drift between memory files and actual code
- **restoreFromBackup**: Restore memory files from backup when needed
- **rebuildFromLogs**: Reconstruct memory files from task logs and code comments
- **consolidateMemory**: Perform periodic consolidation and cleanup