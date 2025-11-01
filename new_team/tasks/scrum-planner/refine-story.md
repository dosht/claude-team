# refine-story

## Purpose
Update story based on feedback, clarification, or changed requirements while maintaining quality.

## Parameters
- story-id (required) - Which story to refine (e.g., TRAN-001-01)
- feedback (required) - What needs to change or be clarified

## Workflow

### 1. Load Current Story

**Read:**
- Load story file from docs/product/epics/{epic-id}/{story-id}.md
- Read current user story statement
- Read current acceptance criteria
- Review current context and notes

**Understand:**
- What is currently defined
- What feedback is requesting
- Why change is needed

### 2. Understand Refinement Needs

**Analyze Feedback:**
- Identify what needs to change
- Determine if acceptance criteria need update
- Check if scope is affected
- Identify if additional context needed

**Ask Questions:**
- Clarify ambiguous feedback
- Understand new requirements
- Verify scope boundaries
- Confirm expected outcome

**Validation:**
- MUST understand feedback completely before proceeding

### 3. Update Story Components

**User Story:**
- Update if user, want, or benefit changes
- Keep format: As a/I want/So that
- Ensure still clear and valuable

**Acceptance Criteria:**
- Add new criteria if needed
- Update existing criteria for clarity
- Remove if no longer applicable
- Ensure all still testable

**Context:**
- Add clarifying information
- Update scenarios if changed
- Provide additional background

**Technical Notes:**
- Update constraints if changed
- Add new technical considerations
- Keep non-prescriptive

**Dependencies:**
- Add new dependencies
- Update status of existing
- Remove if resolved

### 4. Re-verify INVEST Criteria

**Check:**
- **I**ndependent - Still independent?
- **N**egotiable - Details still negotiable?
- **V**aluable - Still valuable?
- **E**stimable - Still estimable?
- **S**mall - Still 1-3 days? (split if too large)
- **T**estable - Acceptance criteria still testable?

**Validation:**
- MUST pass all INVEST criteria after refinement
- If fails, adjust scope or split

### 5. Update Story File

**Modify:**
- Update story file with refined content
- Update "updated" date in frontmatter
- Maintain template structure
- Preserve version history (git)

**Validation:**
- MUST maintain complete structure
- All required sections present

### 6. Verify Completeness

**Check:**
- All feedback addressed
- Story still clear and complete
- Acceptance criteria still testable
- No gaps or ambiguities

**Epic Alignment:**
- Still fits in epic
- Epic README updated if title changed
- Dependencies still valid

### 7. Present Changes

**Show:**
- Git diff of changes
- Explanation of what changed and why
- INVEST re-verification
- Impact on related stories (if any)

## Validation

**Before completing, MUST verify:**
- All feedback addressed
- Story structure maintained
- INVEST criteria met
- Acceptance criteria testable
- File updated correctly

**If validation fails:**
- Fix issues before presenting
- Re-verify after fixes

## Error Handling

- IF feedback unclear → Ask clarifying questions
- IF scope grows too large → Split into multiple stories
- IF conflicts with other stories → Escalate for resolution
- IF architectural change needed → Escalate to Architect

## Handoff Contract

**Input:**
- Story ID (string)
- Feedback (text describing needed changes)
- Source: developer, tech-lead, architect, manual-tester, or human

**Output:**
- Updated story file at docs/product/epics/{epic-id}/{story-id}.md
- Maintains template structure
- INVEST-compliant
- All feedback addressed
- Updated timestamp

**Next Agents:**
- developer (if story being reimplemented)
- scrum-planner (self, if more refinement needed)

**Trigger Conditions:**
- Refinement complete AND story ready
- Human assigns back to developer if needed

## Dependencies

**Required for this command:**
- Existing story file: docs/product/epics/{epic-id}/{story-id}.md
- Story structure template from agents/scrum-planner.md
- Epic README: docs/product/epics/{epic-id}/README.md

**Optional:**
- Related stories in same epic
- Feedback from other agents (tech-lead, architect, manual-tester)
- Architecture docs: docs/arc42/
