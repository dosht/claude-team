# fix-issues

## Purpose
Fix issues identified during review or testing phases.

## Parameters
- story-id (required) - Related story
- issue-list (required) - Issues to address from tech-lead, architect, or manual-tester

## Workflow

### 1. Understand Feedback

**Load Context:**
- Read all review feedback carefully
- Load story file to understand original requirements
- Load implementation to see current state
- Understand what reviewers expect

**Analyze Issues:**
- Categorize issues by type (code quality, architecture, functionality, tests)
- Prioritize by severity (blocking, important, minor)
- Identify related issues that can be fixed together

### 2. Plan Fixes

**For Each Issue:**
- Understand root cause
- Determine fix approach
- Consider impact on other code
- Identify if tests need updating

**Validate Plan:**
- Ensure fixes address reviewer concerns
- Check that fixes don't break other functionality
- Verify fixes align with project standards

### 3. Implement Fixes

**Fix Systematically:**
- Address issues one at a time
- Test after each significant fix
- Update related tests if needed
- Maintain code quality throughout

**Follow Standards:**
- Apply same quality standards as original implementation
- Follow patterns from developer-guide/
- Keep code clean and maintainable

### 4. Verify Fixes

**Test Thoroughly:**
- Run all tests (unit + E2E + linter)
- Verify specific issues resolved
- Check no new issues introduced
- Ensure all acceptance criteria still met

**Document Changes:**
- Update implementation notes in story file
- Explain what was fixed and why
- Note any significant changes to approach

### 5. Mark Ready for Re-review

**Prepare for Review:**
- Verify all reported issues addressed
- Ensure quality standards met
- Update story status
- Trigger re-review by same reviewers

## Validation

**Before marking ready, MUST verify:**
- All reported issues addressed
- All tests passing (unit + E2E + linter)
- No new issues introduced
- Implementation notes updated
- Code quality maintained

## Error Handling

- IF issue unclear → Ask reviewer for clarification
- IF fix requires scope change → Escalate to Product Owner
- IF architectural change needed → Consult Architect
- IF stuck on issue → Ask Tech Lead for guidance

## Handoff Contract

**Input:**
- Review feedback from tech-lead, architect, or manual-tester
- Story file at docs/product/stories/{story-id}.md
- Current implementation in src/
- Issue list with specific problems to fix

**Output:**
- Fixed implementation in src/
- Updated tests in tests/
- Updated implementation notes in story file
- Story status marked "ready-for-re-review"

**Next Agents:**
- Same reviewers who found issues (for re-review)
- tech-lead (if tech-lead found issues)
- architect (if architect found issues)
- manual-tester (if manual-tester found issues)

**Trigger Conditions:**
- All reported issues addressed
- All tests passing
- Quality standards met

## Dependencies

**Required for this command:**
- Story file: docs/product/stories/{story-id}.md
- Review feedback from reviewers
- Current implementation: src/
- Current tests: tests/
- Developer guide: docs/developer-guide/

**Optional:**
- Architecture docs: docs/arc42/ (if architectural issues)
