# assess-trainee

## Purpose
Conduct incremental topic-based quiz assessment to evaluate trainee knowledge and build their profile progressively over time.

## Parameters
- trainee-name (optional) - Trainee identifier (e.g., john-smith). If not provided, list existing trainees
- topic (optional) - Specific topic to assess. If not provided, show topic selection menu

## Philosophy
This command uses **incremental assessment** - building trainee profiles one topic at a time through focused quizzes. NO comprehensive baseline assessment covering everything upfront. Each assessment adds to/updates the trainee's accumulated knowledge profile.

## Workflow

**IMPORTANT: File Management Rules**
- ALL trainee files MUST be stored within docs/training/{trainee-name}/
- ALL file references MUST use markdown links: `[description](relative/path/to/file.md)`
- NO trainee files outside their designated folder

### 1. List Existing Trainees OR Create New Profile

**Check for Existing Trainees:**
- Scan docs/training/ directory for existing trainee profiles
- If profiles exist, display summary list:
  ```
  Existing Trainees:

  1. john-smith
     - Current Level: Junior
     - Completed Topics: 3 (React basics, Git fundamentals, Testing intro)
     - In Progress: React hooks (60% complete)
     - Last Activity: 2024-10-25
     - Status: On Track

  2. sarah-jones
     - Current Level: Beginner
     - Completed Topics: 1 (JavaScript fundamentals)
     - In Progress: None
     - Last Activity: 2024-10-20
     - Status: Needs Support

  Choose:
  - Enter trainee number to select existing trainee
  - Enter 'new' to add new trainee
  ```

**If No Existing Trainees OR User Selects 'new':**
- Collect basic trainee information:
  - Name (for identifier generation)
  - Role goal (frontend/backend/full-stack/mobile/etc.)
  - Prior experience level (complete beginner/some experience/experienced in other languages)
  - Learning preferences (visual/hands-on/theoretical/mixed)
  - Time availability (hours per week)
  - Timeline goals (target completion date)
- Create directory structure: docs/training/{trainee-name}/
- Create profile.md with collected information
- Create empty progress-tracker.md with template
- Create assessments/ and capstone/ subdirectories
- Proceed to topic selection

### 2. Topic Selection

**For Existing Trainee:**
- Load progress-tracker.md
- Display completed topics with scores:
  ```
  Trainee: john-smith

  Completed Topics:
  1. React basics - Score: 4.2/5 - Completed: 2024-10-15
  2. Git fundamentals - Score: 4.8/5 - Completed: 2024-10-18
  3. Testing intro - Score: 3.5/5 - Completed: 2024-10-22

  In Progress:
  - React hooks (60% complete, last activity: 2024-10-25)

  Available for Assessment:
  - Continue current topic: React hooks
  - Re-assess completed topic (for improvement)
  - Start new topic (enter topic name)

  Choose option or enter new topic:
  ```

**For New Trainee:**
- Suggest starting topics based on role goal and experience level:
  ```
  Recommended Starting Topics for Frontend Developer (Some Experience):

  1. JavaScript ES6+ Fundamentals
  2. React Basics
  3. Git Version Control
  4. CSS Flexbox and Grid
  5. Browser DevTools

  Or enter custom topic:
  ```

**Topic Scope Validation:**
- When user enters/selects topic, validate scope
- If topic too broad (e.g., "Full-stack development", "React", "Web development"):
  ```
  Topic Scope Issue: "Full-stack development" is too broad for a single assessment

  Suggested Split:
  1. Frontend Fundamentals (HTML, CSS, JavaScript basics)
  2. Frontend Frameworks (React/Vue/Angular specific)
  3. Backend Basics (Node.js, REST APIs)
  4. Database Fundamentals (SQL/NoSQL)
  5. DevOps Basics (Git, CI/CD, Docker intro)

  Please select one focused topic from above or specify your own focused topic:
  ```
