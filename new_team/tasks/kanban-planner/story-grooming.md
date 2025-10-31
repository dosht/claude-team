# story-grooming

## Purpose
Refine draft stories to ready status through interactive or automatic grooming.

## Parameters
- story-id (required) - ID of draft story to groom
- mode (ask user) - interactive or automatic

## Workflow

### 1. Ask User for Grooming Mode

**Present Options:**
- Display two grooming mode options:
  * Interactive mode - Collaborative brainstorming with questions
  * Automatic mode - Agent refines based on available context

**ASK:**
"How would you like to groom this story?
1. Interactive mode - I'll ask questions and we'll collaborate
2. Automatic mode - I'll refine based on context and document assumptions

Which mode do you prefer?"

**Validation:**
- MUST ask user before proceeding
- MUST respect user's choice

### 2. Load Draft Story

**Read Story:**
- Load story file from provided story-id
- Review current state (user story, acceptance criteria, context)
- Identify gaps, ambiguities, or unclear areas
- Check current status

**Validation:**
- MUST verify story exists
- Note all areas needing refinement

### 3A. Interactive Mode Workflow

**IF user selects interactive mode:**

**Identify Questions:**
- List all unclear or ambiguous aspects
- Prioritize questions by importance
- Prepare clarifying questions

**Collaborative Refinement:**
- ASK questions one by one or in logical groups
- Listen to user responses
- Discuss acceptance criteria collaboratively
- Explore edge cases together
- Iterate until story is clear

**Example Questions:**
- "What should happen when [edge case]?"
- "Who is the primary user for this feature?"
- "How should the system behave if [error condition]?"
- "What's the expected outcome when [scenario]?"

**Document Decisions:**
- Capture all decisions made during grooming
- Update story with refined details
- Add context from discussion
- Note any assumptions

**Validation:**
- MUST ask questions for all unclear areas
- MUST incorporate user feedback
- Iterate until user confirms clarity

### 3B. Automatic Mode Workflow

**IF user selects automatic mode:**

**Analyze Context:**
- Review existing codebase patterns
- Check similar stories for patterns
- Review product documentation
- Examine architectural constraints

**Infer Details:**
- Fill in missing acceptance criteria based on patterns
- Add reasonable assumptions for edge cases
- Complete context sections
- Add technical notes if relevant

**Flag Assumptions:**
- Clearly mark all assumptions made
- Document reasoning for inferences
- Note areas of uncertainty
- Recommend human review for high-risk assumptions

**Example Assumptions Documentation:**
```
## Grooming Notes

**Mode:** Automatic
**Date:** YYYY-MM-DD

**Assumptions Made:**
1. User authentication follows existing OAuth2 pattern (based on similar stories)
2. Error handling uses standard error modal (project convention)
3. Data validation on client and server (architectural standard)

**Uncertainty Areas:**
- Exact error messages not specified (used project defaults)
- Timeout value assumed 30s (should confirm with team)

**Recommended Reviews:**
- Confirm error handling approach with product team
- Verify timeout value acceptable
```

**Validation:**
- MUST document all assumptions
- MUST flag high-uncertainty areas
- MUST be transparent about inference vs. fact

### 4. Verify INVEST Criteria

**Check Story Quality:**
- Independent - Can be developed standalone
- Negotiable - Details can be discussed
- Valuable - Delivers user/business value
- Estimable - Size can be estimated
- Small - Typically 1-3 days
- Testable - Clear acceptance criteria

**Validation:**
- MUST verify INVEST compliance
- Refine further if not compliant

### 5. Update Story File

**Write Changes:**
- Update user story if refined
- Add/update acceptance criteria
- Add context from grooming session
- Update grooming notes section
- Change status from "draft" to "ready"
- Update timestamp

**Validation:**
- MUST preserve story structure
- MUST update status to "ready"
- MUST document grooming process

### 6. Present Groomed Story

**Show Results:**
- Display updated story
- Highlight changes made
- In automatic mode: Emphasize assumptions
- Confirm story is ready for pull

**Get Confirmation:**
- Verify user satisfied with grooming
- Make additional adjustments if needed
- Finalize story as ready

## Validation

**Before completing, MUST verify:**
- Grooming mode selected by user (not assumed)
- Story refined according to selected mode
- All acceptance criteria clear and testable
- INVEST criteria met
- Grooming notes documented
- Status updated to "ready"
- Story file updated successfully

**Interactive Mode Specific:**
- All questions asked and answered
- User confirmed story clarity

**Automatic Mode Specific:**
- All assumptions documented
- Uncertainty areas flagged
- Recommended reviews noted

**If validation fails:**
- Continue grooming until criteria met
- Escalate if cannot resolve

## Error Handling

- IF story-id not found → Ask user to verify ID
- IF user unsure about mode → Explain both options with examples
- IF interactive mode but user unavailable → Suggest automatic mode
- IF automatic mode but too much uncertainty → Recommend switching to interactive
- IF story cannot be made INVEST-compliant → Escalate to human for story splitting

## Handoff Contract

**Input:**
- Story ID of draft story
- User's choice of grooming mode

**Output:**
- Updated story file with:
  * Refined user story
  * Complete acceptance criteria
  * Updated grooming notes
  * Status: ready
  * Documented assumptions (automatic mode)
  * Discussion notes (interactive mode)

**Next Agents:**
- developer (when groomed story pulled for implementation)
- kanban-planner (self, if further refinement needed)

**Trigger Conditions:**
- Story groomed to ready status
- Team pulls story for implementation

## Dependencies

**Required for this command:**
- Draft story file at docs/product/backlog/{story-id}.md or docs/product/epics/{epic-id}/{story-id}.md
- Story structure template from agents/kanban-planner.md
- Project config: project-config.yaml

**Optional (for automatic mode):**
- Existing codebase for pattern analysis
- Similar stories for reference
- Product documentation: docs/product/
- Architectural docs: docs/arc42/
