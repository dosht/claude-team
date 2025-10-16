# research-best-practices

## Purpose
Research industry standards and best practices for specific topics to inform technical decisions.

## Parameters
- topic (required) - What to research (e.g., "API error handling", "state management")

## Workflow

### 1. Conduct Research

**Gather Industry Information:**
- Research current industry best practices
- Review authoritative sources (MDN, official docs, etc.)
- Check established style guides
- Review popular frameworks/libraries approaches
- Consult technical blogs and articles

**Document Findings:**
- Common patterns identified
- Industry consensus areas
- Competing approaches
- Recent trends or changes

### 2. Analyze Approaches

**Compare Options:**
- List different approaches found
- Identify pros and cons of each
- Note trade-offs and considerations
- Evaluate complexity vs benefits

**Consider Context:**
- Performance implications
- Maintainability aspects
- Team experience requirements
- Tooling support

### 3. Evaluate for Project

**Assess Applicability:**
- Does it fit project tech stack?
- Aligns with existing patterns?
- Appropriate for team skill level?
- Maintenance burden acceptable?

**Check Compatibility:**
- Works with current architecture
- No conflicts with existing code
- Feasible to adopt incrementally
- Migration path if needed

### 4. Present Findings

**Create Report:**
- Summary of research
- Options discovered
- Pros/cons analysis for each
- Applicability assessment

**Structure:**
- Overview: What was researched
- Findings: What industry does
- Analysis: Trade-offs of approaches
- Recommendation: What to adopt

### 5. Make Recommendation

**Provide Guidance:**
- Recommend preferred approach
- Explain rationale clearly
- Address potential concerns
- Suggest adoption strategy

**Consider:**
- Full adoption vs partial
- Immediate vs gradual implementation
- Training or documentation needs
- Impact on existing code

### 6. Create Standards (If Approved)

**If Adoption Approved:**
- Use establish-standards command to formalize
- Document as project standard
- Add to developer guide
- Set expectations for usage

**If Research Only:**
- Document findings for reference
- Keep for future consideration
- Share with team for awareness

## Validation

**Before completing, MUST verify:**
- Research is comprehensive
- Multiple sources consulted
- Trade-offs clearly presented
- Applicability assessed honestly
- Recommendation has clear rationale

**If validation fails:**
- Expand research sources
- Clarify trade-off analysis
- Better assess project fit

## Error Handling

- IF no clear industry consensus → Present options equally
- IF conflicting information → Note differences and sources
- IF inapplicable to project → Explain why clearly
- IF adoption unclear → Suggest pilot or experiment

## Handoff Contract

**Input:**
- Topic to research
- Optional context about why research needed

**Output:**
- Research report with findings
- Pros/cons analysis of approaches
- Applicability assessment
- Clear recommendation
- Optional: Standards document if adoption approved

**Next Agents:**
- establish-standards (if approval to adopt as standard)
- None (if research only for informational purposes)

**Trigger Conditions:**
- Research complete when report presented
- Standards established if adoption approved

## Dependencies

**Required for this command:**
- Internet access for research (via WebSearch tool)
- Project config: CLAUDE.md

**Optional:**
- Developer guide: docs/developer-guide/ (for context)
- Existing codebase (for compatibility assessment)
