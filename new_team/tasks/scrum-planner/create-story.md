# create-story

## Purpose
Create individual user story within an epic with clear acceptance criteria.

## Parameters
- epic-id (required) - Which epic this belongs to (e.g., TRAN-001)
- story-description (required) - What this story should accomplish
- user-context (optional) - User role and context

## Workflow

### 1. Gather Story Requirements

**Understand:**
- What needs to be built
- Who is the user
- What value does this provide
- Any constraints or dependencies

**Validation:**
- MUST have clear story purpose
- Ask clarifying questions if ambiguous

### 2. Write User Story

**Format:**
```
As a [user role],
I want [feature/capability],
So that [benefit/value].
```

**Requirements:**
- Clearly state user role
- Clearly state desired capability
- Clearly state business value or benefit

**Validation:**
- MUST include all three components
- Clear and specific

### 3. Create Acceptance Criteria

**Write Criteria:**
- Use Given/When/Then format OR scenario-based
- Make each criterion testable
- Cover normal and edge cases
- Be specific and measurable

**Format Example:**
```
1. **Criterion Name**
   - Given [context/precondition]
   - When [action/trigger]
   - Then [expected outcome]
```

**Validation:**
- MUST be testable and specific
- MUST cover all aspects of user story
- Clear pass/fail conditions

### 4. Verify INVEST Criteria

**Check:**
- **I**ndependent - Can be developed without other stories
- **N**egotiable - Details can be discussed
- **V**aluable - Delivers clear user/business value
- **E**stimable - Size can be estimated (1-3 days)
- **S**mall - Completable in 1-3 days
- **T**estable - Clear acceptance criteria

**Validation:**
- MUST pass all INVEST criteria
- Split if too large, combine if too small

### 5. Add Context and Notes

**Context Section:**
- Additional background information
- User scenarios
- Related features or workflows

**Technical Notes (Optional):**
- Technical constraints
- Architectural considerations
- Suggested approach (non-prescriptive)
- Integration points

**Dependencies:**
- List blocking dependencies
- Reference other stories if needed

### 6. Create Story File

**Create:**
- File: docs/product/epics/{epic-id}/{story-id}.md
- Use story structure template
- Include YAML frontmatter with metadata
- Follow consistent formatting

**Metadata:**
```yaml
story_id: EPIC-XXX-YY
epic_id: EPIC-XXX
title: Short title
status: ready
assigned: unassigned
created: YYYY-MM-DD
updated: YYYY-MM-DD
```

### 7. Link to Epic

**Update:**
- Add story to epic README story list
- Include story ID and title
- Maintain story order

### 8. Present for Approval

**Show:**
- Complete story file
- INVEST verification
- Link to epic

## Validation

**Before completing, MUST verify:**
- Clear user story statement (As a/I want/So that)
- Testable acceptance criteria
- INVEST criteria met
- Story file created in proper location
- Linked to epic README

**If validation fails:**
- Fix issues immediately
- Re-verify before presenting

## Error Handling

- IF user role unclear → Ask for clarification
- IF acceptance criteria not testable → Refine criteria
- IF story too large → Break into smaller stories
- IF dependencies unclear → Document and clarify

## Handoff Contract

**Input:**
- Epic ID (string)
- Story description (text)
- User context (optional text)

**Output:**
- Story file at docs/product/epics/{epic-id}/{story-id}.md
- Story follows template structure
- Contains: user story, acceptance criteria, context, metadata
- INVEST-compliant
- Linked in epic README

**Next Agents:**
- developer (when story assigned for implementation)
- scrum-planner (self, if refinement needed)

**Trigger Conditions:**
- Story created AND ready for development
- Human assigns story to developer

## Dependencies

**Required for this command:**
- Story structure template from agents/scrum-planner.md
- Epic directory: docs/product/epics/{epic-id}/
- Epic README: docs/product/epics/{epic-id}/README.md
- Project config: project-config.yaml

**Optional:**
- Related stories in same epic
- PRD: docs/product/PRD.md