- Validate topic is focused enough for 10-15 question quiz
- Examples of good scope:
  - ✓ "React hooks"
  - ✓ "Git branching and merging"
  - ✓ "JavaScript promises and async/await"
  - ✓ "CSS Flexbox"
  - ✗ "React" (too broad → split into React basics, React hooks, React performance, etc.)
  - ✗ "Web development" (too broad → split by specific technologies)
  - ✗ "Frontend" (too broad → split by specific skills)

### 3. Generate Calibrated Quiz

**Load Trainee Context:**
- Read profile.md for learning style and preferences
- Read progress-tracker.md for current level and completed topics
- Identify trainee's current proficiency level:
  - **Beginner**: No completed topics, or average score < 3.0
  - **Junior**: 1-5 completed topics, average score 3.0-4.0
  - **Intermediate**: 6+ completed topics, average score 4.0-4.5
  - **Advanced**: 10+ completed topics, average score 4.5+

**Generate Quiz Questions:**
- Create 10-15 questions based on topic complexity
- Distribute difficulty levels based on trainee level:

  **For Beginner:**
  - 60% Easy (foundational concepts, definitions, basic usage)
  - 30% Medium (practical application, common patterns)
  - 10% Hard (edge cases, deeper understanding)

  **For Junior:**
  - 40% Easy (verify fundamentals solid)
  - 40% Medium (practical scenarios)
  - 20% Hard (problem-solving, optimization)

  **For Intermediate:**
  - 20% Easy (quick verification)
  - 50% Medium (complex scenarios)
  - 30% Hard (advanced concepts, best practices)

  **For Advanced:**
  - 10% Easy (sanity check)
  - 40% Medium (complex integration)
  - 50% Hard (architecture, trade-offs, performance)

**Question Types Mix:**
- Multiple choice (quick knowledge verification)
- Code completion (practical understanding)
- Debugging problems (problem-solving skills)
- Scenario-based (application of concepts)
- Explanation questions (deeper understanding)

**Quiz Structure:**
```markdown
# Quiz: {Topic Name}
**Trainee:** {trainee-name}
**Date:** {date}
**Target Level:** {beginner/junior/intermediate/advanced}
**Estimated Time:** {20-30 minutes}

## Instructions
- Answer all questions to the best of your ability
- You may use documentation for reference (specify if open-book or closed-book)
- Take your time and explain your reasoning
- If stuck, mark the question and move on

---

## Question 1 (Easy)
**Topic Area:** {specific concept}
**Type:** Multiple Choice

{Question text}

A) {option}
B) {option}
C) {option}
D) {option}

---

## Question 2 (Medium)
**Topic Area:** {specific concept}
**Type:** Code Completion

{Question with code snippet}

```javascript
// Complete the following code
function example() {
  // Your code here
}
```

---

{Continue for 10-15 questions}
```

**Store Quiz:**
- Save to docs/training/{trainee-name}/assessments/{topic-slug}-quiz-{date}.md
- Present to trainee for completion
- Reference using markdown link: `[{Topic} Quiz](docs/training/{trainee-name}/assessments/{topic-slug}-quiz-{date}.md)`

### 4. Evaluate Quiz Responses

**Wait for Trainee Completion:**
- Trainee completes quiz and submits responses
- Responses stored in docs/training/{trainee-name}/assessments/{topic-slug}-responses-{date}.md

**Evaluate Each Question:**
- Score each question (0-5 scale)
- Provide specific feedback per question:
  - What was correct
  - What was incorrect or incomplete
  - Why (explain the concept)
  - How to improve (actionable advice)
  - Additional resources if needed

**Calculate Overall Topic Score:**
- Average all question scores
- Weight by difficulty if appropriate (hard questions count more)
- Calculate percentage correct by difficulty level
- Determine mastery level:
  - 0-2.5: Needs significant work
  - 2.5-3.5: Basic understanding, needs practice
  - 3.5-4.5: Good understanding, ready for next level
  - 4.5-5.0: Strong mastery, ready for advanced concepts

### 5. Generate Assessment Report

