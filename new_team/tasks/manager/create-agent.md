# create-agent

## Purpose
Create new agent from scratch following structured format and organizational principles.

## Parameters
- agent-purpose (required) - What this agent will do
- agent-responsibilities (optional) - Specific areas of focus

## Workflow

### 1. Gather Requirements

**Clarify:**
- Ask about purpose, responsibilities, inputs, outputs
- Understand collaboration with other agents
- Identify trigger conditions

**Validate:**
- MUST ensure clarity before proceeding
- MUST NOT proceed with ambiguous requirements

### 2. Check for Overlap

**Load:**
- Read all agent definitions from agents/

**Analyze:**
- Check if existing agent already covers this
- Identify potential conflicts
- MUST NOT proceed if overlap found - resolve first

### 3. Design Agent

**Create Persona:**
- Define role, expertise, approach
- Create 5-7 specific core principles
- Ensure principles measurable and specific

**Define Commands:**
- Use verb-noun pattern
- Create 1-sentence description for each
- Map to specific workflows

**Specify Dependencies:**
- List documentation needed
- List templates needed
- Reference parent directories only

### 4. Validate Design

**Check Against:**
- Load organizational-principles.yaml
- Validate persona clarity
- Validate command structure
- Validate dependencies
- MUST pass all checks before proceeding

### 5. Present to Human

**Show:**
- Complete agent definition
- Rationale for all decisions
- How it fits into workflow
- Impact on existing agents
- What files will be created

**Wait:**
- MUST obtain approval before creating files
- Address any concerns or requested changes

### 6. Create Files

**On Approval:**
- Create agents/{agent-id}.md
- Create tasks/{agent-id}/ directory
- Create task files for each command
- Update workflow-dag.yaml if needed
- Update slash command if needed

## Validation

**Before completing, MUST verify:**
- Agent validates against organizational principles
- No overlapping responsibilities with existing agents
- All commands have clear purpose
- Dependencies are valid
- Human approval obtained
- Files created successfully

**If validation fails:**
- Fix issues or escalate
- Do not proceed until resolved

## Error Handling

- IF validation fails → Fix issues or escalate to human
- IF overlap detected → Run resolve-conflict first
- IF human rejects → Refine based on feedback and re-present

## Handoff Contract

**Input:**
- Natural language request with agent purpose
- Optional: specific responsibilities and requirements

**Output:**
- New agent .md file in agents/ directory
- Task files in tasks/{agent-id}/ directory
- Updated workflow-dag.yaml (if needed)
- Validation report showing compliance

**Next Agents:**
- None - Human decides when to use new agent

**Trigger Conditions:**
- Agent creation complete and validated

## Dependencies

**Required for this command:**
- Organizational principles: organizational-principles.yaml
- Agent template: templates/agent-template.md
- Command template: templates/command-template.md
- All existing agents: agents/

**Optional:**
- Workflow DAG: data/workflow-dag.yaml
- Project config: project-config.yaml
