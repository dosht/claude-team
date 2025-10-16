# evaluate-technology

## Purpose
Evaluate technology choice or addition to the project stack.

## Parameters
- technology (required) - Technology to evaluate (e.g., "Redis", "GraphQL", "React Query")
- use-case (required) - What it will be used for

## Workflow

### 1. Understand Context

**Load Requirements:**
- What problem needs solving?
- What are the functional requirements?
- What are the non-functional requirements?
- What are the constraints?

**Load Current Stack:**
- Read project-config.yaml
- Review existing technology choices from arc42
- Understand current architecture

### 2. Research Technology

**Technical Assessment:**
- What does technology do?
- How does it work?
- What are its strengths?
- What are its limitations?
- What's its maturity/stability?
- What's the community/support like?

**Use Case Fit:**
- Does it solve our problem?
- Is it appropriate for our scale?
- Does it fit our requirements?

### 3. Evaluate Against Requirements

**Functional Fit:**
- Does it meet functional needs?
- Are there feature gaps?
- Are there unnecessary features?

**Non-Functional Fit:**
- Performance characteristics
- Scalability
- Security
- Reliability
- Maintainability

**Constraints:**
- Cost implications
- Licensing compatibility
- Team expertise required
- Learning curve

### 4. Assess Integration

**Stack Compatibility:**
- Does it integrate with existing stack?
- Are there compatibility issues?
- What dependencies does it add?
- Does it conflict with existing choices?

**Architectural Impact:**
- How does it affect system design?
- What changes needed to architecture?
- What new patterns required?
- What documentation needs updating?

### 5. Consider Alternatives

**Identify Options:**
- What alternatives exist?
- What are their pros/cons?
- How do they compare?

**Compare:**
- Feature comparison
- Performance comparison
- Cost comparison
- Complexity comparison
- Ecosystem comparison

### 6. Document Trade-offs

**Pros:**
- Benefits of this technology
- Advantages over alternatives
- Value it provides

**Cons:**
- Drawbacks and limitations
- Disadvantages vs alternatives
- Costs and risks

**Trade-offs:**
- What we gain vs what we give up
- Short-term vs long-term implications
- Flexibility vs simplicity

### 7. Provide Recommendation

**Decision:**
- Approve, reject, or conditional approval
- Clear rationale for decision
- Conditions if conditional

**Implementation Guidance:**
- How to integrate if approved
- What to watch out for
- What documentation to update

**Alternative if Rejected:**
- Suggest alternative approach
- Explain why alternative better

## Validation

**Before completing, MUST verify:**
- Technology thoroughly researched
- Requirements evaluated
- Integration assessed
- Alternatives considered
- Trade-offs documented
- Clear recommendation with rationale

## Error Handling

- IF technology unclear → Ask for clarification
- IF requirements unclear → Ask clarifying questions
- IF evaluation complex → Break into smaller evaluations
- IF strategic decision → Escalate to human

## Handoff Contract

**Input:**
- Technology name
- Use case description
- Context about why evaluation needed

**Output:**
- Technology evaluation report
- Contains: assessment, alternatives, trade-offs, recommendation
- Appended to story file or created as separate doc

**Next Agents:**
- developer (if approved) - Implement using approved technology
- product-owner (if rejected and affects story) - Discuss alternatives

**Trigger Conditions:**
- Evaluation complete → developer can proceed or adjust approach
- Strategic decision needed → human approval required

## Dependencies

**Required for this command:**
- Project config: project-config.yaml
- Arc42 docs: docs/arc42/ (especially solution-strategy, constraints, decisions)
- Story context (if evaluating for specific story)

**Optional:**
- Existing source code: src/ (for integration context)
