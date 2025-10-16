# review-implementation

## Purpose
Comprehensive technical review of code implementation for quality, maintainability, and standards adherence.

## Parameters
- story-id (required) - Story identifier (e.g., TRAN-001-01)

## Workflow

### 1. Load Context

**Load Implementation:**
- Read all source code files modified in story
- Read all test files created/modified
- Verify files exist and are accessible

**Load Standards:**
- Read docs/developer-guide/README.md first for structure
- Load relevant standards files (coding-standards.md, testing-guide.md, etc.)
- Load CLAUDE.md for project-specific guidelines

**Load Story:**
- Read story file from docs/product/stories/{story-id}.md
- Review acceptance criteria
- Check developer implementation notes

### 2. Review Code Quality

**Check Against Standards:**
- Naming conventions (variables, functions, classes)
- Code structure and organization
- Error handling patterns
- Comment quality and clarity
- File/module organization

**Identify Violations:**
- Document ALL standards violations
- Note severity (critical, major, minor)
- Provide specific file and line numbers

### 3. Review Tests

**Evaluate Coverage:**
- Unit tests present for all new code
- E2E tests present for user features
- Edge cases covered
- Error cases tested

**Assess Quality:**
- Tests actually test functionality
- Test names are descriptive
- Tests follow AAA pattern
- No flaky or skipped tests

### 4. Check Code Smells

**Identify Anti-patterns:**
- Code duplication
- Long functions (>50 lines)
- Deep nesting (>3 levels)
- Magic numbers/strings
- Tight coupling
- Insufficient error handling

**Assess Maintainability:**
- Code readability
- Clear intent
- Separation of concerns
- Single responsibility

### 5. Verify Consistency

**Compare with Codebase:**
- Matches existing code style
- Uses established patterns
- Consistent with project architecture
- No conflicting approaches

### 6. Provide Feedback

**Format Feedback:**
- Severity: critical | major | minor
- Category: Type of issue
- Location: File path and line number
- Description: What's wrong
- Fix: Specific recommendation
- Why: Rationale for change

**Prioritize Issues:**
- Critical issues block approval
- Major issues strongly recommended
- Minor issues are suggestions

### 7. Make Decision

**Approve:**
- No critical or major issues
- All standards met
- Tests comprehensive and passing
- Code quality acceptable

**Approve with Suggestions:**
- No critical issues
- Minor improvements recommended
- Core functionality solid

**Require Changes:**
- Critical or major issues present
- Standards violations exist
- Tests insufficient
- Return to Developer with issues list

### 8. Update Developer Guide (If Needed)

**Check for Patterns:**
- Identify new reusable patterns
- Verify pattern is generic (not story-specific)
- Abstract to general principle

**Update Guide:**
- Find appropriate section
- Document pattern without code examples
- Explain when and why to use
- Present update for approval

## Validation

**Before completing, MUST verify:**
- All modified files reviewed
- All tests evaluated
- Standards checked comprehensively
- Feedback is specific and actionable
- Decision is clear (approve/changes required)

**If validation fails:**
- Complete missing review steps
- Provide more specific feedback
- Clarify decision rationale

## Error Handling

- IF linter errors present → Require changes (critical)
- IF tests failing → Require changes (critical)
- IF architectural concerns → Escalate to Architect
- IF requirements unclear → Escalate to Product Owner

## Handoff Contract

**Input:**
- Story file at docs/product/stories/{story-id}.md
- Source files in src/
- Test files in tests/
- Implementation complete with tests passing

**Output:**
- Technical review appended to story file under "## Technical Review"
- Review status: approved | approved_with_suggestions | changes_required
- Issues list with severity, location, description, fix
- Suggestions for improvements (if applicable)
- Developer guide updates (if applicable)

**Next Agents:**
- developer (if changes_required) - Fix issues and re-submit
- Continue workflow (if approved) - Wait for parallel reviews to complete

**Trigger Conditions:**
- Changes required: Developer triggered with fix-issues command
- Approved: Story proceeds once all parallel reviews complete

## Dependencies

**Required for this command:**
- Story file: docs/product/stories/{story-id}.md
- Developer guide: docs/developer-guide/
- Source code: src/ (files modified in story)
- Tests: tests/ (files created/modified in story)
- Project config: CLAUDE.md

**Optional:**
- Testing guide: docs/developer-guide/testing-guide.md
- Error handling guide: docs/developer-guide/error-handling.md
- Performance guide: docs/developer-guide/performance.md
