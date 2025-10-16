# update-developer-guide

## Purpose
Update developer guide based on new reusable patterns identified during reviews.

## Parameters
- pattern-description (required) - What pattern to document
- rationale (optional) - Why this pattern should be standard

## Workflow

### 1. Identify Pattern

**Extract Pattern:**
- Review implementation where pattern emerged
- Identify the core reusable principle
- Verify pattern is generic (not story-specific)
- Ensure pattern solves real problem

**Validate Reusability:**
- Check if applicable to multiple scenarios
- Confirm not one-off solution
- Verify adds value as standard

### 2. Abstract Pattern

**Make Generic:**
- Remove story-specific details
- Focus on underlying principle
- Keep technology-agnostic where possible
- Describe pattern abstractly

**Document Core Principle:**
- What: What is the pattern
- When: When to use it
- Why: Why it's preferred
- How: High-level approach (no code examples)

### 3. Find Appropriate Section

**Review Guide Structure:**
- Read docs/developer-guide/README.md
- Identify existing sections
- Determine best fit for pattern

**Options:**
- Add to existing section if relevant
- Create new section if needed
- Update existing pattern if refinement

### 4. Write Documentation

**Create Documentation:**
- Clear, concise description
- Explain rationale and benefits
- Describe when to apply
- Note any caveats or exceptions

**Keep Abstract:**
- No specific code examples in guide
- Reference actual codebase for examples
- Focus on principles not implementation

### 5. Present Update

**Show Changes:**
- Display proposed guide changes
- Explain what's being added/updated
- Provide rationale for placement
- Show before/after or diff

**Get Approval:**
- Present to human for review
- Answer questions
- Make adjustments if needed
- Wait for explicit approval

### 6. Apply Changes

**Update Files:**
- Modify appropriate developer-guide files
- Preserve existing structure
- Maintain formatting consistency

**Update Table of Contents:**
- Update docs/developer-guide/README.md if needed
- Add entry for new section
- Maintain logical organization

**Verify:**
- Check files updated correctly
- Ensure no formatting issues
- Validate links work (if any)

## Validation

**Before completing, MUST verify:**
- Pattern is truly reusable and generic
- Documentation is clear and actionable
- Placement in guide is appropriate
- No code examples included
- Human approval obtained

**If validation fails:**
- Refine pattern description
- Find better section placement
- Clarify documentation

## Error Handling

- IF pattern too specific → Generalize further or skip
- IF unclear where to place → Ask for guidance
- IF conflicts with existing pattern → Resolve or escalate
- IF approval denied → Refine and re-present

## Handoff Contract

**Input:**
- Pattern description
- Context where pattern emerged
- Optional rationale for standardization

**Output:**
- Updated developer guide files in docs/developer-guide/
- Pattern documented abstractly
- README.md updated if new section added

**Next Agents:**
- None (guide update is terminal action)

**Trigger Conditions:**
- Completes when guide updated and changes applied

## Dependencies

**Required for this command:**
- Developer guide: docs/developer-guide/
- README.md: docs/developer-guide/README.md

**Optional:**
- Coding standards: docs/developer-guide/coding-standards.md
- Testing guide: docs/developer-guide/testing-guide.md
- Other relevant guide sections
