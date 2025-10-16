# test-story

## Purpose
Complete testing workflow for a story including planning, execution, and reporting.

## Parameters
- story-id (required) - Story identifier (e.g., TRAN-001-01)

## Workflow

### 1. Load Context

**Read:**
- Story file from docs/product/stories/{story-id}.md
- Focus on acceptance criteria, user story, implementation notes
- Load developer-guide/ for testing standards if available

**Understand:**
- What feature was implemented
- What acceptance criteria must be verified
- What user experience is expected

### 2. Create Test Plan

**Design Test Cases:**
- For each acceptance criterion, create test cases covering:
  - Happy path (normal flow)
  - Error cases (what can go wrong)
  - Edge cases (boundary conditions)

**Format:**
```
Test Case: [Name]
Preconditions: [Setup needed]
Steps:
1. [Action]
2. [Action]
3. [Action]
Expected Result: [What should happen]
Acceptance Criterion: [Which criterion this tests]
```

**Validate:**
- Every acceptance criterion has test cases
- Error scenarios included
- Steps are specific and repeatable

### 3. Document Test Plan

**Add to Story:**
- Append test plan to story file under "## Test Plan"
- Include all test cases
- Present plan to human for review

### 4. Set Up Environment

**Verify:**
- Application is running and accessible
- Test data available if needed
- Tools ready (browser, dev tools, etc.)

### 5. Execute Tests Systematically

**Run Each Test Case:**
- Follow test plan step-by-step
- Document pass/fail for each case
- Capture specific details of failures
- Test both happy path and error scenarios

**Verify Acceptance Criteria:**
- Check each criterion against test results
- Mark as passed or failed
- Document observations

### 6. Test Quality Aspects

**Additional Checks (if applicable):**
- Responsiveness on different screen sizes
- Basic accessibility (keyboard navigation, screen reader)
- Performance (page load, interactions)
- Cross-browser compatibility (if critical)

### 7. Document Results

**Add to Story:**
- Append test results under "## Test Results"
- Include:
  - Test case outcomes (pass/fail)
  - Overall test status
  - Observations and findings
  - Tested date and tester name

### 8. Report Outcome

**If All Tests Passed:**
- Mark story as test-approved
- Document approval in story file
- Continue workflow (wait for other parallel reviews)

**If Bugs Found:**
- Create detailed bug reports using report-bugs command
- Add bug reports to story file
- Return to developer with fix-issues command

## Validation

**Before completing, MUST verify:**
- Test plan created and documented
- All test cases executed
- Every acceptance criterion verified
- Results documented in story file
- Decision made (approve OR report bugs)

**If validation fails:**
- Complete missing test cases
- Document incomplete areas
- Do not approve with gaps in testing

## Error Handling

- IF acceptance criteria unclear → Escalate to Product Owner
- IF application crashes/not working → Report as critical bug to Developer
- IF unable to test (env issues) → Escalate to Developer or human
- IF requirements contradict implementation → Escalate to Product Owner

## Handoff Contract

**Input:**
- Story file at docs/product/stories/{story-id}.md
- Must contain: story_id, title, acceptance_criteria, implementation_notes
- Running application to test

**Output (if passed):**
```yaml
test_status: "passed"
test_plan: [documented in story file]
results: [all test cases with outcomes]
observations: [additional findings]
tested_date: [date]
tester: "Quinn"
```

**Output (if failed):**
```yaml
test_status: "failed"
bugs_found:
  - id: [bug identifier]
  - severity: critical | major | minor
  - description: [what's wrong]
  - steps_to_reproduce: [exact steps]
  - expected_behavior: [what should happen]
  - actual_behavior: [what actually happens]
  - acceptance_criterion_affected: [which criterion]
```

**Next Agents:**
- developer (if bugs found) - Fix bugs with fix-issues command
- Continue workflow (if passed) - Wait for other parallel reviews

**Trigger Conditions:**
- All tests executed AND documented
- IF test_status == "failed" → trigger developer
- IF test_status == "passed" → no trigger (workflow continues)

## Dependencies

**Required for this command:**
- Story file: docs/product/stories/{story-id}.md
- Running application (local or staging)
- Project config: project-config.yaml

**Optional:**
- Developer guide: docs/developer-guide/ (testing standards)
- Test data files if feature requires specific data
