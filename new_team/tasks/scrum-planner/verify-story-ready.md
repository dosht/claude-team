# verify-story-ready

## Purpose
Check if story is ready for development by verifying completeness and quality.

## Parameters
- story-id (required) - Which story to verify (e.g., TRAN-001-01)

## Workflow

### 1. Load Story File

**Read:**
- Load story file from docs/product/epics/{epic-id}/{story-id}.md
- Parse frontmatter metadata
- Read all sections

**Verify File:**
- File exists and readable
- Proper structure
- No syntax errors

### 2. Check INVEST Criteria

**Verify Each Criterion:**

**Independent:**
- Can be developed without waiting for other stories?
- No blocking dependencies?
- Self-contained scope?

**Negotiable:**
- Details can be discussed with developer?
- Not over-specified?
- Room for implementation choices?

**Valuable:**
- Clear user or business value?
- Benefits stated in user story?
- Justifies development effort?

**Estimable:**
- Scope clear enough to estimate?
- Complexity understandable?
- Can be sized by developer?

**Small:**
- Completable in 1-3 days?
- Not too large or complex?
- Not too small or trivial?

**Testable:**
- Clear acceptance criteria?
- Testable conditions?
- Clear pass/fail criteria?

**Score:**
- Pass: All criteria met
- Conditional: Minor issues found
- Fail: Major issues block development

### 3. Verify Acceptance Criteria

**Check Quality:**
- All criteria specific and measurable?
- Given/When/Then format used (or equivalent)?
- Cover normal and edge cases?
- No ambiguity?
- Testable by QA?

**Coverage:**
- All aspects of user story covered?
- No gaps in expected behavior?
- Edge cases considered?

**Validation:**
- MUST have at least 2-3 clear criteria
- All must be testable

### 4. Check Dependencies and Blockers

**Dependencies:**
- All dependencies listed?
- Dependency status known?
- Blocking dependencies resolved?
- External dependencies noted?

**Blockers:**
- Any technical blockers?
- Any organizational blockers?
- Any resource constraints?
- Any unclear requirements?

**Status:**
- Green: No blockers
- Yellow: Minor dependencies
- Red: Blocked

### 5. Verify Completeness

**Required Sections:**
- User story statement (As a/I want/So that)
- Acceptance criteria (testable)
- Context section (provides background)
- Metadata (story_id, epic_id, status, dates)

**Optional But Recommended:**
- Technical notes (if constraints exist)
- Dependencies (if any)
- Definition of Done

**Validation:**
- All required sections present and complete
- No placeholders or TODOs

### 6. Assess Development Readiness

**Developer Perspective:**
- Would developer know what to build?
- Are requirements clear?
- Is scope well-defined?
- Is success measurable?

**Readiness Levels:**
- **Ready**: Can start immediately
- **Needs Clarification**: Minor questions need answering
- **Not Ready**: Significant gaps or issues
- **Blocked**: Dependencies prevent development

### 7. Generate Readiness Report

**Report Structure:**
```
Story Readiness Assessment: {story-id}

INVEST Compliance:
- Independent: [PASS/FAIL] [explanation]
- Negotiable: [PASS/FAIL] [explanation]
- Valuable: [PASS/FAIL] [explanation]
- Estimable: [PASS/FAIL] [explanation]
- Small: [PASS/FAIL] [explanation]
- Testable: [PASS/FAIL] [explanation]

Acceptance Criteria: [PASS/CONDITIONAL/FAIL]
- [findings]

Dependencies & Blockers: [GREEN/YELLOW/RED]
- [findings]

Completeness: [COMPLETE/INCOMPLETE]
- [missing sections or issues]

Overall Readiness: [READY/NEEDS_CLARIFICATION/NOT_READY/BLOCKED]

Issues Found:
1. [issue if any]
2. [issue if any]

Recommendations:
1. [recommendation if any]
2. [recommendation if any]
```

## Validation

**Overall Readiness:**
- READY: All checks pass, no issues
- NEEDS_CLARIFICATION: Minor issues, quick fixes
- NOT_READY: Major issues require refinement
- BLOCKED: Dependencies prevent starting

## Error Handling

- IF file not found → Report missing story
- IF major gaps found → Recommend refinement
- IF blockers identified → Escalate to resolve
- IF INVEST fails → Provide specific fix recommendations

## Handoff Contract

**Input:**
- Story ID (string)

**Output:**
- Readiness report (markdown)
- Pass/fail status for each check
- List of issues found
- Recommendations for fixes
- Overall readiness assessment

**Next Agents:**
- developer (if READY)
- scrum-planner (self, if refinement needed using refine-story)

**Trigger Conditions:**
- If READY → Can assign to developer
- If NEEDS_CLARIFICATION or NOT_READY → Refine first
- If BLOCKED → Resolve blockers before development

## Dependencies

**Required for this command:**
- Story file: docs/product/epics/{epic-id}/{story-id}.md
- Story structure template from agents/scrum-planner.md
- INVEST criteria definition

**Optional:**
- Epic README: docs/product/epics/{epic-id}/README.md
- Related stories for dependency checking
