# update-agent

## Purpose
Modify existing agent definition with complete change tracking and impact analysis.

## Parameters
- agent-id (required) - Which agent to update
- changes (required) - What to change and why

## Workflow

### 1. Identify Changes

**Understand:**
- Ask clarifying questions about changes
- Understand rationale and desired outcome
- MUST have clear reason for changes

### 2. Load Current State

**Read:**
- Load agents/{agent-id}.md completely
- Load related task files from tasks/{agent-id}/
- Verify files exist

### 3. Generate Updated Definition

**Modify:**
- Create updated agent definition
- Preserve critical behavior unless explicitly changed
- Maintain organizational principle compliance

**Validate:**
- Check against organizational-principles.yaml
- Verify command structure still valid
- Ensure dependencies still valid

### 4. Analyze Impact

**Check:**
- Review handoff contracts with other agents
- Identify breaking changes
- Assess risk level of changes
- Check dependencies on this agent

**Document:**
- List all affected agents
- Describe impact on each
- Identify potential issues

### 5. Generate Diff

**Create:**
- Generate complete git diff of all changes
- MUST show exact line-by-line changes
- MUST NOT just describe - show actual diff

### 6. Present Changes

**Show:**
- Complete git diff
- Explanation of what changed and why
- Impact analysis on other agents
- Testing recommendations
- Risk assessment

**Wait:**
- MUST obtain approval before applying
- Address concerns or questions

### 7. Apply Changes

**On Approval:**
- Update agent file
- Update related task files
- Update workflow-dag.yaml if needed
- Preserve git history - no force push

## Validation

**Before completing, MUST verify:**
- Git diff shows all changes
- Impact analysis completed
- No unintended breaking changes
- Human approval obtained
- Changes applied successfully
- Agent still validates against principles

**If validation fails:**
- Revert changes
- Fix issues
- Re-present for approval

## Error Handling

- IF validation fails → Fix and re-validate
- IF breaking changes detected → Highlight and get explicit approval
- IF human rejects → Refine and re-present

## Handoff Contract

**Input:**
- Agent ID and description of changes needed
- Rationale for changes

**Output:**
- Git diff showing exact changes
- Updated agent file
- Updated task files if needed
- Impact analysis report
- Testing recommendations

**Next Agents:**
- None - Human decides next steps
- May trigger validate-agent for verification

**Trigger Conditions:**
- Changes applied and validated

## Dependencies

**Required for this command:**
- Existing agent: agents/{agent-id}.md
- Agent tasks: tasks/{agent-id}/
- Organizational principles: organizational-principles.yaml
- All other agents: agents/

**Optional:**
- Workflow DAG: data/workflow-dag.yaml
- Project config: project-config.yaml
