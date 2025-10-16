# Task: command-name

**Agent:** agent-id
**Version:** 1.0.0

## Purpose

One-sentence description of what this command/task accomplishes.

## Parameters

**Required:**
- `param1` - Description of required parameter
- `param2` - Description of required parameter

**Optional:**
- `param3` - Description of optional parameter

## Workflow

**Trigger:** When this task executes

**MUST Execute in Order:**

### 1. Step Name

**Action:** Specific action to perform

**Validation:** MUST check [condition]

**Output:** What this step produces

### 2. Step Name

**Action:** Specific action to perform

**Decision:** IF [condition] THEN [action] ELSE [alternative]

**Validation:** MUST verify [condition]

### 3. Step Name

**Action:** Specific action to perform

**MUST NOT:** [prohibited action]

**Output:** What this step produces

## Completion Criteria

**MUST Have:**
- Requirement 1
- Requirement 2
- Requirement 3

**MUST Verify:**
- Validation check 1
- Validation check 2

## Error Handling

**IF** [error condition] **THEN** [escalation action]

**IF** [error condition] **THEN** [retry with changes]

## Output Format

**Format:** [yaml/markdown/json/code]

**Schema:**
```yaml
output_field_1: type - description
output_field_2: type - description
output_field_3: type - description
```

**Location:** Where output MUST be written

## Next Agent

**Trigger:** [next-agent-id]

**Condition:** MUST trigger when [condition]

**Input:** [what data to pass]

## Quality Checks

**MUST Verify:**
- Quality standard 1
- Quality standard 2
- Quality standard 3

## Dependencies

**MUST Load:**
- `path/to/dependency.md` - Purpose
- `path/to/template.yaml` - Purpose

## Examples

### Example 1: Basic Usage

```
Input: [example input]
Output: [example output]
```

### Example 2: Edge Case

```
Input: [example input]
Output: [example output]
Handling: [how edge case is handled]
```