**Report Structure:**
```markdown
# Topic Assessment: {Topic Name}

**Trainee:** {trainee-name}
**Date:** {date}
**Quiz Version:** {topic-slug}-quiz-{date}.md
**Assessed By:** Junior Developer Mentor

---

## Overall Score: {X.X}/5.0

**Mastery Level:** {Needs Work / Basic / Good / Strong}
**Recommendation:** {Continue with exercises / Ready for next topic / Needs review}

---

## Score Breakdown by Difficulty

| Difficulty | Questions | Correct | Score | Percentage |
|------------|-----------|---------|-------|------------|
| Easy       | {n}       | {n}     | {X}/5 | {XX%}      |
| Medium     | {n}       | {n}     | {X}/5 | {XX%}      |
| Hard       | {n}       | {n}     | {X}/5 | {XX%}      |

---

## Detailed Question Feedback

### Question 1 - {Topic Area} (Easy)
**Score:** {X}/5
**Your Answer:** {trainee's answer}
**Evaluation:**
✓ Correct aspects: {what was right}
✗ Incorrect aspects: {what was wrong}
**Explanation:** {why and how the concept works}
**To Improve:** {specific actionable advice}

### Question 2 - {Topic Area} (Medium)
{repeat structure}

---

## Strengths Identified
1. {Specific strength with example from quiz}
2. {Specific strength with example from quiz}
3. {Specific strength with example from quiz}

## Areas for Improvement
1. {Specific gap with example from quiz}
   - **Why it matters:** {context}
   - **How to improve:** {specific actions}
   - **Resources:** {links or references}

2. {Specific gap with example from quiz}
   {repeat structure}

---

## Learning Style Observations
- {Observed from response patterns: methodical, intuitive, detail-oriented, etc.}
- {How trainee approaches problems}
- {Preferred learning mode if evident}

---

## Next Steps

### Immediate Actions
1. {Specific action based on results, e.g., "Review React hooks lifecycle documentation"}
2. {Specific action, e.g., "Practice 3-5 coding exercises on topic X"}
3. {Specific action, e.g., "Schedule follow-up assessment in 1 week"}

### Ready for Next Topic?
{YES / NO / PARTIAL - with explanation}

**If YES:** Recommended next topics:
1. {Topic} - {Why it's a good next step}
2. {Topic} - {Alternative option}

**If NO:** Remediation plan:
1. {Specific tutorial or exercise}
2. {Practice problems to complete}
3. {Re-assessment criteria}

**If PARTIAL:**
Current topic score sufficient for basics, but strengthen these areas:
- {Area to improve}
- {Area to improve}

---

## Progress Update
- Total Topics Assessed: {n}
- Average Score Across All Topics: {X.X}/5.0
- Current Level: {Beginner/Junior/Intermediate/Advanced}
- Estimated Production Readiness: {X%}

---

## Attachments
- Quiz: [{topic-slug}-quiz-{date}.md](docs/training/{trainee-name}/assessments/{topic-slug}-quiz-{date}.md)
- Responses: [{topic-slug}-responses-{date}.md](docs/training/{trainee-name}/assessments/{topic-slug}-responses-{date}.md)
```

**Store Report:**
- Save to docs/training/{trainee-name}/assessments/{topic-slug}-assessment-{date}.md
- Reference using markdown link: `[{Topic} Assessment](docs/training/{trainee-name}/assessments/{topic-slug}-assessment-{date}.md)`

### 6. Update Progress Tracker

**Update docs/training/{trainee-name}/progress-tracker.md:**

**Add/Update Topic Entry:**
- If new topic: Add to "In Progress" or "Completed" based on score
- If existing topic: Update score, completion date, status

**Update Overall Metrics:**
- Recalculate average score across all topics
- Update current level (beginner/junior/intermediate/advanced)
- Update production readiness percentage
- Add learning velocity metrics (topics per week/month)

**Flag Issues if Needed:**
- If score < 2.5 on multiple consecutive topics → Flag "Needs Support"
- If no activity for > 2 weeks → Flag "Inactive"
- If stuck on same topic for > 3 assessments → Flag "Blocked"

