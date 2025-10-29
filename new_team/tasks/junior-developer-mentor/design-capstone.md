# design-capstone

## Purpose
Create real-world capstone project simulating production work to validate trainee's readiness for actual development tasks.

## Parameters
- trainee-name (required) - Trainee identifier (e.g., john-smith)
- project-name (required) - Descriptive name for capstone project (e.g., task-manager-app)

## Workflow

### 1. Validate Readiness for Capstone

**Check Prerequisites:**
- Load progress tracker from docs/training/{trainee-name}/progress-tracker.md
- Verify overall readiness >70% (recommend 80%+)
- Verify minimum topics completed (recommend 5+)
- Verify core skills at "Proficient" or higher:
  - Programming fundamentals
  - Framework knowledge (React, Next.js, etc.)
  - Testing practices
  - Development tools (git, debugging)

**If Not Ready:**
- Report readiness gaps to senior developer
- Recommend completing additional topics
- Do NOT proceed with capstone design
- Return to create-tutorial for gap areas

**If Ready:**
- Proceed with capstone design
- Document readiness assessment in project file

### 2. Design Capstone Project

**Capstone Design Principles:**
- Realistic: Similar to actual production features
- Integrative: Combines multiple learned skills
- Challenging: Stretches trainee beyond tutorials
- Achievable: Completable in 1-3 weeks based on complexity
- Evaluated: Clear success criteria like real user stories
- Supervised: Blockers built in to simulate dependencies

**Analyze Trainee's Completed Skills:**
- List all completed topics with scores
- Identify strongest skill areas
- Identify areas needing reinforcement
- Review trainee's role goals (frontend, backend, full-stack)

**Choose Project Type:**

**Frontend-focused:**
- React component library with Storybook
- Dashboard application with data visualization
- E-commerce product catalog with cart
- Social media feed with real-time updates

**Backend-focused:**
- RESTful API with authentication
- Data processing pipeline
- Task queue system
- Database design with complex queries

**Full-stack:**
- CRUD application with auth
- Real-time collaboration tool
- Content management system
- Integration with external APIs

**Select Appropriate Project:**
- Aligned with trainee's role goals
- Covers 4-6 of trainee's completed topics
- Introduces 1-2 new challenges (simulates real growth)
- Realistic scope for 1-3 weeks

### 3. Invoke Product Owner for Realistic Story Format

**Invoke Product Owner (optional but recommended):**
- Purpose: Get realistic user story format and structure
- Input: Project description and required skills to validate
- Expected: User story with acceptance criteria, edge cases, acceptance criteria

**If Product Owner Available:**
- Request user story format for capstone project
- Incorporate PO feedback on acceptance criteria clarity
- Ensure story follows team conventions

**If Product Owner Not Available:**
- Use existing stories from docs/product/stories/ as templates
- Follow standard user story format from project

### 4. Create Comprehensive Capstone Project Document

**Capstone Project Template:**

