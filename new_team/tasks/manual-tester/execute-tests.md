# execute-tests

## Purpose
Execute existing testing plan and document results without planning.

## Parameters
- story-id (required) - Story identifier (e.g., TRAN-001-01)

## Workflow

### 1. Load Test Plan

**Read:**
- Story file from docs/product/stories/{story-id}.md
- Locate "## Test Plan" section
- Load all test cases

**Validate:**
- Test plan exists and is complete
- Test cases have clear steps
- Expected results defined

**If no test plan:**
- Run create-test-plan command first
- Do not proceed without plan

### 2. Set Up Environment

**Verify:**
- Application is running and accessible
- Test data available if needed
- Browser/tools ready

**Prepare:**
- Clear cache if needed
- Set up test user account if required
- Ensure clean state for testing

### 3. Execute Test Cases Systematically

**For Each Test Case:**

**Preconditions:**
- Set up required state
- Ensure preconditions met

**Execute Steps:**
- Follow each step exactly as written
- Observe application behavior
- Note any unexpected behavior

**Verify Result:**
- Compare actual result to expected result
- Mark as PASS or FAIL
- Document observations

**Document:**
- Test case ID and name
- Status (PASS/FAIL)
- Actual behavior observed
- Notes or observations
- Timestamp

### 4. Test Error Scenarios

**Focus on Error Cases:**
- Test with invalid inputs
- Test missing required data
- Test permission scenarios
- Test error handling and messaging

**Verify:**
- Errors handled gracefully
- User-friendly error messages
- Application doesn't crash
- State remains consistent

### 5. Test Quality Aspects (Optional)

**User Experience:**
- Intuitive interface
- Clear feedback
- Responsive interactions

**Performance:**
- Page load times
- Interaction responsiveness

**Accessibility (if applicable):**
- Keyboard navigation
- Screen reader compatibility
- Color contrast

### 6. Document Results

**Add to Story File:**
- Append under "## Test Results"
- Include:
  - Date and tester
  - Summary (X passed, Y failed)
  - Detailed results for each test case
  - Observations and findings

**Format:**
```markdown
## Test Results

Tested by: Quinn
Date: [date]
Status: [PASSED | FAILED]

### Summary
- Total test cases: X
- Passed: Y
- Failed: Z

### Detailed Results

#### TC-01: [Test Case Name]
- Status: PASS
- Notes: [observations]

#### TC-02: [Test Case Name]
- Status: FAIL
- Expected: [...]
- Actual: [...]
- Notes: [...]
```

### 7. Determine Next Steps

**If All Tests Passed:**
- Mark test_status as "passed"
- Note approval in story file
- Inform human of success

**If Any Tests Failed:**
- Collect all failures
- Use report-bugs command to document issues
- Do not approve story

## Validation

**Before completing, MUST verify:**
- All test cases from plan executed
- Pass/fail documented for each case
- Results added to story file
- Overall status determined

**If validation fails:**
- Complete remaining test cases
- Document all results
- Do not skip test cases

## Error Handling

- IF application not accessible → Escalate to Developer
- IF test case steps unclear → Update test plan or escalate
- IF environment issues → Escalate to Developer or human
- IF application crashes → Document as critical bug

## Handoff Contract

**Input:**
- Story file at docs/product/stories/{story-id}.md
- Must contain: test plan with test cases
- Running application to test

**Output:**
- Test results appended to story file under "## Test Results"
- Contains: summary, detailed results for each test case, overall status
- Decision: passed OR failed (with failures documented)

**Next Agents:**
- report-bugs command (if failures found)
- None (if all passed - manual-tester completes)

## Dependencies

**Required for this command:**
- Story file: docs/product/stories/{story-id}.md
- Test plan must exist in story file
- Running application (local or staging)
- Project config: project-config.yaml

**Optional:**
- Test data files if feature requires specific data
