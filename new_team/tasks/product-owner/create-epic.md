# create-epic

## Purpose
Create epic with story breakdown and directory structure for complete user journey.

## Parameters
- epic-description (required) - What this epic is about
- user-journey (optional) - Complete user journey this epic covers

## Workflow

### 1. Gather Requirements

**Understand Scope:**
- Clarify epic purpose and goals
- Identify user journeys involved
- Determine success criteria
- Understand business value

**Validation:**
- MUST have clear epic purpose before proceeding
- Ask clarifying questions if ambiguous

### 2. Identify User Journeys

**Map Workflows:**
- Identify complete end-to-end user workflows
- Document user roles and scenarios
- Map touchpoints and interactions
- Identify gaps or missing steps

**Validation:**
- MUST cover complete user journeys
- No gaps in workflows

### 3. Break Down Into Stories

**Create Stories:**
- Break epic into individual stories
- Apply INVEST criteria to each story
- Write user story statements
- Ensure each story is independent and valuable

**Size Stories:**
- Verify each story is 1-3 days effort
- Split if too large
- Combine if too small
- Balance scope and value

**Validation:**
- MUST ensure all stories are INVEST compliant
- MUST verify complete epic coverage

### 4. Create Directory Structure

**Setup:**
- Create epic directory: docs/product/epics/{epic-id}/
- Verify parent directory exists
- Follow project structure conventions

### 5. Write Epic README

**Content:**
- Epic overview and description
- Goals and success criteria
- User journeys covered
- List of stories with IDs
- Dependencies (if any)

**Validation:**
- MUST include all key information
- Clear and comprehensive

### 6. Create Story Files

**For Each Story:**
- Create {story-id}.md in epic directory
- Follow story structure template
- Write user story statement
- Create testable acceptance criteria
- Add context and technical notes
- Include dependencies

**Validation:**
- MUST follow story template exactly
- All stories have testable acceptance criteria

### 7. Verify Coverage

**Check:**
- All user journeys covered
- No gaps in workflows
- All stories link to epic
- Complete and coherent

### 8. Present for Approval

**Show:**
- Epic directory structure
- Epic README
- All story files
- Coverage analysis

## Validation

**Before completing, MUST verify:**
- Epic README created with clear goals
- Individual file for each story
- All stories INVEST-compliant
- Complete user journey coverage
- Proper directory structure

**If validation fails:**
- Fix issues before presenting
- Re-verify after changes

## Error Handling

- IF user journey unclear → Ask clarifying questions
- IF stories too large → Break down further
- IF gaps identified → Add missing stories
- IF dependencies found → Document in epic README

## Handoff Contract

**Input:**
- Epic description (text)
- User journey (optional text)
- Business goals (optional)

**Output:**
- Epic directory at docs/product/epics/{epic-id}/
- Epic README.md with overview and story list
- Story files: {story-id}.md for each story
- All stories INVEST-compliant

**Next Agents:**
- developer (when stories assigned for implementation)
- product-owner (self, if refinement needed)

**Trigger Conditions:**
- Epic complete AND stories ready for development
- Human assigns story to developer

## Dependencies

**Required for this command:**
- Story structure template from agents/product-owner.md
- Project config: project-config.yaml
- Product directory: docs/product/

**Optional:**
- Existing epics: docs/product/epics/
- PRD: docs/product/PRD.md
