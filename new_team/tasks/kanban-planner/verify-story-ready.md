# verify-story-ready

## Purpose
Check if story is ready to pull into active work for immediate implementation.

## Parameters
- story-id (required) - ID of story to verify

## Workflow

### 1. Load Story

**Read Story:**
- Load story file from provided story-id
- Review all story fields
- Check current status
- Review last update timestamp

**Validation:**
- MUST verify story exists
- Note current state

### 2. Verify INVEST Criteria

**Check Story Quality:**

**Independent:**
- Can be developed without depending on incomplete work
- No hard coupling to other stories
- Standalone implementation possible

**Negotiable:**
- Details can be discussed with team
- Not over-specified
- Room for implementation decisions

**Valuable:**
- Delivers clear user or business value
- Value articulated in story statement
- Not just technical tasks

**Estimable:**
- Team can estimate effort
- Scope clear enough to size
- No major unknowns

**Small:**
- Typically completable in 1-3 days
- Fits continuous flow model
- Not too large for quick delivery

**Testable:**
- Clear acceptance criteria exist
- Criteria are verifiable
- "Done" is unambiguous

**Validation:**
- MUST check all INVEST criteria
- Document which criteria met/not met

### 3. Check Acceptance Criteria

**Verify Criteria Quality:**
- At least 2-3 acceptance criteria exist
- Criteria use Given/When/Then or similar testable format
- Criteria cover key scenarios
- Criteria are unambiguous
- Criteria can be verified

**Validation:**
- MUST have testable acceptance criteria
- Criteria sufficient for implementation

### 4. Identify Blockers

**Check Dependencies:**
- Review story dependencies list
- Verify prerequisite work completed
- Check for external dependencies
- Assess if dependencies block immediate work

**Technical Blockers:**
- Required infrastructure exists
- No architectural unknowns
- Team has necessary skills
- Tools/libraries available

**Validation:**
- MUST identify all blockers
- Blockers prevent pull-ready status

### 5. Assess Immediacy

**Pull-Ready Check:**
- Can work start immediately?
- All information available?
- No questions needing answers?
- Team capacity available?

**Validation:**
- MUST be actionable now, not future

### 6. Review Story Size

**Size Check:**
- Verify story fits continuous flow (typically 1-3 days)
- Not too large for WIP limits
- Not too small (could be combined)
- Appropriate for just-in-time delivery

**Validation:**
- MUST be appropriately sized
- Recommend splitting if too large

### 7. Generate Readiness Report

**Create Report:**
- Status: Ready / Not Ready / Needs Grooming
- INVEST criteria assessment (each criterion)
- Acceptance criteria quality assessment
- Blockers identified (if any)
- Recommendations:
  * If ready → OK to pull
  * If not ready → Specific actions needed
  * If needs grooming → Suggest story-grooming command

**Validation:**
- MUST provide clear verdict
- MUST provide actionable recommendations

### 8. Present Report

**Show:**
- Overall readiness status
- Detailed INVEST assessment
- Blocker list
- Recommendations
- Next steps

**If Not Ready:**
- Offer to groom story now
- Explain what's needed to become ready
- Estimate grooming effort

## Validation

**Before completing, MUST verify:**
- Story loaded and reviewed
- All INVEST criteria checked
- Acceptance criteria evaluated
- Blockers identified
- Size assessed
- Readiness report generated
- Clear recommendation provided

**If validation fails:**
- Complete missing checks
- Ensure report is comprehensive

## Error Handling

- IF story-id not found → Ask user to verify ID or path
- IF story has no acceptance criteria → Mark as "Needs Grooming"
- IF major blockers → Mark as "Not Ready", recommend resolution
- IF story too large → Recommend splitting before pull

## Handoff Contract

**Input:**
- Story ID

**Output:**
- Readiness report with:
  * Overall status (Ready/Not Ready/Needs Grooming)
  * INVEST criteria assessment
  * Acceptance criteria quality check
  * Blocker list
  * Size assessment
  * Specific recommendations
  * Next steps

**Next Agents:**
- developer (if story ready and pulled)
- kanban-planner (self, if grooming recommended via story-grooming command)
- human (if blockers need resolution)

**Trigger Conditions:**
- IF ready → Story can be pulled by developer
- IF needs grooming → Invoke story-grooming
- IF not ready → Resolve blockers first

## Dependencies

**Required for this command:**
- Story file at docs/product/backlog/{story-id}.md or docs/product/epics/{epic-id}/{story-id}.md
- Story structure template from agents/kanban-planner.md
- Project config: project-config.yaml

**Optional:**
- Dependency stories (to verify completion)
- Team capacity data
- WIP limits