**Progress Tracker Template:**
```markdown
# Progress Tracker - {Trainee Name}

**Last Updated:** {auto-updated date}
**Current Level:** {Beginner / Junior / Intermediate / Advanced}
**Start Date:** {date}
**Topics Assessed:** {n}
**Average Score:** {X.X}/5.0
**Production Readiness:** {X%}

---

## Current Status

**Overall:** {On Track / Needs Support / Blocked / Inactive}
**Latest Activity:** {topic-name} assessed on {date}
**Next Milestone:** {description}

---

## Completed Topics (Score ≥ 3.5)

| Topic | Assessment Date | Score | Mastery Level | Notes |
|-------|----------------|-------|---------------|-------|
| React basics | 2024-10-15 | 4.2/5 | Good | Strong fundamentals, ready for hooks |
| Git fundamentals | 2024-10-18 | 4.8/5 | Strong | Excellent understanding of branching |
| Testing intro | 2024-10-22 | 3.5/5 | Basic | Needs more practice with mocking |

---

## In Progress (Score < 3.5, Active)

| Topic | Started | Last Assessed | Current Score | Status | Issues |
|-------|---------|---------------|---------------|--------|--------|
| React hooks | 2024-10-23 | 2024-10-25 | 2.8/5 | Learning | useEffect confusion, needs practice |

---

## Available Topics (Not Yet Started)

**Recommended Next (based on completed topics):**
1. React Context API - Natural progression from hooks
2. React performance optimization - Build on hooks knowledge
3. TypeScript basics - Enhance code quality skills

**Future Topics (prerequisites not met yet):**
- Redux/State Management (needs Context API first)
- Next.js (needs React proficiency)
- Testing advanced patterns (needs testing basics mastery)

---

## Topic History & Trends

### React hooks (In Progress)
- Assessment 1 (2024-10-23): 2.2/5 - Initial exposure, basic understanding
- Assessment 2 (2024-10-25): 2.8/5 - Improving, useEffect still challenging
- **Trend:** ↑ Improving (0.6 point gain in 2 days)
- **Next:** More useEffect practice, re-assess in 3-5 days

### Testing intro (Completed)
- Assessment 1 (2024-10-22): 3.5/5 - Met minimum for completion
- **Status:** Ready to move on, but could revisit mocking later

---

## Skill Development Metrics

### By Difficulty Level
- Easy Questions: 92% correct (strong fundamentals)
- Medium Questions: 68% correct (good progress)
- Hard Questions: 45% correct (developing, expected for level)

### Learning Velocity
- Topics Assessed: 4 in 12 days = 0.33 topics/day
- Average Time per Topic: 3 days
- Estimated Topics to Production: 15-20 more topics
- Estimated Time to Production: 45-60 days at current pace

### Strength Areas
1. Visual/UI concepts (consistently high scores)
2. Problem-solving approach (methodical and thorough)
3. Documentation usage (effectively uses resources)

### Growth Areas
1. Asynchronous patterns (consistent challenge across topics)
2. Advanced debugging (needs more practice)
3. Performance optimization concepts (limited exposure so far)

---

## Readiness Indicators

**Production Readiness:** 25%
- Core Skills: 40% (React, Git, Testing basics covered)
- Advanced Skills: 10% (just starting intermediate concepts)
- Real-world Application: 0% (no capstone yet)

**Capstone Eligibility:** Not Yet
- **Criteria:** 10+ completed topics with average score ≥ 4.0
- **Current:** 3 completed topics with average score 4.2/5
- **Estimated:** Ready for capstone in 30-35 days

---

## Flags & Attention Needed

{None / List any concerns}

**Example Flags:**
- ⚠️ React hooks: Stuck for 3 assessments, consider alternative learning approach
- ⚠️ Inactive: No activity for 14 days, follow up with trainee
- ⚠️ Low scores: 3 consecutive topics scored < 3.0, may need foundational review

---

## Notes & Observations

**Learning Style:** Hands-on learner, prefers practical examples over theory
**Best Time for Learning:** Evenings, 2-3 hour focused sessions
**Communication Preference:** Written feedback with code examples
**Motivation Level:** High, consistently engaged and asks good questions

---

**Auto-Generated by Junior Developer Mentor**
**Manual edits will be preserved but auto-update sections will be refreshed**
```

