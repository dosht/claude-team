# implement-story

## Purpose
Complete story implementation from planning through testing and trigger reviews.

## Parameters
- story-id (required) - Story identifier (e.g., TRAN-001-01)

## Workflow

### 1. Planning Phase

**Load Context:**
- Read story file from docs/product/stories/{story-id}.md
- Read epic file for broader context
- Load developer-guide/ for patterns and standards
- Load CLAUDE.md for project instructions

**Create Plan:**
- Break story into specific tasks
- Make architectural decisions
- Identify technology needs
- Estimate effort
- Document approach

**Get Approval:**
- Append plan to story file under "## Implementation Plan"
- Present plan to human
- Wait for approval before proceeding
- MUST NOT start coding without approval

### 2. Development Phase

**Implement:**
- Follow project patterns from developer-guide/
- Use approved tech stack
- Implement error handling
- Stay strictly within story boundaries
- Document complex logic inline

**Maintain Plan:**
- Update plan if approach changes during development
- Document why changes were necessary

### 3. Testing Phase

**Write Tests:**
- Create unit tests for all new code
- Create E2E tests for user features
- Ensure accessibility if UI changes
- Verify test coverage meets standards

**Verify:**
- Run all tests (unit + E2E + linter)
- Verify all acceptance criteria met
- Check code follows standards
- Ensure no linter errors

### 4. Complete Story

**Document:**
- Add implementation notes to story file under "## Implementation Notes"
- Update story status
- Document any deviations or learnings

**Trigger Reviews:**
- Mark story as ready for review
- Trigger tech-lead, architect, manual-tester (parallel)

## Validation

**Before completing, MUST verify:**
- All acceptance criteria met
- All tests passing (unit + E2E + linter)
- Code follows project standards
- Implementation documented
- Human approval obtained for plan

**If validation fails:**
- Fix issues immediately
- Re-run tests
- Do not proceed until all checks pass

## Error Handling

- IF acceptance criteria unclear → Escalate to Product Owner
- IF blocked by dependency → Escalate to Product Owner
- IF architectural guidance needed → Consult Architect
- IF scope ambiguity → Clarify with Product Owner before implementing

## Handoff Contract

**Input:**
- Story file at docs/product/stories/{story-id}.md
- Must contain: story_id, title, description, acceptance_criteria
- Optional: epic_reference, technical_notes, dependencies

**Output:**
- Implementation plan appended to story file
- Source code in src/
- Tests in tests/
- Implementation notes appended to story file
- Story status updated to "implemented"

**Next Agents:**
- tech-lead (parallel) - Technical review for code quality
- architect (parallel) - Architectural review for system integration
- manual-tester (parallel) - Manual testing and QA validation

**Trigger Conditions:**
- Implementation complete AND all tests passing
- All three agents triggered simultaneously
- If any agent finds issues, developer re-triggered with fix-issues command

## Dependencies

**Required for this command:**
- Story file: docs/product/stories/{story-id}.md
- Developer guide: docs/developer-guide/
- Project config: project-config.yaml
- Project instructions: CLAUDE.md

**Optional:**
- Epic file: docs/product/epics/{epic-id}.md
- Architecture docs: docs/arc42/
