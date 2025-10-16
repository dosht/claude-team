# report-bugs

## Purpose
Document found issues with detailed reproduction steps and return to developer for fixes.

## Parameters
- story-id (required) - Story identifier (e.g., TRAN-001-01)
- bugs (required) - List of bugs found during testing

## Workflow

### 1. Load Context

**Read:**
- Story file from docs/product/stories/{story-id}.md
- Review test results that identified bugs
- Understand acceptance criteria affected

### 2. Analyze Each Bug

**For Each Bug Found:**

**Understand:**
- What went wrong
- Which acceptance criterion affected
- How severe the issue is

**Classify Severity:**
- **Critical:** Application crashes, data loss, security issue, feature completely broken
- **Major:** Feature doesn't meet acceptance criteria, significant functionality broken
- **Minor:** UI issue, edge case problem, minor deviation from expected behavior

### 3. Document Bug Details

**For Each Bug, Create Report:**

**Bug ID:**
- Format: BUG-{story-id}-{number}
- Example: BUG-TRAN-001-01-01

**Description:**
- Clear, concise description of issue
- State the problem, not the solution

**Steps to Reproduce:**
- Exact steps to reproduce bug
- Must be specific enough for developer to follow
- Include any preconditions or setup

**Expected Behavior:**
- What should happen (from acceptance criteria)

**Actual Behavior:**
- What actually happens
- Be specific and factual

**Acceptance Criterion Affected:**
- Which criterion is not met
- Quote exact criterion text

**Environment (if relevant):**
- Browser and version
- Operating system
- URL or page tested
- Test data used

**Additional Notes:**
- Screenshots or recordings if helpful
- Related bugs or patterns
- Suggestions (optional)

### 4. Format Bug Reports

**Use Standard Template:**

```markdown
## Bug Report

### BUG-{story-id}-{number}

**Severity:** Critical | Major | Minor

**Description:**
[Clear description of the issue]

**Steps to Reproduce:**
1. [Exact step]
2. [Exact step]
3. [Exact step]

**Expected Behavior:**
[What should happen per acceptance criteria]

**Actual Behavior:**
[What actually happens]

**Acceptance Criterion Affected:**
[Which criterion this violates]

**Environment:**
- Browser: [if relevant]
- OS: [if relevant]
- URL: [where tested]

**Additional Notes:**
[Any other relevant information]
```

### 5. Add to Story File

**Append to Story:**
- Add all bug reports under "## Bugs Found"
- Include complete details for each bug
- Organize by severity if multiple bugs

**Update Story Status:**
- Mark story as "testing-failed"
- Include bug count in status

### 6. Present Bug Report

**Communicate to Human:**
- Summary of bugs found
- Severity breakdown (X critical, Y major, Z minor)
- Recommendation to return to developer

**Highlight Critical Issues:**
- Emphasize blocking or critical bugs
- Explain impact on acceptance criteria

### 7. Return to Developer

**Trigger Developer:**
- Use developer's fix-issues command
- Provide bug reports as input
- Developer will prioritize and fix bugs

**Handoff:**
- All bugs documented with reproduction steps
- Clear which acceptance criteria not met
- Story ready for developer to fix

## Validation

**Before completing, MUST verify:**
- Every bug has reproduction steps
- Expected vs actual behavior documented
- Severity assigned to each bug
- Acceptance criteria affected identified
- Bug reports added to story file
- Story status updated

**If validation fails:**
- Add missing details
- Clarify reproduction steps
- Do not proceed with incomplete bug reports

## Error Handling

- IF unable to reproduce bug consistently → Document as intermittent, provide best steps
- IF unsure of severity → Default to Major, let team triage
- IF bug might be by design → Escalate to Product Owner before reporting

## Handoff Contract

**Input:**
- Story file at docs/product/stories/{story-id}.md
- Must contain: test results showing failures
- Bugs parameter: list of issues found

**Output:**
- Bug reports appended to story file under "## Bugs Found"
- Each bug contains:
  - Bug ID
  - Severity (critical/major/minor)
  - Description
  - Steps to reproduce
  - Expected vs actual behavior
  - Acceptance criterion affected
  - Environment details
- Story status updated to "testing-failed"

**Next Agents:**
- developer - Fix bugs using fix-issues command
- After fixes, manual-tester re-triggered with test-story command

**Trigger Conditions:**
- Bug reports complete with all required details
- All bugs from testing documented

## Dependencies

**Required for this command:**
- Story file: docs/product/stories/{story-id}.md
- Test results showing which tests failed
- Project config: project-config.yaml

**Optional:**
- Screenshots or recordings of bugs (if captured)
