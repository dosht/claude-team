# prioritize-backlog

## Purpose
Reorder backlog based on current business priorities for optimal flow.

## Parameters
- priority-factors (optional) - What drives priority (value, risk, dependencies, etc.)

## Workflow

### 1. Understand Priority Drivers

**ASK User (if not provided):**
"What factors should drive backlog prioritization?
- Business value (revenue, user impact)
- Risk reduction (technical debt, security)
- Dependencies (unblock other work)
- Time sensitivity (deadlines, market timing)
- Team capacity (skills, availability)

Please select or describe priority factors."

**Validation:**
- MUST understand priority criteria before proceeding
- Use reasonable defaults if user wants agent to decide

### 2. Load Current Backlog

**Read Backlog:**
- Load all stories from docs/product/backlog/
- Load ready stories from docs/product/epics/
- Filter for status: ready or draft
- Review current priorities

**Validation:**
- MUST have stories to prioritize
- If no stories, notify user

### 3. Analyze Each Story

**For Each Story:**
- Review user value and business impact
- Assess technical risk and complexity
- Check dependencies (blocks/blocked by)
- Evaluate time sensitivity
- Consider team capacity and skills

**Categorize:**
- High priority - Critical value or unblocking
- Medium priority - Important but not urgent
- Low priority - Nice to have

**Validation:**
- MUST evaluate all ready stories
- Be consistent in criteria application

### 4. Check Dependencies

**Dependency Analysis:**
- Identify stories blocking other work
- Flag stories blocked by dependencies
- Prioritize unblocking stories higher
- Document dependency chains

**Validation:**
- MUST respect dependency order
- Cannot pull blocked stories

### 5. Assess Team Capacity

**Capacity Check:**
- Consider current WIP (work in progress)
- Check team skills for top stories
- Verify team can execute top priorities
- Avoid overloading backlog

**WIP Limits:**
- Respect configured WIP limits
- Don't pull more than team can handle
- Keep flow smooth

**Validation:**
- MUST respect WIP limits
- Top N stories should match team capacity

### 6. Reorder Backlog

**Prioritization:**
- Order stories by priority (high → medium → low)
- Within same priority, order by:
  * Dependencies (unblocking first)
  * Business value
  * Team readiness
- Mark top N stories for immediate pull

**Validation:**
- MUST have clear ordering rationale
- No dependency violations

### 7. Document Prioritization

**Create/Update Backlog File:**
- Update docs/product/backlog.md with:
  * Prioritized story list
  * Priority rationale
  * Dependency notes
  * Top N stories marked for pull
  * Date of prioritization

**Validation:**
- MUST document rationale
- Clear and actionable

### 8. Present Prioritization

**Show Results:**
- Display prioritized backlog
- Highlight top N stories for pull
- Explain prioritization decisions
- Note any blocked stories

**Get Confirmation:**
- Verify user agrees with prioritization
- Adjust if needed
- Finalize backlog order

## Validation

**Before completing, MUST verify:**
- All ready stories evaluated
- Priority factors applied consistently
- Dependencies respected
- WIP limits considered
- Backlog file updated
- Prioritization rationale documented
- Top N stories identified

**If validation fails:**
- Re-evaluate priorities
- Fix dependency violations
- Adjust based on feedback

## Error Handling

- IF no ready stories → Notify user, suggest creating or grooming stories
- IF all stories blocked → Escalate dependency issues
- IF priority factors conflict → Ask user to clarify
- IF WIP exceeded → Recommend story completion before new pulls

## Handoff Contract

**Input:**
- Priority factors (optional, can ask user)
- Current backlog state
- Team capacity (optional)

**Output:**
- Updated backlog file at docs/product/backlog.md with:
  * Prioritized story list (ordered)
  * Top N stories marked for immediate pull
  * Priority rationale documented
  * Dependency notes
  * Timestamp

**Next Agents:**
- developer (when top stories pulled for implementation)
- kanban-planner (self, if re-prioritization needed)

**Trigger Conditions:**
- Backlog prioritized AND top stories ready
- Team pulls next story for implementation

## Dependencies

**Required for this command:**
- Stories from docs/product/backlog/ and docs/product/epics/
- Project config: project-config.yaml
- WIP limits from project configuration

**Optional:**
- Backlog file: docs/product/backlog.md (will create if doesn't exist)
- Product roadmap: docs/product/README.md
- Team capacity data
