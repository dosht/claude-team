# review-capstone

## Purpose
Evaluate completed capstone project through multi-agent specialist reviews, aggregate feedback, and determine production readiness.

## Parameters
- trainee-name (required) - Trainee identifier (e.g., john-smith)
- project-name (required) - Capstone project name (e.g., task-manager-app)

## Workflow

### 1. Validate Submission Completeness

**Load Capstone Files:**
- Project document: docs/training/{trainee-name}/capstone/{project-name}.md
- Implementation: docs/training/{trainee-name}/capstone/{project-name}/implementation/
- README.md: Setup and run instructions
- IMPLEMENTATION-NOTES.md: Trainee's decisions and reflections
- Test results and coverage report

**Check Submission Checklist:**
- All Must Have acceptance criteria addressed
- Tests exist and passing
- Test coverage report available
- No linter errors (run linter to verify)
- README.md complete with setup instructions
- IMPLEMENTATION-NOTES.md complete
- Git commit history present and clean

**If Incomplete:**
- Document what's missing
- Return to trainee with specific requirements
- Do NOT proceed with specialist reviews
- Request completion before review

**If Complete:**
- Proceed with multi-agent review process
- Document submission validated ✅

### 2. Prepare for Specialist Reviews

**Determine Which Specialists to Invoke:**

**Always Invoke:**
- Tech Lead - Code quality, testing, standards adherence
- Manual Tester - Testing validation, bug identification, QA

**Conditionally Invoke:**
- Architect - If project has architectural components (system design, APIs, etc.)
- React UI Designer - If project is UI-heavy with React components
- Developer - If need comparison with production-quality implementation

**Prepare Review Package for Specialists:**
- Capstone project requirements document
- Trainee's implementation code
- Test suite and coverage report
- IMPLEMENTATION-NOTES.md for context
- Specific areas to focus on for each specialist

### 3. Invoke Specialist Reviews (IN PARALLEL)

**CRITICAL: Invoke all specialists in parallel for efficiency**

**Invoke Tech Lead: review-implementation**
```
Context: Capstone project review for trainee {name}
Project: {project-name}
Implementation: docs/training/{trainee-name}/capstone/{project-name}/implementation/

Review Focus:
- Code quality and maintainability
- Adherence to coding standards from developer-guide/
- Testing comprehensiveness and quality
- Error handling and edge cases
- Code organization and structure
- Best practices application

Trainee Level: Junior developer (adjust expectations accordingly)

Please provide:
1. Specific code quality issues with file/line references
2. Testing gaps or improvements needed
3. Standards violations or anti-patterns
4. Positive aspects (what trainee did well)
5. Recommendations for improvement
6. Overall assessment: Pass / Pass with Minor Issues / Needs Major Revisions / Fail
```

**Invoke Architect: review-architecture (if applicable)**
```
Context: Capstone project architectural review for trainee {name}
Project: {project-name}
Implementation: docs/training/{trainee-name}/capstone/{project-name}/implementation/

Review Focus:
- System design decisions and rationale
- Component/module architecture
- API design (if applicable)
- Data flow and state management
- Scalability and extensibility considerations
- Separation of concerns

Trainee Level: Junior developer (foundational architecture expected)

Please provide:
1. Architectural strengths demonstrated
2. Design issues or concerns
3. Alternative approaches if relevant
4. Scalability or maintainability concerns
5. Overall architectural assessment: Good / Acceptable / Needs Improvement / Poor
```

**Invoke Manual Tester: test-feature**
```
Context: Capstone project testing validation for trainee {name}
Project: {project-name}
Implementation: docs/training/{trainee-name}/capstone/{project-name}/implementation/
Requirements: docs/training/{trainee-name}/capstone/{project-name}.md

Test Focus:
- Verify all acceptance criteria met
- Test coverage adequacy
- Test quality (realistic scenarios, edge cases)
- Bug identification and reporting
- Edge case handling
- Error state handling

Trainee Level: Junior developer (foundational testing expected)

Please provide:
1. Acceptance criteria validation (which met, which not)
2. Bugs found during manual testing
3. Test suite evaluation (gaps, quality)
4. Edge cases not handled
5. Overall QA assessment: Pass / Pass with Minor Issues / Needs Revisions / Fail
```

**Invoke React UI Designer: review-components (if UI-heavy project)**
```
Context: Capstone project UI/UX review for trainee {name}
Project: {project-name}
Implementation: docs/training/{trainee-name}/capstone/{project-name}/implementation/

Review Focus:
- React component structure and patterns
- UI/UX quality and usability
- Accessibility compliance
- Responsive design
- Component reusability
- Styling approach and consistency

Trainee Level: Junior developer (foundational UI skills expected)

Please provide:
1. Component architecture strengths/issues
2. UI/UX improvements needed
3. Accessibility gaps
4. React best practices adherence
5. Overall UI assessment: Good / Acceptable / Needs Improvement / Poor
```

