# establish-standards

## Purpose
Create or update coding standards for specific topics based on research and project needs.

## Parameters
- topic (required) - What standards to establish (e.g., "error handling", "API design")
- scope (optional) - Specific area or file types to target

## Workflow

### 1. Research Industry Practices

**Gather Information:**
- Research current industry best practices for topic
- Review established style guides (Airbnb, Google, etc.)
- Consult framework/library documentation
- Review community standards

**Document Findings:**
- Common patterns identified
- Industry consensus points
- Conflicting approaches
- Trade-offs of each approach

### 2. Review Project Context

**Analyze Existing Code:**
- Review current project patterns
- Identify existing conventions
- Note inconsistencies
- Check technology stack constraints

**Assess Alignment:**
- What works well currently
- What needs standardization
- What conflicts with industry practices
- What's unique to project needs

### 3. Propose Standards

**Create Standards Document:**
- Define specific rules and conventions
- Provide clear rationale for each
- Explain when to apply
- Note exceptions if any

**Make Prescriptive:**
- Use clear directive language (MUST, SHOULD, MUST NOT)
- Provide specific guidance
- Eliminate ambiguity
- Make rules measurable/checkable

### 4. Present Standards

**Show Proposal:**
- Present complete standards document
- Explain rationale for each standard
- Show how it improves codebase
- Address potential concerns

**Include:**
- What: Specific standards
- Why: Rationale and benefits
- How: Application guidance
- Impact: Effect on existing code

### 5. Get Approval

**Review Process:**
- Present to human for review
- Answer questions and concerns
- Adjust standards if needed
- Obtain explicit approval before proceeding

**Iterate if Needed:**
- Refine based on feedback
- Clarify ambiguous rules
- Add missing details
- Re-present for approval

### 6. Add to Developer Guide

**Integrate Standards:**
- Add to appropriate section in docs/developer-guide/
- Update coding-standards.md or create new file
- Maintain consistent formatting
- Keep abstract and generic

**Update Navigation:**
- Update docs/developer-guide/README.md
- Add links to new sections
- Organize logically

**Document Adoption:**
- Note standards are now official
- Set expectations for compliance
- Indicate review will enforce

## Validation

**Before completing, MUST verify:**
- Standards are specific and actionable
- Rationale is clear for each rule
- Standards align with project tech stack
- Industry practices considered
- Human approval obtained

**If validation fails:**
- Add missing rationale
- Make standards more specific
- Better align with project needs

## Error Handling

- IF industry practices conflict → Present options with trade-offs
- IF unclear how to apply → Add examples or clarification
- IF conflicts with existing code → Note migration strategy
- IF approval denied → Refine and re-present

## Handoff Contract

**Input:**
- Topic for standardization
- Optional scope specification
- Context about why standards needed

**Output:**
- New or updated standards in docs/developer-guide/
- Rationale documented
- README.md updated if needed
- Clear guidance for application

**Next Agents:**
- None (standards establishment is terminal action)

**Trigger Conditions:**
- Completes when standards added to guide and approved

## Dependencies

**Required for this command:**
- Developer guide: docs/developer-guide/
- README.md: docs/developer-guide/README.md
- Project config: CLAUDE.md

**Optional:**
- Existing codebase for pattern analysis
- Technology documentation for framework specifics
