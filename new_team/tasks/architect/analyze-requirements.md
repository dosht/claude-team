# analyze-requirements

## Purpose
Analyze story for architectural implications and provide architectural guidance.

## Parameters
- story-id (required) - Story identifier to analyze

## Workflow

### 1. Load Context

**Story and Epic:**
- Read story file from docs/product/stories/{story-id}.md
- Read epic file for broader context
- Understand requirements and acceptance criteria

**Current Architecture:**
- Load relevant arc42 sections
- Understand existing system design
- Review architectural decisions

### 2. Identify Architectural Implications

**Analyze Requirements:**
- What new components needed?
- What integration points affected?
- What data flows involved?
- What technology choices implied?
- What scalability concerns exist?

**Flag Concerns:**
- Security implications
- Performance concerns
- Scalability issues
- Integration complexity
- Technology gaps

### 3. Check Against Existing Architecture

**Verify Alignment:**
- Does story fit current architecture?
- Are there conflicts with existing design?
- Do we need architectural changes?

**Assess Impact:**
- What components affected?
- What integration patterns needed?
- What documentation needs updating?

### 4. Identify Risks

**Technical Risks:**
- Performance bottlenecks
- Scalability limitations
- Security vulnerabilities
- Integration challenges
- Technology limitations

**Architectural Risks:**
- Violates architectural principles
- Creates technical debt
- Increases system complexity
- Weakens component boundaries

### 5. Recommend Approach

**Architectural Guidance:**
- Recommended component structure
- Suggested integration patterns
- Data flow recommendations
- Technology recommendations
- Architectural principles to follow

**Provide Rationale:**
- Why this approach recommended
- Alternatives considered
- Trade-offs involved
- Long-term implications

### 6. Document Decision (if significant)

**IF significant architectural decision needed:**
- Create ADR (Architectural Decision Record)
- Document context, decision, consequences
- Add to arc42 architectural decisions section

**IF minor decision:**
- Document in story file
- No separate ADR needed

## Validation

**Before completing, MUST verify:**
- All architectural implications identified
- Risks clearly documented
- Recommendations actionable
- Alignment with existing architecture checked
- Significant decisions documented

## Error Handling

- IF requirements unclear → Ask clarifying questions
- IF fundamental architectural change needed → Escalate to human
- IF story conflicts with architecture → Escalate to Product Owner and human

## Handoff Contract

**Input:**
- Story file at docs/product/stories/{story-id}.md
- Must contain: requirements, acceptance criteria
- Optional: epic reference, technical notes

**Output:**
- Architectural analysis appended to story file under "## Architectural Analysis"
- Contains: implications, risks, recommendations, decisions
- ADR created if significant decision made

**Next Agents:**
- developer (if analysis complete) - Implement with architectural guidance
- product-owner (if requirements conflict with architecture) - Clarify or adjust

**Trigger Conditions:**
- Analysis complete → developer can proceed with implementation
- Conflict found → product-owner to resolve

## Dependencies

**Required for this command:**
- Story file: docs/product/stories/{story-id}.md
- Arc42 docs: docs/arc42/ (especially solution-strategy, building-blocks, decisions)
- Project config: project-config.yaml

**Optional:**
- Epic file: docs/product/epics/{epic-id}.md
- Existing source code: src/ (for context)
