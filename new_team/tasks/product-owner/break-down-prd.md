# break-down-prd

## Purpose
Transform PRD into complete epic and story structure covering all requirements.

## Parameters
- prd-file (required) - Path to PRD file (e.g., docs/product/PRD.md)

## Workflow

### 1. Read and Analyze PRD

**Load:**
- Read complete PRD file
- Understand product vision
- Identify key features
- Note requirements and constraints

**Analyze:**
- Group related features
- Identify major themes
- Map user journeys
- Understand dependencies

### 2. Identify Epics

**Extract Themes:**
- Identify major features or themes
- Each epic should represent significant value
- Epic scope: 1-3 weeks of work
- Ensure epics are cohesive

**Define Epics:**
- Create epic name and ID
- Write epic description
- Define epic goals
- Identify user journeys covered

**Validation:**
- MUST cover all major PRD themes
- Epic scope appropriate (1-3 weeks)

### 3. Break Epics Into Stories

**For Each Epic:**
- Break down into individual stories
- Apply INVEST criteria
- Write user story statements
- Create acceptance criteria
- Size appropriately (1-3 days each)

**Coverage:**
- Ensure all PRD requirements mapped
- No gaps in functionality
- Complete user journeys

**Validation:**
- MUST ensure all stories are INVEST-compliant
- All PRD requirements covered

### 4. Create Directory Structure

**Setup:**
- Create docs/product/epics/ (if not exists)
- Create directory for each epic
- Follow naming conventions

**Structure:**
```
docs/product/epics/
  ├── EPIC-001/
  │   ├── README.md
  │   ├── STORY-001-01.md
  │   ├── STORY-001-02.md
  │   └── ...
  ├── EPIC-002/
  │   ├── README.md
  │   └── ...
```

### 5. Write Epic READMEs

**For Each Epic:**
- Write overview and description
- Define goals and success criteria
- List user journeys covered
- List all stories with IDs and titles
- Note dependencies between epics

**Validation:**
- MUST be comprehensive and clear
- All stories listed

### 6. Create Story Files

**For Each Story:**
- Create story file in epic directory
- Follow story structure template
- Write user story statement
- Create testable acceptance criteria
- Add context and technical notes
- Include dependencies

**Validation:**
- MUST follow template exactly
- All stories have acceptance criteria

### 7. Verify PRD Coverage

**Check:**
- All PRD requirements mapped to stories
- No missing features or functionality
- Complete user journeys covered
- Dependencies documented

**Cross-Reference:**
- Map each PRD section to stories
- Identify any gaps
- Add missing stories if needed

### 8. Present Complete Structure

**Show:**
- Directory structure
- List of epics with descriptions
- Story count per epic
- Coverage analysis
- Dependencies and ordering

## Validation

**Before completing, MUST verify:**
- All PRD requirements covered
- Complete epic and story structure
- All stories INVEST-compliant
- All files created properly
- No gaps in functionality

**Coverage Checklist:**
- All major features → Epics
- All requirements → Stories
- All user journeys → Complete
- Dependencies → Documented

**If validation fails:**
- Add missing stories or epics
- Fix structure issues
- Re-verify coverage

## Error Handling

- IF PRD unclear → Ask for clarification
- IF scope too large → Break into phases
- IF dependencies complex → Document clearly
- IF requirements conflict → Escalate to human

## Handoff Contract

**Input:**
- PRD file at specified path
- Must contain: features, requirements, user journeys
- Optional: technical constraints, business goals

**Output:**
- Complete epic structure at docs/product/epics/
- Epic README for each epic
- Story files for all stories
- All epics and stories properly structured
- Coverage mapping to PRD

**Next Agents:**
- developer (when stories assigned for implementation)
- product-owner (self, if refinement needed)

**Trigger Conditions:**
- PRD breakdown complete
- Human assigns stories to developer

## Dependencies

**Required for this command:**
- PRD file at specified path
- Story structure template from agents/product-owner.md
- Project config: project-config.yaml
- Product directory: docs/product/

**Optional:**
- Existing epics: docs/product/epics/
- Architecture docs: docs/arc42/
