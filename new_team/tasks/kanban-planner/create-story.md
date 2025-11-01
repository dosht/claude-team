# create-story

## Purpose
Create individual ready-to-pull user story just-in-time for continuous flow.

## Parameters
- story-description (required) - What this story is about
- epic-id (optional) - Link to epic theme if applicable
- priority (optional) - high/medium/low

## Workflow

### 1. Gather Story Context

**Understand Need:**
- Clarify what user needs
- Identify user role and value
- Determine acceptance criteria scope
- Understand urgency and priority

**Validation:**
- MUST have clear user need before proceeding
- Ask clarifying questions if ambiguous

### 2. Write User Story

**Format:**
- Use standard "As a/I want/So that" format
- Focus on user value, not implementation
- Keep scope minimal but valuable
- Ensure story is independent

**Validation:**
- MUST follow standard user story format
- MUST articulate clear user value

### 3. Create Acceptance Criteria

**Define Done:**
- Write testable acceptance criteria
- Use Given/When/Then format
- Cover happy path and key edge cases
- Keep minimal but sufficient

**Validation:**
- MUST have at least 2-3 acceptance criteria
- Criteria must be testable
- Avoid over-specification

### 4. Verify INVEST

**Check Story Quality:**
- Independent - Can be developed standalone
- Negotiable - Details can be discussed
- Valuable - Delivers user/business value
- Estimable - Size can be estimated
- Small - Typically 1-3 days
- Testable - Clear acceptance criteria

**Validation:**
- MUST meet all INVEST criteria
- Refine if criteria not met

### 5. Size Story

**Estimate Effort:**
- Assess implementation complexity
- Target 1-3 days typically
- Break down if too large
- Verify fits in continuous flow

**Validation:**
- MUST NOT be too large for quick delivery
- Split if needed

### 6. Create Story File

**Generate File:**
- Create story ID (auto-increment or from project convention)
- Create {story-id}.md file
- Use story template structure
- Set status to "ready"
- Add to appropriate location (epic or backlog)

**Validation:**
- MUST follow story template
- File created in correct location

### 7. Mark Ready for Pull

**Finalize:**
- Verify no blockers or dependencies
- Confirm story is pull-ready
- Add to prioritized backlog
- Notify if high priority

**Validation:**
- MUST be immediately actionable
- No dependencies blocking work

## Validation

**Before completing, MUST verify:**
- Story follows INVEST criteria
- Acceptance criteria clear and testable
- Story file created with all required fields
- Status marked as "ready"
- No blocking dependencies
- Appropriately sized (1-3 days)

**If validation fails:**
- Refine story until INVEST-compliant
- Add missing acceptance criteria
- Resolve or document dependencies

## Error Handling

- IF story too large → Break into multiple stories
- IF dependencies exist → Document clearly and assess impact
- IF acceptance criteria unclear → Ask clarifying questions
- IF no clear user value → Refine story purpose

## Handoff Contract

**Input:**
- Story description (text)
- Epic ID (optional)
- Priority (optional)
- Any context or constraints

**Output:**
- Story file at docs/product/backlog/{story-id}.md or docs/product/epics/{epic-id}/{story-id}.md
- Complete user story with acceptance criteria
- Status: ready
- INVEST-compliant
- Pull-ready (no blockers)

**Next Agents:**
- developer (when story pulled for implementation)
- kanban-planner (self, if grooming needed)

**Trigger Conditions:**
- Story ready AND team has capacity
- Human assigns story to developer

## Dependencies

**Required for this command:**
- Story structure template from agents/kanban-planner.md
- Project config: project-config.yaml
- Product directory: docs/product/

**Optional:**
- Existing backlog: docs/product/backlog/
- Epic themes: docs/product/epics/
- Product overview: docs/product/README.md