**Wait for All Reviews to Complete:**
- Collect all specialist reviews
- Do not proceed until all complete
- If specialist review fails or errors, document and escalate

### 4. Analyze and Aggregate Specialist Feedback

**Categorize Feedback by Severity:**

**Critical Issues (Must Fix):**
- Acceptance criteria not met
- Major bugs or errors
- Security vulnerabilities
- Critical architectural flaws
- Major standards violations

**Major Issues (Should Fix):**
- Code quality issues affecting maintainability
- Testing gaps (coverage < 80% or missing scenarios)
- Minor bugs or edge cases not handled
- Significant standards deviations
- Architectural improvements needed

**Minor Issues (Nice to Fix):**
- Code style inconsistencies
- Opportunities for refactoring
- Minor improvements in testing
- Documentation enhancements

**Strengths (Highlight):**
- What trainee did well
- Skills demonstrated effectively
- Good decisions and implementations
- Growth from tutorials

**Cross-Specialist Patterns:**
- Issues mentioned by multiple specialists (higher priority)
- Conflicting feedback (requires clarification)
- Common themes across reviews

### 5. Generate Comprehensive Capstone Review

**Capstone Review Template:**

```markdown
# Capstone Review: {Project Name} - {Trainee Name}

**Review Date:** {date}
**Project Duration:** {X days/weeks}
**Reviewed By:** Junior Developer Mentor + Specialist Team
**Overall Result:** {PASS / PASS WITH REVISIONS / MAJOR REVISIONS NEEDED / NOT PASS}

---

## Executive Summary

{2-3 paragraph overall assessment of capstone project}

**Production Readiness Assessment:**
{Is trainee ready for production work with supervision?}

**Key Strengths Demonstrated:**
1. {Strength area from reviews}
2. {Strength area from reviews}

**Critical Improvements Needed:**
1. {Critical issue if any}
2. {Critical issue if any}

---

## Acceptance Criteria Validation

### Must Have Criteria
| Criterion | Status | Notes |
|-----------|--------|-------|
| {Criterion 1} | ✅ PASS | {Brief note} |
| {Criterion 2} | ❌ FAIL | {What's missing} |
| {Criterion 3} | ⚠️  PARTIAL | {What's incomplete} |

**Overall Must Have:** {X of Y met} - {Pass/Fail}

### Should Have Criteria
{Similar table}

### Could Have Criteria
{Similar table}

---

## Specialist Reviews

### Technical Review (Tech Lead)

**Overall Assessment:** {Pass / Pass with Minor Issues / Needs Major Revisions / Fail}

**Code Quality:** {Rating/5}
{Specific feedback from Tech Lead}

**Testing:** {Rating/5}
{Specific feedback}

**Standards Adherence:** {Rating/5}
{Specific feedback}

**Strengths:**
- {Positive point from Tech Lead}
- {Positive point}

**Issues Found:**
- **[CRITICAL]** {Issue with file:line reference}
- **[MAJOR]** {Issue with file:line reference}
- **[MINOR]** {Issue with file:line reference}

**Recommendations:**
{Tech Lead's recommendations}

---

### Architectural Review (Architect) {if applicable}

**Overall Assessment:** {Good / Acceptable / Needs Improvement / Poor}

**System Design:** {Rating/5}
{Specific feedback from Architect}

**Strengths:**
- {Architectural strengths}

**Issues Found:**
- **[CRITICAL]** {Architectural issue}
- **[MAJOR]** {Architectural issue}

**Recommendations:**
{Architect's recommendations}

---

### Testing & QA Review (Manual Tester)

**Overall Assessment:** {Pass / Pass with Minor Issues / Needs Revisions / Fail}

**Test Coverage:** {X%} {✅ Meets minimum 80% / ❌ Below minimum}

**Bugs Found:**
| Severity | Description | Location | Impact |
|----------|-------------|----------|--------|
| Critical | {Bug description} | {Where} | {Impact} |
| Major | {Bug description} | {Where} | {Impact} |
| Minor | {Bug description} | {Where} | {Impact} |

**Test Quality Assessment:**
{Feedback on test suite from Manual Tester}

**Edge Cases Not Handled:**
- {Edge case 1}
- {Edge case 2}

**Recommendations:**
{Manual Tester's recommendations}

---

### UI/UX Review (React UI Designer) {if applicable}

**Overall Assessment:** {Good / Acceptable / Needs Improvement / Poor}

**Component Architecture:** {Rating/5}
**UI/UX Quality:** {Rating/5}
**Accessibility:** {Rating/5}

**Strengths:**
- {UI strength}

**Issues Found:**
- **[MAJOR]** {UI issue}
- **[MINOR]** {UI issue}

**Recommendations:**
{React UI Designer's recommendations}

---

## Aggregated Feedback

### Critical Issues (Must Fix Before Passing)
{Consolidated list of critical issues from all reviewers}
1. {Critical issue 1} - From: {Specialist}
2. {Critical issue 2} - From: {Specialist}

**Total Critical Issues:** {X}

### Major Issues (Should Fix)
{Consolidated list of major issues}
1. {Major issue 1} - From: {Specialist}
2. {Major issue 2} - From: {Specialist}

**Total Major Issues:** {X}

### Minor Issues (Nice to Fix)
{Consolidated list of minor issues}
{Can group similar issues}

**Total Minor Issues:** {X}

---

## Skills Demonstrated

**Technical Skills:**
- {Skill 1}: {Level demonstrated} {✅ Expected / ⚠️  Below expected / ⭐ Above expected}
- {Skill 2}: {Level demonstrated} {status}

**Problem-Solving:**
{Assessment of problem-solving approach from IMPLEMENTATION-NOTES.md}

**Independence:**
{How well trainee worked independently}

**Code Quality:**
{Overall code quality relative to junior level expectations}

**Testing Practices:**
{Testing approach and quality}

---

## Production Readiness Assessment

### Readiness Criteria
| Criterion | Status | Evidence |
|-----------|--------|----------|
| Implements complete features | {✅/❌} | {Evidence from acceptance criteria} |
| Writes clean, maintainable code | {✅/❌} | {Evidence from Tech Lead review} |
| Follows team standards | {✅/❌} | {Evidence from reviews} |
| Tests comprehensively | {✅/❌} | {Evidence from test coverage} |
| Handles edge cases and errors | {✅/❌} | {Evidence from testing review} |
| Makes sound architectural decisions | {✅/❌} | {Evidence from Architect review} |
| Works independently | {✅/❌} | {Evidence from notes and questions} |

**Production Readiness:** {X of Y criteria met}

**Overall Assessment:**
{Paragraph explaining if trainee is ready for production work with supervision}

---

## Decision: {PASS / CONDITIONAL PASS / REVISE & RESUBMIT / NOT PASS}

### {If PASS}
**Congratulations! 🎉**
{Trainee name} has successfully completed the capstone project and demonstrated readiness for supervised production work.

**Next Steps:**
1. Celebrate this milestone!
2. Begin supervised production feature development
3. Continue learning through real-world work
4. Regular code reviews and mentoring

**Supervision Recommendations:**
- Pair programming for first 2-3 features
- Close code review on all PRs
- Regular check-ins and feedback
- Gradually increase independence

---

### {If CONDITIONAL PASS}
**Capstone passes with minor revisions required.**

**Required Revisions (Must complete):**
1. {Specific revision with clear success criteria}
2. {Specific revision with clear success criteria}

**Timeline:** {X days to complete revisions}

**After Revisions:**
- Submit updated implementation
- Mentor will validate revisions (no full re-review needed)
- If revisions adequate, convert to PASS

---

### {If REVISE & RESUBMIT}
**Capstone does not meet passing criteria. Major revisions required.**

**Critical Issues to Address:**
1. {Critical issue with detailed guidance on how to fix}
2. {Critical issue with detailed guidance}

**Major Issues to Address:**
1. {Major issue with guidance}
2. {Major issue with guidance}

**Timeline:** {1-2 weeks for major revisions}

**Support Provided:**
- Additional tutorial/guidance on gap areas: {topics}
- Scheduled mentoring sessions: {frequency}
- Resources: {links to materials}

**Resubmission:**
- Address all critical issues
- Address majority of major issues
- Submit for full re-review

---

### {If NOT PASS}
**Capstone does not meet minimum standards for production readiness.**

{This is rare - only if trainee clearly not ready}

**Fundamental Gaps Identified:**
1. {Gap area with evidence}
2. {Gap area with evidence}

**Recommendation:**
- Return to tutorial-based learning
- Focus on gap areas: {topics}
- Additional assessment after completing remediation
- Consider different capstone project after improvement
- May need to reassess overall learning approach

**Escalation:**
This outcome requires human (senior developer) review and decision on next steps.

---

## Trainee Growth & Learning

**Compared to Baseline Assessment:**
{How trainee has grown throughout training}

**Key Achievements:**
- {Achievement 1}
- {Achievement 2}

**Areas of Continued Growth:**
- {Area 1} - Will improve with production experience
- {Area 2} - Will improve with production experience

---

## Recommendations for Continued Development

**In Production Work:**
1. {Recommendation based on capstone performance}
2. {Recommendation}

**Learning Priorities:**
1. {Area to focus on in real work}
2. {Area to focus on}

**Mentoring Strategy:**
{How to best support this trainee going forward}

---

## Review Artifacts

**Specialist Reviews:**
- Tech Lead Review: {link or embedded}
- Architect Review: {link or embedded}
- Manual Tester Review: {link or embedded}
- React UI Designer Review: {link or embedded}

**Trainee Submission:**
- Implementation: docs/training/{trainee-name}/capstone/{project-name}/implementation/
- Implementation Notes: {link}
- Test Results: {link}

---

**Review Completed By:** Junior Developer Mentor
**Specialist Reviewers:** {List all specialists involved}
**Next Review:** {If resubmission needed} OR N/A
```

