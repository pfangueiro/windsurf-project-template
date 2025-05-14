# Trigger Examples Guide

This document provides examples of how to use triggers naturally in conversation to activate specific agents and commands without explicitly using the `@` syntax.

## Agent Activation Through Natural Conversation

### Business Analyst (BA)

These phrases will activate the BA agent:

```
We should analyze the user requirements for this feature.
What's the business value of implementing this?
Let's discuss the market analysis for this product.
We need to clarify the feature description.
I'm concerned about a requirement change that might affect our roadmap.
```

### Project Manager (PM)

These phrases will activate the PM agent:

```
What's our timeline for delivery?
Are there any dependencies we need to address?
How should we handle resource allocation for this sprint?
Can you help with risk management for this feature?
This change might have project impact we need to consider.
We need to adjust the schedule to accommodate this change.
```

### Solution Architect (Architect)

These phrases will activate the Architect agent:

```
Let's assess the technical feasibility of this approach.
Which design patterns would work best here?
How will this affect our overall architecture?
We need to be careful about technical debt.
This implementation change needs architectural review.
How will this requirement impact our system design?
```

### Product Owner (PO)

These phrases will activate the PO agent:

```
We should reconsider the feature priority for the next sprint.
Let's define acceptance criteria for this story.
How does this fit into our existing user stories?
What's the value proposition for customers?
Let's conduct a requirement review before proceeding.
We might need to adjust this story based on user feedback.
```

### Scrum Master (ScrumMaster)

These phrases will activate the Scrum Master agent:

```
How can we improve our sprint planning process?
What impediments are blocking the team?
We should look at team facilitation techniques for this issue.
What process improvements could help us here?
Let's adjust our workflow to address this challenge.
```

### Developer

These phrases will activate the Developer agent:

```
What's the best implementation approach for this feature?
We need to follow our coding standards.
Are there technical constraints we should be aware of?
This area needs refactoring before we add new features.
We should assess the code impact of this change.
```

### Documentation Specialist (Docs)

These phrases will activate the Docs agent:

```
We need to update the documentation for this feature.
These API changes need to be documented.
How should we present this in user-facing content?
Let's improve the technical documentation for this component.
This documentation update should be prioritized.
```

### Quality Assurance (QA)

These phrases will activate the QA agent:

```
How testable is this feature?
We need a comprehensive test plan for this area.
Are there quality risks we haven't addressed?
Let's assess the regression impacts of this change.
We should update our test cases for this component.
```

## Natural Command Activation

### Memory Bank Updates

These phrases will trigger the UMB command:

```
Let's update the memory bank with our progress.
We should record this in the project memory.
Update our context with these decisions.
```

### Task Management

These phrases will trigger task-related commands:

```
We need to create a new task for implementing the login feature.
Let's create a task for fixing this bug.
Update the status of that analytics task to in-progress.
I'm changing the status of TASK-123 to completed.
```

### Test Management

These phrases will trigger test-related commands:

```
We should create a test for validating email formats.
Let's add a new test for the authentication flow.
Run the unit tests for the user profile component.
We need to execute integration tests for the payment system.
```

### Requirement Review

These phrases will trigger the requirement review workflow:

```
We need to analyze the requirement for adding weather API integration.
Let's review how the new SSO requirement affects our system.
```

### Report Generation

These phrases will trigger report generation:

```
Generate a report for the login feature implementation.
Let's create a report for story ST-456.
We need a completion report for that epic.
```

## Combining Multiple Triggers

When your message contains multiple trigger keywords, the system will prioritize responses based on relevance. For example:

```
We need to assess the technical feasibility of implementing this feature and update our documentation accordingly.
```

This would trigger both the Architect and Docs agents, with priority given to the most relevant one based on context.

## Transition Between Agents

You can naturally transition between agents in conversation:

```
First, let's analyze the user requirements for this feature. Now regarding the technical implementation, what's the best approach?
```

This would first trigger the BA agent and then transition to the Developer agent.
