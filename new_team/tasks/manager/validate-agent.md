# validate-agent

## Purpose
Validate agent definition against organizational principles and best practices.

## Parameters
- agent-id (required) - Which agent to validate

## Workflow

### 1. Load Agent and Principles

**Read:**
- Load agents/{agent-id}.md
- Load tasks/{agent-id}/ files
- Load organizational-principles.yaml
- Load templates/agent-template.md

### 2. Validate Persona

**Check:**
- Role clearly defined
- Expertise specific and relevant
- Approach described
- Core principles present (5-7 principles)
- Principles measurable and specific
- Principles align with organizational principles

### 3. Validate Commands

**Check:**
- Commands follow verb-noun pattern
- Each command has clear purpose
- Commands have 1-sentence description
- Commands reference task files
- No duplicate or overlapping commands

**Validate Structure:**
- Command descriptions complete
- Parameters documented
- Clear scope defined

### 4. Validate Activation Instructions

**Check:**
- Greeting message present
- Menu displays all commands
- Instructions to load task files
- Clear user interaction flow

### 5. Validate Critical Rules

**Check:**
- MUST rules present and clear
- MUST NOT rules present and clear
- Rules appropriate for agent's role
- Rules enforceable and measurable

### 6. Validate Scope & Boundaries

**Check:**
- "Stay within scope" section defined
- "Escalate when" section defined
- Escalation targets identified
- Clear boundaries preventing scope creep

### 7. Validate Dependencies

**Check:**
- Dependencies section present
- References to parent directories only
- No specific file paths in core agent
- Dependencies appropriate for role

### 8. Check for Overlaps

**Load Other Agents:**
- Read all agents from agents/
- Compare responsibilities
- Check for duplicate concerns
- Identify potential conflicts

### 9. Generate Validation Report

**Document:**
- Compliance status (Pass/Fail)
- Issues found (categorized by severity)
- Specific problems with line references
- Recommendations for fixes
- Remediation plan

**Severity Levels:**
- Critical: Violates organizational principles
- High: Missing required sections
- Medium: Unclear or incomplete sections
- Low: Style or formatting improvements

## Validation

**Before completing, MUST verify:**
- All validation checks performed
- Issues properly categorized
- Recommendations actionable
- Report comprehensive

**Pass Criteria:**
- No Critical issues
- No High severity issues
- Organizational principles compliance
- Template structure followed

**If validation fails:**
- Document all issues clearly
- Provide specific remediation steps
- Offer to fix issues with update-agent

## Error Handling

- IF agent file missing → Report error and suggest create-agent
- IF principles file missing → Escalate (critical system file)
- IF severe issues found → Recommend immediate fix

## Handoff Contract

**Input:**
- Agent ID to validate

**Output:**
- Validation report with:
  - Compliance status (Pass/Fail)
  - Issues found by severity
  - Specific problems with locations
  - Recommendations
  - Remediation plan

**Next Agents:**
- None - Human decides next steps
- May trigger update-agent to fix issues

**Trigger Conditions:**
- Validation complete and report generated

## Dependencies

**Required for this command:**
- Agent to validate: agents/{agent-id}.md
- Agent tasks: tasks/{agent-id}/
- Organizational principles: organizational-principles.yaml
- Agent template: templates/agent-template.md

**Optional:**
- All other agents: agents/ (for overlap checking)
- Command template: templates/command-template.md
