# document-decision

## Purpose
Document an architectural decision as an ADR (Architectural Decision Record).

## Parameters
- decision (required) - What decision was made
- context (required) - Why decision was needed

## Workflow

### 1. Understand Decision

**Clarify Details:**
- What exactly was decided?
- What problem does it solve?
- Who made the decision?
- When was it made?

**Gather Context:**
- Why was decision needed?
- What triggered it?
- What constraints exist?
- What requirements drive it?

### 2. Create ADR

**ADR Structure:**
```
# ADR-{number}: {Title}

## Status
[Proposed | Accepted | Deprecated | Superseded by ADR-XXX]

## Context
- What is the issue we're addressing?
- What factors influence this decision?
- What constraints exist?
- What requirements must be met?

## Decision
- What did we decide?
- What approach will we take?
- What changes will be made?

## Rationale
- Why this decision?
- What makes this the best choice?
- What principles guided this?

## Consequences
### Positive
- Benefits of this decision
- What problems it solves
- What it enables

### Negative
- Costs or drawbacks
- What we give up
- What complexity it adds

### Risks
- What could go wrong
- What to watch for
- Mitigation strategies

## Alternatives Considered
### Alternative 1: {Name}
- Description
- Pros
- Cons
- Why rejected

### Alternative 2: {Name}
- Description
- Pros
- Cons
- Why rejected

## References
- Related decisions: ADR-XXX
- Related documentation: [links]
- External resources: [links]
```

### 3. Assign Number

**Get Next ADR Number:**
- Check existing ADRs in docs/arc42/09-architectural-decisions.md
- Assign next sequential number

### 4. Document Alternatives

**For Each Alternative:**
- Describe the approach
- List pros and cons
- Explain why not chosen

**Validate:**
- At least 2-3 alternatives considered
- Fair assessment of each
- Clear rationale for choice

### 5. Document Consequences

**Identify Impact:**
- Positive consequences (benefits)
- Negative consequences (costs)
- Risks to manage

**Be Honest:**
- Don't hide trade-offs
- Acknowledge drawbacks
- Identify risks

### 6. Add to Arc42

**Update Architectural Decisions Section:**
- Add new ADR to docs/arc42/09-architectural-decisions.md
- Link to related ADRs if applicable
- Ensure consistent formatting

### 7. Update Related Sections

**IF decision affects other sections:**
- Update solution strategy
- Update building blocks
- Update constraints
- Update quality requirements
- Update any other relevant sections

**Ensure Consistency:**
- All sections align with new decision
- No contradictions exist
- Cross-references updated

### 8. Present for Approval

**Show Complete ADR:**
- Display full ADR
- Highlight key points
- Show affected arc42 sections

**Get Approval:**
- Wait for human approval
- Address feedback if needed

## Validation

**Before completing, MUST verify:**
- ADR complete and well-structured
- Alternatives documented (at least 2-3)
- Consequences (positive and negative) documented
- Rationale clear and compelling
- Assigned proper number
- Added to arc42
- Related sections updated
- Human approval obtained

**If validation fails:**
- Fix issues immediately
- Re-present for approval

## Error Handling

- IF context unclear → Ask clarifying questions
- IF decision not significant enough for ADR → Document in story file instead
- IF affects fundamental architecture → Escalate to human for strategic discussion

## Handoff Contract

**Input:**
- Decision description
- Context about why needed
- Optional: alternatives already considered

**Output:**
- ADR created in docs/arc42/09-architectural-decisions.md
- ADR contains: status, context, decision, rationale, consequences, alternatives
- Related arc42 sections updated
- Consistent with existing architecture

**Next Agents:**
- None (documentation complete)
- developer (if decision relates to story) - Proceed with implementation

**Trigger Conditions:**
- ADR complete → can be referenced by developers
- If related to story → developer uses guidance

## Dependencies

**Required for this command:**
- Arc42 docs: docs/arc42/ (especially 09-architectural-decisions.md)
- Existing ADRs (to assign number and check for related decisions)

**Optional:**
- Story file: docs/product/stories/{story-id}.md (if decision for specific story)
- Project config: project-config.yaml
- Source code: src/ (for context)