### 6. Update Progress Tracker

**Update docs/training/{trainee-name}/progress-tracker.md:**

**For PASS:**
- Update overall status to "Production Ready"
- Update production readiness to 100% (or 90-95% if conditional)
- Add capstone completion date and result
- Update overall level to "Junior Developer - Production Ready"

**For CONDITIONAL PASS:**
- Update status to "Capstone - Revisions Needed"
- List required revisions
- Set revision deadline

**For REVISE & RESUBMIT:**
- Update status to "Capstone - Major Revisions"
- Document gap areas needing work
- Plan remediation activities

**For NOT PASS:**
- Update status to "Capstone - Not Passed"
- Document fundamental gaps
- Flag for senior developer review

### 7. Present Review and Next Steps

**To Trainee:**
- Schedule review meeting (this is important milestone)
- Present review comprehensively:
  - Start with strengths and achievements
  - Discuss areas for improvement constructively
  - Explain decision and rationale
  - Provide clear next steps
- Answer questions and provide encouragement
- If passed: Celebrate! This is huge achievement
- If revisions needed: Provide support and guidance

**To Senior Developer:**
- Present executive summary and decision
- Highlight trainee's strengths and readiness
- Discuss any concerns or supervision recommendations
- If PASS: Recommend transition to production work
- If NOT PASS: Escalate for human decision