### 7. Present Results and Recommendations

**Display to Senior Developer / Trainer:**
```
Assessment Complete: {topic-name} for {trainee-name}

Score: {X.X}/5.0 - {Mastery Level}

Key Findings:
✓ Strengths: {2-3 specific strengths}
✗ Gaps: {2-3 specific gaps}

Recommendation:
{Ready for next topic / Needs more practice / Requires remediation}

Next Steps:
1. {Immediate action}
2. {Follow-up action}

View full report: [{topic-name} Assessment](docs/training/{trainee-name}/assessments/{topic-slug}-assessment-{date}.md)
```

**Automatic Next Steps:**
- If score ≥ 4.0 → Suggest creating tutorial for next recommended topic
- If score 3.0-3.9 → Suggest additional practice exercises
- If score < 3.0 → Suggest remedial tutorial or different learning approach

**Escalate if:**
- Trainee scored < 2.5 on 3+ consecutive topic assessments
- Trainee inactive for > 2 weeks
- Trainee explicitly requests human mentor intervention
- Topic scope validation reveals fundamental knowledge gaps
- Trainee demonstrates readiness for capstone project

---

## Validation

**Before completing, MUST verify:**
- ✓ Existing trainees were listed (if any exist)
- ✓ Topic scope is appropriate (not too broad)
- ✓ Quiz has 10-15 questions with varying difficulty
- ✓ Quiz difficulty calibrated to trainee's current level
- ✓ Each question has detailed feedback in assessment report
- ✓ Assessment report is specific with examples from quiz
- ✓ Recommendations are actionable with clear next steps
- ✓ Progress tracker is updated accurately with new topic data
- ✓ All artifacts stored in correct locations

**If validation fails:**
- Review topic scope - suggest split if too broad
- Adjust quiz difficulty distribution
- Add missing specific feedback per question
- Clarify vague recommendations with specific actions
- Recalculate progress tracker metrics

---

## Error Handling

- **IF no trainees exist AND trainee-name not provided** → Show "No existing trainees. Create new trainee profile?"
- **IF trainee exists but topic too broad** → Show scope validation and suggest splits
- **IF trainee profile missing critical info** → Request from user before proceeding
- **IF quiz responses incomplete** → Prompt trainee to complete all questions
- **IF scoring rubric unclear for question** → Document uncertainty and adjust rubric
- **IF trainee not progressing on topic after 3+ assessments** → Escalate to senior developer
- **IF progress tracker calculations inconsistent** → Recalculate from all assessment files

---

## Handoff Contract

**Input:**
- trainee-name: String (optional - if missing, list existing trainees)
- topic: String (optional - if missing, show topic selection menu)
- Existing trainee data at docs/training/{trainee-name}/ (if trainee exists)

**Output:**
- Quiz at docs/training/{trainee-name}/assessments/{topic-slug}-quiz-{date}.md
- Assessment report at docs/training/{trainee-name}/assessments/{topic-slug}-assessment-{date}.md
- Updated profile at docs/training/{trainee-name}/profile.md (with accumulated topics)
- Updated progress tracker at docs/training/{trainee-name}/progress-tracker.md
- Recommended next steps (next topic OR more practice OR remediation)

**Next Agents:**
- **junior-developer-mentor (create-tutorial)** - IF score ≥ 4.0 and ready for next topic
- **junior-developer-mentor (check-progress)** - IF score 3.0-3.9 and needs practice
- **junior-developer-mentor (assess-trainee)** - IF score < 3.0 and needs remediation (re-assess after study)
- **human (senior-developer)** - IF trainee blocked, inactive, or ready for capstone

