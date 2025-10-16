# generate-tests

## Purpose
Generate contract validation tests for an agent to verify inputs, outputs, and integrations.

## Parameters
- agent-id (required) - Which agent to generate tests for

## Workflow

### 1. Load Agent Definition

**Read:**
- Load agents/{agent-id}.md
- Load all task files from tasks/{agent-id}/
- Extract commands and handoff contracts

### 2. Extract Handoff Contracts

**For Each Command:**
- Extract input contract (format, schema, validation rules)
- Extract output contract (format, schema, required fields)
- Extract next-agent triggers and conditions
- Note dependencies

### 3. Generate Input Validation Tests

**Create Tests For:**
- Required parameters present
- Parameter types correct
- Parameter values valid
- Input format matches schema
- Missing required fields handled

**Test Structure:**
```
Test: validate-{command}-input-{scenario}
Given: [Input scenario]
When: [Command executed]
Then: [Expected validation result]
```

### 4. Generate Output Validation Tests

**Create Tests For:**
- Output format matches contract
- All required fields present
- Field types correct
- Field values within valid ranges
- Output complete and well-formed

**Test Structure:**
```
Test: validate-{command}-output-{scenario}
Given: [Command execution]
When: [Output generated]
Then: [Expected output structure]
```

### 5. Generate Integration Tests

**For Each Connected Agent:**
- Test handoff trigger conditions
- Test data compatibility
- Test next-agent activation
- Test error handling in handoff

**Test Structure:**
```
Test: integrate-{agent-id}-to-{next-agent}
Given: [{agent-id} completes command]
When: [Handoff occurs]
Then: [{next-agent} receives valid input]
```

### 6. Generate Edge Case Tests

**Create Tests For:**
- Missing optional parameters
- Invalid input handling
- Error conditions
- Boundary values
- Concurrent execution (if applicable)

### 7. Create Test File

**Structure:**
- Test file header with description
- Setup instructions
- Test cases organized by command
- Execution instructions
- Expected results documentation
- Cleanup instructions

**Format:**
```markdown
# Tests for {agent-id} Agent

## Setup
[Prerequisites and setup steps]

## Tests

### Command: {command-name}

#### Input Validation
[Input validation tests]

#### Output Validation
[Output validation tests]

#### Integration
[Integration tests]

#### Edge Cases
[Edge case tests]

## Execution
[How to run these tests]

## Expected Results
[What passing tests look like]
```

### 8. Write Test File

**Create:**
- tests/agents/{agent-id}-tests.md
- Include all generated tests
- Add execution instructions
- Document expected results

## Validation

**Before completing, MUST verify:**
- All commands have tests
- Input validation tests cover all parameters
- Output validation tests cover all fields
- Integration tests cover all next-agents
- Test file well-structured and clear
- Execution instructions complete

**If validation fails:**
- Add missing tests
- Clarify unclear tests
- Complete execution instructions

## Error Handling

- IF agent has no handoff contracts → Generate basic validation tests only
- IF handoff contract incomplete → Note in test and mark as needing clarification
- IF next-agent missing → Note as potential issue in test comments

## Handoff Contract

**Input:**
- Agent ID to generate tests for

**Output:**
- Test file at tests/agents/{agent-id}-tests.md with:
  - Input validation tests
  - Output validation tests
  - Integration tests
  - Edge case tests
  - Execution instructions

**Next Agents:**
- None - Human decides when to execute tests

**Trigger Conditions:**
- Test file generated and written

## Dependencies

**Required for this command:**
- Agent definition: agents/{agent-id}.md
- Agent tasks: tasks/{agent-id}/

**Optional:**
- Connected agents: agents/ (for integration tests)
- Workflow DAG: data/workflow-dag.yaml (for handoff validation)
- Existing test examples: tests/agents/ (for consistency)