**To Specialists (Thank You):**
- Acknowledge their review contributions
- Share final decision and outcome
- Provide context on how feedback was used

## Validation

**Before completing, MUST verify:**
- All specialist reviews completed
- All acceptance criteria evaluated
- Issues categorized by severity accurately
- Decision justified by evidence from reviews
- Next steps clear and actionable
- Progress tracker updated
- Review stored in correct location

**If validation fails:**
- Request missing specialist reviews
- Add missing acceptance criteria evaluations
- Clarify vague issues or recommendations
- Ensure decision matches evidence

## Error Handling

- IF specialist review not available → Use available specialists and note limitation
- IF specialist reviews conflict → Human escalation to resolve
- IF submission incomplete → Return to trainee before specialist reviews
- IF all specialists fail trainee → Strong evidence for NOT PASS
- IF unclear decision → Escalate to senior developer

## Handoff Contract

**Input:**
- trainee-name: String (required)
- project-name: String (required)
- Capstone project: docs/training/{trainee-name}/capstone/{project-name}.md
- Implementation: docs/training/{trainee-name}/capstone/{project-name}/implementation/
- README.md and IMPLEMENTATION-NOTES.md
- Test results and coverage

**Output:**
- Comprehensive review: docs/training/{trainee-name}/capstone/review-{date}.md
- Updated progress tracker: docs/training/{trainee-name}/progress-tracker.md
- Decision: PASS / CONDITIONAL PASS / REVISE & RESUBMIT / NOT PASS
- Next steps and recommendations

**Next Agents:**
- tech-lead (review-implementation) - Invoked in parallel for code review
- architect (review) - Invoked in parallel for architecture review (if applicable)
- manual-tester (test-feature) - Invoked in parallel for QA
- react-ui-designer (review) - Invoked in parallel for UI review (if applicable)
- human (senior-developer) - If PASS, for transition to production OR if NOT PASS, for escalation

**Trigger Conditions:**
- Capstone submitted → Automatic multi-agent review (parallel)
- Reviews complete → Generate comprehensive review
- PASS → Trainee ready for production work
- Revisions needed → Trainee works on revisions, resubmits

## Dependencies

**Required for this command:**
- Capstone project: docs/training/{trainee-name}/capstone/{project-name}.md
- Implementation: docs/training/{trainee-name}/capstone/{project-name}/implementation/
- README and implementation notes
- Progress tracker: docs/training/{trainee-name}/progress-tracker.md
- Project standards: docs/developer-guide/
- Organizational principles: organizational-principles.yaml

**Required Specialists (invoked):**
- Tech Lead: Always
- Manual Tester: Always
- Architect: If architectural components
- React UI Designer: If UI-heavy project
- Developer: If need production code comparison

**Optional:**
- Previous capstone reviews for calibration
- Industry junior developer standards for benchmarking