**Trigger Conditions:**
- Score ≥ 4.0 → Automatic create-tutorial for next recommended topic (requires approval)
- Score 3.0-3.9 → Manual check-progress after practice period
- Score < 3.0 → Manual remediation, then re-assess topic
- Flags raised → Human review required before proceeding

---

## Dependencies

**Required for this command:**
- All existing trainee profiles (if any): docs/training/*/
- Progress trackers: docs/training/*/progress-tracker.md
- Previous assessments: docs/training/*/assessments/
- Project standards: docs/developer-guide/ (for topic content reference)
- Organizational principles: organizational-principles.yaml

**Optional:**
- Project architecture: docs/arc42/ (for advanced topics)
- Other trainees' assessments: docs/training/*/ (for calibration)
- Industry references: External documentation for topic content

---

## Examples

### Example 1: First Assessment for New Trainee

**Input:**
```
assess-trainee
```

**Output:**
```
No existing trainees found. Create new trainee profile? (yes/no): yes

Trainee name: john-smith
Role goal (frontend/backend/full-stack): frontend
Prior experience (beginner/some/experienced): some
Learning preference (visual/hands-on/theoretical): hands-on
Time availability (hours/week): 10
Timeline goal (target date): 2025-01-15

Profile created at docs/training/john-smith/

Recommended starting topics:
1. JavaScript ES6+ Fundamentals
2. React Basics
3. Git Version Control

Select topic or enter custom: React Basics

Topic scope validated: ✓ "React Basics" is appropriately focused

Generating quiz calibrated to Beginner level...
Quiz generated: 12 questions (60% easy, 30% medium, 10% hard)

Quiz saved: [React Basics Quiz](docs/training/john-smith/assessments/react-basics-quiz-2024-10-29.md)

Please complete quiz and run assess-trainee again to evaluate results.
```

### Example 2: Existing Trainee, Topic Too Broad

**Input:**
```
assess-trainee trainee-name=sarah-jones topic="Full-stack development"
```

**Output:**
```
Trainee: sarah-jones found
Completed topics: 5
Current level: Junior

Topic Scope Issue: "Full-stack development" is too broad for a single assessment

Suggested Split:
1. Frontend Fundamentals (HTML, CSS, JavaScript ES6+)
2. React Component Architecture
3. State Management (Redux/Context)
4. RESTful API Design
5. Node.js and Express Basics
6. Database Design (SQL/NoSQL)
7. Authentication and Security
8. Deployment and DevOps Basics

Please select one focused topic: 4. RESTful API Design

Topic scope validated: ✓ "RESTful API Design" is appropriately focused

Generating quiz calibrated to Junior level (based on average score 3.8/5)...
Quiz generated: 14 questions (40% easy, 40% medium, 20% hard)

Quiz saved: [RESTful API Design Quiz](docs/training/sarah-jones/assessments/restful-api-design-quiz-2024-10-29.md)
```

### Example 3: Re-assessment After Practice

**Input:**
```
assess-trainee trainee-name=john-smith
```

**Output:**
```
Trainee: john-smith

Completed Topics:
1. React basics - 4.2/5 - 2024-10-15
2. Git fundamentals - 4.8/5 - 2024-10-18

In Progress:
- React hooks (last score: 2.8/5, assessed 2024-10-25)

Options:
1. Continue React hooks (re-assess after practice)
2. Start new topic
3. Re-assess completed topic

Select option: 1

Re-assessing React hooks...

Last assessment (2024-10-25): 2.8/5
Areas needing improvement:
- useEffect lifecycle understanding
- Dependency array management
- Custom hooks creation

Generating quiz calibrated to Junior level, focused on improvement areas...
Quiz generated: 13 questions (40% easy verification, 40% medium useEffect scenarios, 20% hard custom hooks)

Quiz saved: [React Hooks Quiz](docs/training/john-smith/assessments/react-hooks-quiz-2024-10-29.md)
```
