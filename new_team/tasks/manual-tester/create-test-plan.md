# create-test-plan

## Purpose
Create detailed testing plan based on acceptance criteria without executing tests.

## Parameters
- story-id (required) - Story identifier (e.g., TRAN-001-01)

## Workflow

### 1. Load Story

**Read:**
- Story file from docs/product/stories/{story-id}.md
- Focus on acceptance criteria, user story, description

**Understand:**
- What feature needs testing
- What acceptance criteria must be verified
- What user behaviors to validate

### 2. Analyze Acceptance Criteria

**For Each Criterion:**
- Understand what it specifies
- Identify testable aspects
- Determine how to verify it

**Output:**
- Clear understanding of testing requirements

### 3. Identify Test Scenarios

**For Each Acceptance Criterion:**

**Happy Path:**
- Normal user flow
- Expected inputs
- Standard use cases

**Error Cases:**
- Invalid inputs
- Missing data
- Permission issues
- Network errors
- Edge cases

**Data Integrity:**
- State changes
- Data persistence
- Concurrent operations (if applicable)

### 4. Create Test Cases

**Format Each Test Case:**
```
Test Case: [Descriptive Name]
Preconditions: [Setup needed before test]
Steps:
1. [Specific action]
2. [Specific action]
3. [Specific action]
Expected Result: [What should happen]
Acceptance Criterion: [Which criterion this verifies]
Type: [happy-path | error-case | edge-case]
```

**Requirements:**
- Steps must be specific and repeatable
- Expected results must be clear
- Each test case maps to acceptance criterion

### 5. Validate Coverage

**Check:**
- Every acceptance criterion has at least one test case
- Happy path covered for each criterion
- Error scenarios included
- Edge cases identified

**If gaps found:**
- Create additional test cases
- Do not proceed until 100% coverage

### 6. Document Test Plan

**Add to Story File:**
- Append under "## Test Plan"
- Include all test cases
- Organize by acceptance criterion or by type
- Make executable (anyone can follow steps)

**Format:**
```markdown
## Test Plan

### Test Cases for [Acceptance Criterion 1]

#### TC-01: [Test Case Name]
- Preconditions: [...]
- Steps:
  1. [...]
  2. [...]
- Expected Result: [...]
- Type: happy-path

#### TC-02: [Test Case Name]
[...]

### Test Cases for [Acceptance Criterion 2]
[...]
```

### 7. Present Plan

**Review with Human:**
- Show complete test plan
- Explain coverage
- Highlight critical test cases
- Get approval or feedback

## Validation

**Before completing, MUST verify:**
- Test case for each acceptance criterion
- Happy path tests included
- Error scenario tests included
- Clear, repeatable steps
- Plan documented in story file

**If validation fails:**
- Add missing test cases
- Clarify ambiguous steps
- Do not mark complete until comprehensive

## Error Handling

- IF acceptance criteria unclear → Escalate to Product Owner
- IF unable to determine test approach → Escalate to Product Owner
- IF technical details needed → Consult Developer's implementation notes

## Handoff Contract

**Input:**
- Story file at docs/product/stories/{story-id}.md
- Must contain: story_id, title, acceptance_criteria

**Output:**
- Test plan appended to story file under "## Test Plan"
- Contains: test cases with steps, expected results, criterion mapping
- Coverage: 100% of acceptance criteria

**Next Agents:**
- None - test plan creation is standalone
- Human may trigger execute-tests command next

## Dependencies

**Required for this command:**
- Story file: docs/product/stories/{story-id}.md
- Project config: project-config.yaml

**Optional:**
- Developer guide: docs/developer-guide/ (testing standards)
- Implementation notes in story file (helps understand feature)