```markdown
# Capstone Project: {Project Name}

**Trainee:** {Trainee Name}
**Created:** {date}
**Expected Duration:** {1-3 weeks}
**Difficulty:** ⭐⭐⭐⭐ (Capstone level)

---

## Readiness Assessment

**Prerequisites Verified:**
- Overall Readiness: {X%}
- Topics Completed: {X}
- Core Skills Achieved: {list}
- Ready for Production Simulation: ✅

---

## Project Overview

**Goal:**
{1-2 paragraph description of what trainee will build and why it matters}

**Real-World Context:**
This project simulates {realistic scenario}. In a production environment, you might receive a story like this from the Product Owner and need to implement it end-to-end.

**Skills Validated:**
This project integrates the following learned skills:
1. {Skill from topic X}
2. {Skill from topic Y}
3. {Skill from topic Z}
4. {Skill from topic A}
5. {Skill from topic B}

**New Challenges:**
This project introduces:
- {New challenge 1} - You'll need to research and apply independently
- {New challenge 2} - Simulates real-world problem-solving

---

## User Story

**As a** {user type}
**I want** {goal}
**So that** {benefit}

### Acceptance Criteria

**Must Have (Core Requirements):**
1. {Specific, testable criterion}
2. {Specific, testable criterion}
3. {Specific, testable criterion}
4. {Specific, testable criterion}
5. {Specific, testable criterion}

**Should Have (Important but not blocking):**
1. {Criterion}
2. {Criterion}

**Could Have (Nice to have if time permits):**
1. {Criterion}
2. {Criterion}

### Edge Cases to Handle
- {Edge case 1}
- {Edge case 2}
- {Edge case 3}

### Out of Scope
(Explicitly state what NOT to implement)
- {Out of scope item 1}
- {Out of scope item 2}

---

## Technical Requirements

### Architecture Constraints
{If applicable, specify architectural patterns to use}
- {Constraint 1 - e.g., "Use Redux for state management"}
- {Constraint 2 - e.g., "Implement RESTful API following project conventions"}

### Technology Stack
**Required:**
- {Technology 1 - from completed tutorials}
- {Technology 2}
- {Technology 3}

**You Choose:**
- {Area where trainee makes decision - e.g., "Choose appropriate UI library"}

### Code Quality Standards
- Follow project coding standards from docs/developer-guide/
- Minimum test coverage: 80%
- No linter errors
- All tests passing

### Testing Requirements
**Required Test Types:**
- Unit tests for all business logic
- Integration tests for API endpoints (if applicable)
- Component tests for React components (if applicable)
- E2E tests for critical user flows

**Minimum Scenarios to Test:**
- Happy path
- Error handling
- Edge cases
- Accessibility (if UI components)

---

## Implementation Guidance

### Recommended Approach

**Phase 1: Planning (Days 1-2)**
1. Read and understand all requirements
2. Break down into tasks
3. Design architecture / component structure
4. Create implementation plan
5. Get plan approved by Mentor

**Phase 2: Core Implementation (Days 3-8)**
1. Set up project structure
2. Implement core functionality (Must Have criteria)
3. Write tests as you go
4. Commit frequently with clear messages

**Phase 3: Enhancement (Days 9-12)**
1. Implement Should Have criteria
2. Add error handling
3. Improve code quality
4. Add documentation

**Phase 4: Polish (Days 13-15)**
1. Could Have criteria if time permits
2. Comprehensive testing
3. Code review preparation
4. Documentation completion

### Simulated Real-World Scenarios

**Blocker 1: Unclear Requirement (Day 4)**
{Introduce ambiguity trainee must resolve}
- Situation: {Ambiguous scenario}
- What to do: {How to handle - ask mentor, research, etc.}

**Blocker 2: Technical Challenge (Day 7)**
{Introduce technical challenge requiring research}
- Situation: {Technical problem}
- What to do: {Research, review docs, ask for guidance}

**Blocker 3: Scope Creep Temptation (Day 10)**
{Trainee may be tempted to add features}
- Situation: {Tempting additional feature}
- What to do: {Stay within scope, discuss with mentor first}

### When to Ask for Help
- Stuck for more than 2 hours on single issue
- Uncertain about architectural decision
- Ambiguity in requirements
- Need clarification on acceptance criteria
- Found major blocker not anticipated

### When NOT to Ask for Help (Figure it out!)
- Syntax errors or small bugs
- How to use already-learned concepts
- Finding documentation
- Writing tests for straightforward code

---

## Evaluation Criteria

Your capstone will be reviewed by multiple specialists:

### Technical Review (Tech Lead)
- Code quality and maintainability
- Adherence to coding standards
- Testing comprehensiveness and quality
- Error handling and edge cases

### Architectural Review (Architect) {if applicable}
- System design decisions
- Component/module structure
- API design (if applicable)
- Scalability considerations

### Testing Review (Manual Tester)
- Test coverage and quality
- Accuracy of test scenarios
- Bug identification and handling
- Overall quality assurance

### Overall Capstone Assessment (Mentor)
- Completeness of acceptance criteria
- Code quality vs beginner expectations
- Problem-solving approach
- Independence and resourcefulness
- Production readiness demonstration

**Passing Criteria:**
- All "Must Have" acceptance criteria met
- All tests passing (unit + integration/component + E2E)
- No critical issues from any reviewer
- Minimum code quality standard met
- Demonstrates production-ready potential

---

## Submission Instructions

### Implementation Location
Store your implementation in:
```
docs/training/{trainee-name}/capstone/{project-name}/
├── implementation/ (your code here)
├── README.md (setup and run instructions)
└── IMPLEMENTATION-NOTES.md (your approach, decisions, challenges)
```

### What to Submit
1. **Complete implementation** meeting all Must Have criteria
2. **All tests** with coverage report
3. **README.md** with:
   - Setup instructions
   - How to run application
   - How to run tests
4. **IMPLEMENTATION-NOTES.md** with:
   - Architectural decisions and rationale
   - Challenges faced and how solved
   - Trade-offs made
   - What you learned
   - What you'd improve with more time

### Submission Checklist
Before submitting for review:
- [ ] All Must Have acceptance criteria met
- [ ] All tests passing (unit + integration + E2E)
- [ ] Test coverage ≥80%
- [ ] No linter errors
- [ ] README.md complete
- [ ] IMPLEMENTATION-NOTES.md complete
- [ ] Code follows project standards
- [ ] Git commit history clean and meaningful
- [ ] Edge cases handled
- [ ] Error handling implemented

### How to Submit
1. Ensure all files in correct location
2. Run final test suite and capture results
3. Notify Mentor: "Capstone project ready for review"
4. Mentor will invoke specialist reviewers
5. Await comprehensive feedback

---

## Timeline & Milestones

**Estimated Duration:** {1-3 weeks based on complexity}

**Milestones:**
- Day 2: Implementation plan approved ✅
- Day 8: Core functionality complete ✅
- Day 12: All Must Have criteria complete ✅
- Day 15: Submitted for review ✅

**If Taking Longer:**
- Communicate with Mentor about blockers
- May need to descope to Must Have only
- That's okay! Real projects adjust scope too.

---

## Success Indicators

**This capstone validates you can:**
- ✅ Implement a feature from user story to working code
- ✅ Make architectural decisions independently
- ✅ Write comprehensive tests
- ✅ Follow team coding standards
- ✅ Handle ambiguity and blockers
- ✅ Deliver production-ready code
- ✅ Document your work professionally

**Passing this capstone means:**
You're ready for supervised production work! 🎉

You'll still need mentoring, but you have the foundational skills to contribute to real features with appropriate support.

---

## Additional Resources

**Relevant Documentation:**
- Developer Guide: docs/developer-guide/
- Architecture Docs: docs/arc42/ {if applicable}
- Project Instructions: CLAUDE.md
- Previous Tutorials: docs/training/{trainee-name}/

**Example Projects:**
{Link to similar production code if available}

**Research Starting Points:**
- {Resource for new challenge 1}
- {Resource for new challenge 2}

---

**Questions?** Ask Mentor for clarification. In real production, you'd ask Product Owner or Tech Lead!
```

