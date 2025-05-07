# Document Manifest

This file serves as a guide to the location of all project documents, both templates and instantiated documents.

## Templates
All templates are stored in the `templates/` directory with `.md` extension.

## Instantiated Documents
Instantiated documents (documents created from templates) are stored in the `artifacts/` directory, organized by type:

### Project Briefs and Business Analysis
- Location: `artifacts/briefs/`
- Documents:
  - project-brief.md (from templates/project-brief.md)

### Product Requirements
- Location: `artifacts/requirements/`
- Documents:
  - prd.md (from templates/prd.md)
  - epicN.md (from templates/epicN.md)
  - ui-ux-spec.md (from templates/ui-ux-spec.md)

### Architecture and Technical Design
- Location: `artifacts/architecture/`
- Documents:
  - architecture.md (from templates/architecture-templates.md)
  - tech-stack.md
  - api-reference.md
  - data-models.md
  - coding-standards.md
  - environment-vars.md
  - testing-strategy.md
  - project-structure.md

### User Stories
- Location: `artifacts/stories/`
- Documents:
  - Individual story files (from templates/story-template.md)

## Documentation for Developers
The `docs/` directory contains finalized documentation that is referenced by developers:
- api-reference.md
- architecture.md
- coding-standards.md
- data-models.md
- environment-vars.md
- project-structure.md
- testing-strategy.md
- ui-ux-spec.md

## Knowledge References by Agent

### 1-analyst
- templates/project-brief.md

### 2-pm
- templates/prd.md
- templates/epicN.md
- templates/pm-checklist.md
- templates/ui-ux-spec.md
- artifacts/briefs/project-brief.md

### 3-architect
- templates/architect-checklist.md
- templates/architecture-templates.md
- artifacts/architecture/architecture.md
- artifacts/architecture/tech-stack.md

### 4-po-sm
- templates/story-template.md
- templates/po-checklist.md
- templates/story-draft-checklist.md
- artifacts/requirements/prd.md
- artifacts/requirements/epicN.md
- artifacts/architecture/architecture.md
- docs/api-reference.md
- docs/data-models.md
- docs/coding-standards.md
- docs/environment-vars.md
- docs/testing-strategy.md
- docs/project-structure.md
- docs/ui-ux-spec.md

### 5-dev
- artifacts/requirements/prd.md
- artifacts/architecture/architecture.md
- docs/api-reference.md
- artifacts/stories/* (all story files)
- docs/coding-standards.md
- docs/data-models.md
- docs/environment-vars.md
- docs/testing-strategy.md

### 6-docs
- docs/api-reference.md
- templates/story-template.md
- templates/story-draft-checklist.md
- docs/ui-ux-spec.md

### 7-qa
- docs/testing-strategy.md
- artifacts/requirements/prd.md
- artifacts/stories/* (all story files)
- docs/api-reference.md
