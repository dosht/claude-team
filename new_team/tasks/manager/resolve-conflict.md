# resolve-conflict

## Purpose
Resolve conflicts between agents through systematic diagnosis and solution design.

## Parameters
- conflict-description (required) - Description of the conflict

## Workflow

### 1. Understand Conflict

**Clarify:**
- Ask detailed questions about conflict
- Identify which agents involved
- Understand symptoms and impact
- Gather specific examples

### 2. Load Involved Agents

**Read:**
- Load all involved agent definitions
- Load their task files
- Load handoff contracts
- Understand each agent's responsibilities

### 3. Diagnose Root Cause

**Analyze Conflict Type:**

**Overlapping Responsibilities:**
- Symptoms: Agents provide similar feedback, modify same files
- Root cause: Unclear boundaries, duplicate concerns

**Ambiguous Handoffs:**
- Symptoms: Agents unsure when to trigger, data format mismatches
- Root cause: Unclear trigger conditions, incompatible schemas

**Circular Dependencies:**
- Symptoms: Workflow loops indefinitely, no clear end
- Root cause: Missing termination conditions, unintentional cycles

**Contradictory Feedback:**
- Symptoms: Agents give conflicting guidance
- Root cause: Different evaluation criteria, unclear priorities

### 4. Determine Strategy

**Decide:**
- IF simple fix (clear separation possible) → Automatic resolution
- IF complex (multiple valid approaches) → Escalate to human

**Automatic When:**
- Clear separation of concerns possible
- Simple persona refinement sufficient
- Trigger condition clarification fixes it

**Escalate When:**
- Fundamental architectural issue
- Multiple valid approaches exist
- Conflicting requirements from different stakeholders

### 5. Generate Solution Options

**Create 2-3 Options:**

**For Each Option:**
- Describe solution approach
- List pros and benefits
- List cons and drawbacks
- Assess risk level (High/Medium/Low)
- Estimate implementation effort

**Recommendation:**
- Manager's preferred solution
- Clear rationale for preference
- Why this approach best fits organizational principles

### 6. Present to Human

**Show:**
- Conflict diagnosis
- Root cause analysis
- All solution options with trade-offs
- Recommendation with rationale
- Implementation plan

**Wait:**
- MUST obtain approval before implementing
- Answer questions and concerns

### 7. Implement Resolution

**On Approval:**
- Update affected agent definitions
- Update task files as needed
- Update handoff contracts
- Verify conflict actually resolved

## Validation

**Before completing, MUST verify:**
- Root cause identified correctly
- Multiple options presented
- Conflict actually resolved (test if possible)
- Human approval obtained
- No new conflicts introduced

**If validation fails:**
- Re-diagnose
- Generate new solutions
- Re-present to human

## Error Handling

- IF diagnosis unclear → Ask more clarifying questions
- IF no good solution → Escalate as fundamental architectural issue
- IF resolution creates new conflict → Roll back and re-analyze

## Handoff Contract

**Input:**
- Conflict description from human
- Examples of conflict symptoms

**Output:**
- Conflict diagnosis report
- Root cause analysis
- 2-3 solution options with trade-offs
- Implementation plan
- Updated agent definitions (on approval)

**Next Agents:**
- None - Human decides next steps
- May trigger validate-agent to verify resolution

**Trigger Conditions:**
- Conflict resolved and validated

## Dependencies

**Required for this command:**
- Involved agents: agents/{agent-ids}.md
- Agent tasks: tasks/{agent-ids}/
- Organizational principles: organizational-principles.yaml
- All agents: agents/ (to check for broader impact)

**Optional:**
- Workflow DAG: data/workflow-dag.yaml
- Project config: project-config.yaml
