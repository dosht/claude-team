# create-epic-theme

## Purpose
Create lightweight epic as organizing theme without comprehensive upfront breakdown.

## Parameters
- epic-description (required) - What this epic theme is about
- initial-stories (optional) - Example stories to include

## Workflow

### 1. Gather Epic Context

**Understand Theme:**
- Clarify epic purpose and goals
- Identify theme or organizing principle
- Understand business value
- Determine success indicators (not rigid criteria)

**Validation:**
- MUST have clear theme before proceeding
- Ask clarifying questions if ambiguous

### 2. Define Epic Goals

**Set Direction:**
- Define high-level goals (not exhaustive)
- Identify user journeys or scenarios (examples, not complete list)
- Articulate business value
- Set lightweight success indicators

**Keep Lightweight:**
- Avoid comprehensive requirements
- Focus on theme coherence
- Allow organic growth
- No requirement to break down all stories upfront

**Validation:**
- MUST have clear theme and goals
- MUST NOT require complete breakdown

### 3. Identify Example Stories

**Create Initial Stories (Optional):**
- Add 1-3 example stories that illustrate theme
- Stories demonstrate epic purpose
- No requirement for complete coverage
- Epic can grow as new stories added

**Validation:**
- IF stories added, MUST be INVEST-compliant
- Stories optional, theme is primary

### 4. Create Epic Directory

**Setup:**
- Create epic directory: docs/product/epics/{epic-id}/
- Verify parent directory exists
- Follow project structure conventions

### 5. Write Epic README

**Content (Lightweight):**
- Epic theme and purpose
- High-level goals (not exhaustive)
- Example user journeys or scenarios
- Business value articulation
- Example stories (if any)
- Note: "This epic grows organically as stories are added"

**Avoid:**
- Comprehensive story lists
- Rigid success criteria
- Detailed breakdown requirements
- Implementation plans

**Validation:**
- MUST be lightweight and flexible
- Clear theme but not prescriptive

### 6. Create Initial Story Files (Optional)

**IF initial stories provided:**
- Create {story-id}.md for each story
- Follow story structure template
- Write user story statement
- Create testable acceptance criteria
- Link to epic theme

**Validation:**
- Stories INVEST-compliant
- Follow story template

### 7. Present Epic Theme

**Show:**
- Epic directory structure
- Epic README (lightweight)
- Example stories (if any)
- Growth approach (organic)

**Clarify:**
- Epic is theme, not comprehensive plan
- Stories added just-in-time as pulled
- Epic evolves with project

## Validation

**Before completing, MUST verify:**
- Epic README created with clear theme
- Goals high-level and flexible
- Epic marked as "organic growth" model
- Example stories INVEST-compliant (if included)
- Proper directory structure
- NOT comprehensive breakdown

**If validation fails:**
- Simplify if too detailed
- Clarify theme if unclear
- Remove rigid requirements

## Error Handling

- IF epic theme unclear → Ask clarifying questions
- IF user requests comprehensive breakdown → Explain Kanban model, suggest scrum-planner if needed
- IF example stories too large → Break down or defer to just-in-time creation
- IF too many stories → Keep only illustrative examples

## Handoff Contract

**Input:**
- Epic description/theme (text)
- Example stories (optional)
- Business goals (optional)

**Output:**
- Epic directory at docs/product/epics/{epic-id}/
- Epic README.md with theme, goals, examples
- Story files for initial stories (if provided)
- Note about organic growth model

**Next Agents:**
- kanban-planner (self, when creating stories for this theme)
- developer (when themed stories assigned for implementation)

**Trigger Conditions:**
- Epic theme created AND stories created as needed
- Stories pulled just-in-time for implementation

## Dependencies

**Required for this command:**
- Story structure template from agents/kanban-planner.md (if stories included)
- Project config: project-config.yaml
- Product directory: docs/product/

**Optional:**
- Existing epics: docs/product/epics/
- Product overview: docs/product/README.md
