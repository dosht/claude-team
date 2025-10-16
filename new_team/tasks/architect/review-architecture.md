# review-architecture

## Purpose
Review implementation for architectural consistency and system integration.

## Parameters
- story-id (required) - Story identifier to review

## Workflow

### 1. Load Context

**Implementation:**
- Read all source code files modified in story
- Focus on system structure, component boundaries, integration points

**Arc42 Documentation:**
- Read relevant sections: solution strategy, building blocks, runtime view, deployment
- Understand current architectural principles

### 2. Review Architectural Alignment

**Verify Implementation:**
- Check component structure follows architectural decisions
- Validate integration patterns used correctly
- Ensure data flow consistent with runtime view

**Identify Violations:**
- Note any deviations from documented architecture
- Assess impact of violations on system

### 3. Check System Integration

**Evaluate Integration:**
- Verify API contracts maintained
- Check data formats consistent
- Validate dependencies appropriate
- Assess component boundaries clean

**Assess Quality:**
- Verify proper separation of concerns
- Check coupling and cohesion
- Ensure encapsulation maintained

### 4. Verify Technology Choices

**Check Stack:**
- Ensure no unapproved technologies added
- Validate proper usage of approved stack
- Assess library choices appropriate

### 5. Provide Feedback

**Generate Review:**
- Document system-level issues found (NOT code-level)
- For each issue state:
  - Architectural principle violated
  - System-level impact
  - How to fix architecturally

**Format:**
```
## Architecture Review

**Status:** [approved | approved_with_recommendations | changes_required]

**Architectural Assessment:** [Overall evaluation]

**Issues Found:**
1. [Severity: critical/major/minor]
   - Category: [Type of architectural concern]
   - Description: [What's the issue]
   - Principle Violated: [Which architectural principle]
   - Impact: [System-level impact]
   - Fix: [How to address architecturally]

**Recommendations:** [Optional improvements]

**Arc42 Updates:** [Documentation updates needed, if any]
```

### 6. Make Decision

**IF no issues:**
- Approve and continue workflow

**IF minor issues:**
- Approve with recommendations
- Continue workflow

**IF major issues:**
- Return to Developer with required changes
- Trigger developer with fix-issues command

### 7. Update Arc42 (if needed)

**IF implementation reveals architectural evolution:**
- Update relevant arc42 sections
- Document significant changes

## Validation

**Before completing, MUST verify:**
- Architectural consistency checked
- System integration assessed
- Feedback is system-level (not code-level)
- Clear approval or rejection given
- Arc42 updated if needed

**If violations found:**
- Document clearly with architectural rationale
- Return to Developer with specific fixes
- Do not approve

## Error Handling

- IF fundamental architectural change needed → Escalate to human
- IF technology stack decision required → Escalate to human
- IF uncertainty about architectural principle → Escalate to human

## Handoff Contract

**Input:**
- Story file at docs/product/stories/{story-id}.md
- Implementation complete with passing tests
- Source files in src/
- Developer's implementation notes

**Output:**
- Architecture review appended to story file under "## Architecture Review"
- Contains: status, assessment, issues (if any), recommendations
- Story status updated if changes required

**Next Agents:**
- developer (if changes_required) - Fix architectural issues
- Continue workflow (if approved) - Wait for parallel reviews to complete

**Trigger Conditions:**
- IF changes_required → developer with fix-issues command
- IF approved → story proceeds (waits for tech-lead and manual-tester)

## Dependencies

**Required for this command:**
- Story file: docs/product/stories/{story-id}.md
- Source code: src/ (files modified in story)
- Arc42 docs: docs/arc42/
  - Solution strategy
  - Building blocks
  - Runtime view
  - Deployment view
  - Architectural decisions

**Optional:**
- Epic file: docs/product/epics/{epic-id}.md
