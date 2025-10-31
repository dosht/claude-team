# plan-sprint

## Purpose
Select and verify stories for upcoming sprint, ensuring sprint commitment is achievable.

## Parameters
- sprint-number (required) - Sprint identifier (e.g., "Sprint 12")
- sprint-duration (optional) - Sprint length in weeks (default: 2)
- team-capacity (optional) - Available team capacity in days

## Workflow

### 1. Gather Sprint Context

**Understand Constraints:**
- Clarify sprint number and dates
- Determine team capacity (velocity, availability)
- Understand sprint goal or theme
- Identify any sprint constraints (holidays, dependencies)

**Validation:**
- MUST have clear sprint goal before proceeding
- MUST know team capacity
- Ask clarifying questions if ambiguous

### 2. Review Available Stories

**Load Backlog:**
- Load all sprint-ready stories from docs/product/backlog/
- Load stories from epics in docs/product/epics/
- Filter for status: ready
- Review story priorities

**Validation:**
- MUST verify stories are sprint-ready (not draft or blocked)
- Stories must have clear acceptance criteria

### 3. Verify Dependencies

**Check Story Dependencies:**
- Review dependencies in each story
- Verify prerequisite stories completed or in sprint
- Identify cross-story dependencies
- Flag any blockers

**Validation:**
- MUST ensure dependencies satisfied or planned
- Escalate blocked stories

### 4. Check Team Capacity

**Capacity Planning:**
- Calculate total story effort (sum of estimates)
- Compare to team capacity
- Account for sprint overhead (ceremonies, etc.)
- Ensure sustainable pace

**Validation:**
- MUST NOT overcommit team capacity
- Leave buffer for unknowns (typically 20%)

### 5. Validate Sprint Commitment

**Achievability Check:**
- Verify story sizes fit within sprint
- Check no story exceeds reasonable size (3 days max)
- Ensure stories align with sprint goal
- Validate complete user value delivered

**Validation:**
- MUST ensure sprint goal achievable
- All stories completable within sprint

### 6. Create Sprint Backlog

**Generate Backlog:**
- Create sprint directory: docs/product/sprints/sprint-{N}/
- Create sprint README with:
  * Sprint goal
  * Sprint dates
  * Team capacity
  * Ordered list of committed stories
  * Known risks or dependencies
- Link story files to sprint

**Validation:**
- MUST have clear sprint goal
- Stories ordered by priority
- Complete and ready for development

### 7. Present Sprint Plan

**Show:**
- Sprint goal and dates
- Committed stories (ordered)
- Total capacity vs. commitment
- Risks and dependencies
- Sprint backlog location

**Get Approval:**
- Present plan to human for review
- Adjust if needed based on feedback
- Finalize sprint commitment

## Validation

**Before completing, MUST verify:**
- Sprint goal clear and achievable
- All committed stories sprint-ready
- Dependencies satisfied or planned
- Team capacity not exceeded
- Sprint backlog created
- Stories ordered by priority

**If validation fails:**
- Adjust story selection
- Re-verify capacity
- Escalate if cannot resolve

## Error Handling

- IF capacity exceeded → Remove lowest priority stories
- IF dependencies not satisfied → Adjust story selection or flag blockers
- IF stories too large → Request story refinement
- IF sprint goal unclear → Ask clarifying questions

## Handoff Contract

**Input:**
- Sprint number and duration
- Team capacity (optional, can ask)
- Sprint goal (optional, can ask)
- Available sprint-ready stories from backlog

**Output:**
- Sprint directory at docs/product/sprints/sprint-{N}/
- Sprint README.md with goal, dates, capacity, story list
- Ordered sprint backlog with committed stories
- Risk and dependency documentation

**Next Agents:**
- developer (when sprint starts and stories assigned)
- scrum-planner (self, if adjustments needed)

**Trigger Conditions:**
- Sprint plan approved by human
- Sprint starts and stories assigned to developers

## Dependencies

**Required for this command:**
- Sprint-ready stories from docs/product/backlog/ or docs/product/epics/
- Project config: project-config.yaml
- Product directory: docs/product/

**Optional:**
- Previous sprint data: docs/product/sprints/
- Team velocity history
- PRD: docs/product/PRD.md
