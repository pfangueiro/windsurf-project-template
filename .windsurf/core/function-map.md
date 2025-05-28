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
- **createMemoryBankDirectory**: Create the .augment directory structure
- **scaffoldMemoryBankStructure**: Create all required subdirectories
- **populateMemoryBankFiles**: Initialize core memory files with available information
- **readMemoryBank**: Load all memory layers from .augment/core/

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
- **updatePlans**: Update .augment/plans/ with current implementation details
- **executeImplementation**: Execute the actual implementation work
- **enforceCodeQualityStandards**: Maintain high code quality

## Error Recovery Functions

- **detectToolFailure**: Identify when a tool or process has failed
- **logFailureDetails**: Document detailed error information
- **analyzeFailureCauses**: Determine root causes of failure
- **reviewToolUsage**: Examine how the tool was being used
- **adjustParameters**: Modify parameters to address failure causes
- **executeRetry**: Attempt the operation again with adjusted parameters
- **checkRetrySuccess**: Verify if retry was successful
- **incrementRetryCount**: Increase the retry counter
- **checkRetryLimit**: Check if maximum retry attempts reached
- **escalateToUser**: Prepare detailed context for user intervention
- **documentFailure**: Record failure details in error logs
- **alertUser**: Notify user of unresolved issue

## Evaluation Functions

- **documentObjectiveSummary**: Record clear objectives for evaluation
- **calculatePerformanceScore**: Compute numerical score based on performance standards
- **evaluateAgainstTargetScore**: Compare actual score against required threshold
- **analyzePerformanceGap**: Identify specific areas causing performance shortfall
- **identifyImprovementOpportunities**: Determine specific optimization opportunities
- **implementOptimizations**: Apply targeted improvements to solution
- **recalculatePerformanceScore**: Recompute score after optimizations
- **checkTargetAchieved**: Verify if performance target has been met
- **iterateOptimizationCycle**: Repeat optimization process
- **recordSuccessPatterns**: Document successful optimization patterns
- **documentLessonsLearned**: Record insights gained during optimization

## Self-Critique Functions

- **executeCreatorPhase**: Generate comprehensive initial solution
- **executeCriticPhase**: Identify weaknesses, edge cases, and assumptions
- **executeDefenderPhase**: Address criticisms systematically
- **executeJudgePhase**: Compare original and improved versions