### 5. Store Capstone Project

**Save Project Document:**
- Location: docs/training/{trainee-name}/capstone/{project-name}.md
- Create capstone directory if first capstone

**Update Progress Tracker:**
- Update status to "Capstone Project Assigned"
- Add capstone section with:
  - Project name and start date
  - Expected completion date
  - Status: "Not Started"

**Create Implementation Directory:**
- Create docs/training/{trainee-name}/capstone/{project-name}/
- Add .gitkeep or README placeholder

### 6. Present Capstone to Trainee and Senior Developer

**To Trainee:**
- Present capstone as exciting milestone
- Walk through all sections to ensure understanding
- Clarify expectations and evaluation criteria
- Emphasize this is production simulation
- Answer questions about scope and requirements
- Set timeline expectations
- Schedule check-in milestones

**To Senior Developer:**
- Present capstone design with rationale
- Explain skill coverage and new challenges
- Discuss evaluation criteria
- Get approval before trainee starts
- Discuss expected timeline
- Arrange for specialist reviewer availability

## Validation

**Before completing, MUST verify:**
- Trainee readiness ≥70% (recommend 80%+)
- Project scope appropriate for 1-3 weeks
- Acceptance criteria clear and testable
- Project covers 4-6 completed topics
- Introduces 1-2 appropriate new challenges
- Realistic simulation of production work
- Evaluation criteria clear
- All documentation complete
- Product Owner format incorporated (if available)

**If validation fails:**
- Adjust project scope to match trainee level
- Clarify vague acceptance criteria
- Add missing evaluation criteria
- Ensure realistic timeline

## Error Handling

- IF trainee not ready (readiness <70%) → Do not proceed, return to tutorials
- IF project scope too large → Reduce to Must Have criteria only
- IF project scope too small → Add Should Have or Could Have criteria
- IF new challenges too advanced → Replace with appropriate-level challenges
- IF unclear requirements → Consult Product Owner or Senior Developer

## Handoff Contract

**Input:**
- trainee-name: String (required)
- project-name: String (required)
- Progress tracker: docs/training/{trainee-name}/progress-tracker.md
- Trainee profile: docs/training/{trainee-name}/profile.md
- All completed tutorials: docs/training/{trainee-name}/{topics}/

**Output:**
- Capstone project document: docs/training/{trainee-name}/capstone/{project-name}.md
- Implementation directory: docs/training/{trainee-name}/capstone/{project-name}/
- Updated progress tracker: docs/training/{trainee-name}/progress-tracker.md

**Next Agents:**
- human (trainee) - Implements capstone project
- junior-developer-mentor (review-capstone) - After trainee submits for review

**Trigger Conditions:**
- Capstone designed → Trainee begins implementation
- Trainee submits → Trigger review-capstone command

## Dependencies

**Required for this command:**
- Trainee profile: docs/training/{trainee-name}/profile.md
- Progress tracker: docs/training/{trainee-name}/progress-tracker.md
- All completed tutorials: docs/training/{trainee-name}/{topics}/
- Project standards: docs/developer-guide/
- Organizational principles: organizational-principles.yaml

**Optional:**
- Product Owner for user story format
- Example production stories for templates
- Architecture documentation for constraints
