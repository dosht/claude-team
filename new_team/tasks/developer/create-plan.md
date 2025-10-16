# create-plan

## Purpose
Create detailed implementation plan without executing implementation.

## Parameters
- story-id (required) - Story identifier to plan

## Workflow

### 1. Analyze Story

**Read:**
- Load story file from docs/product/stories/{story-id}.md
- Load epic file for context
- Understand acceptance criteria completely
- Identify dependencies and blockers

**Validate:**
- Verify acceptance criteria exist and are clear
- Check for missing information
- Escalate if requirements unclear

### 2. Research Approach

**Consult Standards:**
- Load developer-guide/ for patterns and standards
- Load CLAUDE.md for project instructions
- Identify existing patterns to follow
- Check technology stack constraints

**Make Decisions:**
- Decide implementation approach
- Choose appropriate patterns
- Identify libraries/tools needed
- Consider edge cases and error handling

### 3. Break Down Work

**Create Task List:**
- List specific, actionable tasks
- Ensure all acceptance criteria covered
- Include testing tasks
- Order tasks logically

**Estimate Effort:**
- Provide realistic estimate (story points or time)
- Consider complexity and unknowns
- Flag high-risk areas

### 4. Document Plan

**Write Plan:**
- Document tasks clearly
- Explain architectural decisions
- List technology choices
- Include risks and considerations

**Append to Story:**
- Add plan under "## Implementation Plan" in story file
- Format clearly for readability

### 5. Present for Approval

**Review with Human:**
- Present complete plan
- Explain key decisions
- Discuss alternatives if applicable
- Answer questions
- Wait for approval

## Validation

**Before presenting, MUST verify:**
- Plan covers all acceptance criteria
- Tasks are specific and actionable
- Architectural decisions documented
- Technology choices justified
- Estimate is realistic

## Error Handling

- IF acceptance criteria missing → Escalate to Product Owner
- IF story blocked → Escalate to Product Owner
- IF architectural guidance needed → Consult Architect before planning
- IF technology choice unclear → Discuss with Tech Lead

## Handoff Contract

**Input:**
- Story file at docs/product/stories/{story-id}.md
- Must contain: story_id, title, description, acceptance_criteria

**Output:**
- Implementation plan appended to story file under "## Implementation Plan"
- Format includes: tasks, architectural_decisions, technology_choices, effort_estimate

**Next Agent:**
- developer (self) - Continue to implementation after human approval
- OR human decides to modify plan or assign to different developer

**Trigger Conditions:**
- Plan complete and approved by human
- No blockers or dependencies preventing implementation

## Dependencies

**Required for this command:**
- Story file: docs/product/stories/{story-id}.md
- Developer guide: docs/developer-guide/
- Project config: project-config.yaml

**Optional:**
- Epic file: docs/product/epics/{epic-id}.md
- Architecture docs: docs/arc42/
