# run-tests

## Purpose
Execute all tests for current implementation and report results.

## Parameters
None (runs tests for current working directory)

## Workflow

### 1. Run Unit Tests

**Execute:**
- Run unit test suite
- Capture output
- Note pass/fail status
- Record any failures

**Report:**
- Show number of tests run
- Show number passed/failed
- Display failure details if any

### 2. Run E2E Tests

**Execute:**
- Run E2E test suite
- Capture output
- Note pass/fail status
- Record any failures

**Report:**
- Show number of tests run
- Show number passed/failed
- Display failure details if any

### 3. Run Linter

**Execute:**
- Run linter on codebase
- Capture output
- Note any errors or warnings
- Record specific issues

**Report:**
- Show linter status (clean or errors)
- Display all errors
- Display warnings if any

### 4. Generate Coverage Report

**Execute:**
- Run coverage analysis
- Calculate coverage percentage
- Identify uncovered areas
- Compare to project standards

**Report:**
- Show overall coverage percentage
- Show coverage by file/module
- Highlight areas below threshold
- Note if meets project standards (typically 80%+)

### 5. Present Results

**Summary:**
- Overall pass/fail status
- Test counts (unit, E2E, total)
- Linter status
- Coverage percentage
- Any action items

**Detailed Output:**
- Full test results if failures exist
- Specific linter errors if any
- Coverage gaps if below threshold

## Validation

**Tests are passing IF:**
- All unit tests pass
- All E2E tests pass
- Linter shows no errors
- Coverage meets or exceeds project standards

**Tests are failing IF:**
- Any unit test fails
- Any E2E test fails
- Linter shows errors
- Coverage below standards

## Error Handling

- IF tests fail → Report failures clearly, suggest fixes
- IF linter errors → Report specific errors, suggest fixes
- IF coverage low → Identify uncovered areas, suggest tests
- IF test framework issues → Report error, suggest troubleshooting

## Handoff Contract

**Input:**
- Current codebase in src/
- Current tests in tests/
- Test configuration from project

**Output:**
- Test results summary:
  - unit_tests: {passed, failed, total}
  - e2e_tests: {passed, failed, total}
  - linter: {status, errors}
  - coverage: {percentage, meets_standards}
  - overall_status: passing | failing

**Next Agent:**
- None (informational command)
- Human decides next action based on results

**Trigger Conditions:**
- N/A (command is manually triggered)

## Dependencies

**Required for this command:**
- Source code: src/
- Test files: tests/
- Test framework configuration from project
- Linter configuration from project

**Optional:**
- Project config: project-config.yaml (for coverage thresholds)
