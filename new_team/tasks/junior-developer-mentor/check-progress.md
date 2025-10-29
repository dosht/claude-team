# check-progress

## Purpose
Evaluate trainee progress on specific topic or overall development, update progress tracker, and recommend next steps.

## Parameters
- trainee-name (required) - Trainee identifier (e.g., john-smith)
- topic (optional) - Specific topic to evaluate (if omitted, evaluate overall progress)

## Workflow

### 1. Load Trainee Context

**Load All Relevant Files:**
- Profile: docs/training/{trainee-name}/profile.md
- Progress tracker: docs/training/{trainee-name}/progress-tracker.md
- Latest assessment: docs/training/{trainee-name}/assessments/
- If topic specified:
  - Tutorial: docs/training/{trainee-name}/{topic}/tutorial-*.md
  - Exercise submissions: docs/training/{trainee-name}/{topic}/exercises/trainee-submission-*.{ext}
- If overall progress: Load all topics and submissions

### 2. Evaluate Progress

**For Topic-Specific Progress:**

**Review Exercise Submissions:**
- Load all trainee submissions for topic
- Compare with solution files
- Evaluate for:
  - Correctness of implementation
  - Understanding of concepts (not just copying)
  - Code quality and style
  - Completion of requirements
  - Creative extensions or insights

**Assess Mastery Level:**
- Guided exercises (Part 3):
  - Score: Completion + correctness + approach
  - Expected: 80%+ correct for progression
- Independent exercises (Part 4):
  - Score: Full requirements + quality + best practices
  - Expected: 70%+ correct for mastery
- Challenge problems (Part 5):
  - Score: Problem-solving approach + implementation quality
  - Expected: 50%+ for advanced mastery (optional)

**Evaluate Understanding vs Memorization:**
- Check if trainee can:
  - Explain "why" not just "what"
  - Apply concepts to slightly different scenarios
  - Identify and fix bugs in code
  - Make independent decisions with rationale

**Identify Patterns:**
- Strengths: What trainee excels at
- Struggles: Recurring errors or misunderstandings
- Learning velocity: Fast/moderate/slow progression
- Help-seeking behavior: Appropriate or needs guidance

**For Overall Progress:**

**Aggregate Topic Scores:**
- Calculate completion percentage per topic
- Calculate average mastery score per topic
- Identify completed vs in-progress vs not started

**Assess Trajectory:**
- Compare current skills to initial topic assessments
- Calculate skill improvement rates across all assessed topics
- Identify acceleration or deceleration patterns per topic
- Predict time to production readiness based on topic coverage

**Evaluate Readiness Dimensions:**
- Technical skills: Proficiency in required technologies
- Problem-solving: Independent debugging and research
- Code quality: Adherence to standards and best practices
- Testing: Ability to write comprehensive tests
- Collaboration: Following team processes and patterns

### 3. Generate Progress Report

**Topic-Specific Progress Report Template:**

```markdown
# Progress Report: {Topic} - {Trainee Name}

**Date:** {date}
**Tutorial Version:** {version}
**Evaluated By:** Junior Developer Mentor

## Summary
{2-3 sentence overview of progress}
**Mastery Level:** {X%} - {Not Started / Beginner / Developing / Proficient / Mastery}

## Exercise Evaluation

### Guided Exercises (Part 3)
| Exercise | Submitted | Correctness | Approach Quality | Notes |
|----------|-----------|-------------|------------------|-------|
| Exercise 1 | ✅ | 90% | Good | {specific feedback} |
| Exercise 2 | ✅ | 75% | Needs improvement | {specific feedback} |

**Overall Guided Exercises:** {X%}

### Independent Exercises (Part 4)
| Exercise | Submitted | Requirements Met | Code Quality | Best Practices | Notes |
|----------|-----------|------------------|--------------|----------------|-------|
| Exercise 3 | ✅ | 80% | Good | Partial | {specific feedback} |
| Exercise 4 | ❌ | - | - | - | Not submitted |

**Overall Independent Exercises:** {X%}

### Challenge Problems (Part 5)
{If attempted}
- Approach: {evaluation}
- Implementation: {evaluation}
- Creativity: {evaluation}

## Strengths Demonstrated
1. {Specific strength with example from code}
2. {Specific strength with example from code}

## Areas for Improvement
1. {Specific gap with example from code}
   **Recommendation:** {How to address}
2. {Specific gap with example from code}
   **Recommendation:** {How to address}

## Conceptual Understanding
**Depth of Understanding:** {Surface / Developing / Solid / Deep}
- Can explain concepts: {Yes/Partially/No}
- Applies to new scenarios: {Yes/Partially/No}
- Identifies edge cases: {Yes/Partially/No}

## Learning Velocity
**Pace:** {Fast / Moderate / Slow}
**Time to Complete:** {X hours/days} (vs estimated {Y hours})
**Comparison to Initial Assessment:** {Faster/Same/Slower than expected}

## Next Steps

### Ready to Progress?
**Status:** {Yes, ready for next topic / Needs remediation / Needs more practice}

**If Ready:**
- Next recommended topic: {topic}
- Why: {Builds on current knowledge / Required for goals}

**If Remediation Needed:**
- Focus areas: {specific concepts}
- Suggested activities: {exercises, review materials}
- Re-assessment timeline: {X days}

**If More Practice Needed:**
- Additional exercises: {links or descriptions}
- Review materials: {sections to revisit}
```

**Overall Progress Report Template:**

```markdown
# Overall Progress Report - {Trainee Name}

**Date:** {date}
**Training Start Date:** {date}
**Days in Training:** {X}
**Evaluated By:** Junior Developer Mentor

## Executive Summary
{3-4 sentence summary of overall progress}
**Production Readiness:** {X%}
**Estimated Time to Production:** {X weeks/months}

## Topics Completion Status

### Completed Topics ({X} topics)
| Topic | Completion Date | Final Score | Mastery Level |
|-------|----------------|-------------|---------------|
| {topic} | {date} | 85% | Proficient |
| {topic} | {date} | 78% | Developing |

### In Progress ({X} topics)
| Topic | Started | Progress | Current Score | Status |
|-------|---------|----------|---------------|--------|
| {topic} | {date} | 60% | 72% | On track |
| {topic} | {date} | 30% | - | Struggling - needs support |

### Planned Topics ({X} topics)
| Topic | Priority | Prerequisites Met | Estimated Start |
|-------|----------|-------------------|-----------------|
| {topic} | High | Yes | {date} |
| {topic} | Medium | No - needs {X} | {date} |

## Skill Development Trends

**Technical Skills:**
- First Topics: {score} → Recent Topics: {score} ({+/-X% change})
- Trajectory: {Improving/Stable/Declining}

**Problem Solving:**
- First Topics: {score} → Recent Topics: {score} ({+/-X% change})
- Trajectory: {Improving/Stable/Declining}

**Code Quality:**
- First Topics: {score} → Recent Topics: {score} ({+/-X% change})
- Trajectory: {Improving/Stable/Declining}

**Learning Velocity:**
- Average completion time vs estimated: {faster/slower by X%}
- Topic mastery rate: {X topics per month}
- Acceleration: {Speeding up/Steady/Slowing down}

## Strengths & Growth Areas

**Key Strengths:**
1. {Strength area} - Consistently scores {X%}+
2. {Strength area} - Fast learner in this domain

**Growth Areas:**
1. {Gap area} - Scores averaging {X%}
   **Impact:** {How this affects readiness}
   **Plan:** {Remediation strategy}
2. {Gap area}
   **Impact:** {How this affects readiness}
   **Plan:** {Remediation strategy}

## Learning Patterns Observed

**What Works Well:**
- {Learning style preference that's effective}
- {Type of exercise that trainee excels at}

**Challenges:**
- {Area where trainee consistently struggles}
- {Pattern of mistakes or misunderstandings}

**Recommendations for Future Tutorials:**
- {Adaptation suggestion based on patterns}
- {Focus area for upcoming content}

## Production Readiness Assessment

### Readiness Dimensions
| Dimension | Current Level | Required Level | Gap | Priority |
|-----------|---------------|----------------|-----|----------|
| Technical Proficiency | Junior | Mid Junior | -10% | High |
| Problem Solving | Developing | Proficient | -30% | Critical |
| Code Quality | Developing | Proficient | -25% | High |
| Testing Skills | Beginner | Developing | -40% | Critical |
| Team Collaboration | N/A | Developing | - | Medium |

**Overall Assessment:**
{Paragraph explaining readiness for production work}

**Timeline to Production:**
- Optimistic: {X weeks} (if current pace accelerates)
- Realistic: {Y weeks} (if current pace maintains)
- Conservative: {Z weeks} (if any setbacks)

## Recommended Next Steps

### Immediate (Next 1-2 weeks)
1. {Action item with rationale}
2. {Action item with rationale}

### Short Term (Next 1 month)
1. {Action item with rationale}
2. {Action item with rationale}

### Milestone Decision Point
**When:** {After completing X topics OR {date}}
**Decision:** {Proceed to capstone OR additional remediation}
**Criteria:** {What must be achieved}

## Flags & Concerns
{Any red flags, blockers, or concerns needing escalation}
{Leave empty if none}
```

### 4. Update Progress Tracker

**Update docs/training/{trainee-name}/progress-tracker.md:**

**For Topic-Specific Check:**
- Update topic progress percentage
- Update current score for topic
- Move to "Completed" if mastery achieved
- Flag if struggling (scores < 60% or multiple attempts)
- Update status (On Track / Needs Support / Blocked)
- Update "Last Updated" timestamp

**For Overall Progress Check:**
- Recalculate all aggregates (completion %, readiness %)
- Update skill development trends
- Update estimated time to production
- Update overall status
- Add any new flags or concerns
- Update "Last Updated" timestamp

### 5. Determine Next Actions

**Decision Tree:**

**If Topic Mastery Achieved (70%+ on independent exercises):**
- Mark topic complete
- Recommend next topic in learning path
- Trigger create-tutorial for next topic (if approved)

**If Developing but Not Mastery (50-70%):**
- Provide additional practice exercises
- Schedule follow-up check-progress in 1 week
- Offer targeted remediation materials

**If Struggling (<50%):**
- ESCALATE to senior developer
- Recommend tutorial revision or alternative approach
- Schedule 1-on-1 mentoring session
- Investigate if prerequisite gaps exist

**If Overall Readiness >80%:**
- Recommend capstone project
- Trigger design-capstone command

**If Multiple Topics Showing Struggles:**
- ESCALATE to senior developer
- Reassess learning plan and timeline
- Consider different teaching approach

### 6. Present Report and Recommendations

**To Trainee:**
- Share progress report
- Celebrate strengths and growth
- Provide specific, actionable feedback on gaps
- Clarify next steps and expectations
- Encourage questions and self-reflection

**To Senior Developer:**
- Provide executive summary
- Highlight any concerns or flags
- Recommend next actions
- Request approval for next steps
- Escalate if trainee not progressing

## Validation

**Before completing, MUST verify:**
- All submitted exercises reviewed and scored
- Scores calculated consistently with rubrics
- Progress tracker updated accurately
- Next steps clear and actionable
- Escalation triggered if appropriate
- Report stored in correct location

**If validation fails:**
- Review scoring for consistency
- Add missing specific examples in feedback
- Clarify vague recommendations
- Ensure progress tracker calculations correct

## Error Handling

- IF no submissions found → Check with trainee, may not have started yet
- IF submissions incomplete → Partial evaluation with note in report
- IF progress significantly below expected → Escalate immediately
- IF trainee completed ahead of schedule → Accelerate to next topic
- IF same mistakes repeated → Tutorial may need revision

## Handoff Contract

**Input:**
- trainee-name: String (required)
- topic: String (optional)
- Trainee profile: docs/training/{trainee-name}/profile.md
- Progress tracker: docs/training/{trainee-name}/progress-tracker.md
- Tutorial: docs/training/{trainee-name}/{topic}/tutorial-*.md (if topic specified)
- Exercise submissions: docs/training/{trainee-name}/{topic}/exercises/trainee-submission-*

**Output:**
- Progress report: docs/training/{trainee-name}/assessments/progress-{topic}-{date}.md OR overall-progress-{date}.md
- Updated progress tracker: docs/training/{trainee-name}/progress-tracker.md
- Recommendations for next steps

**Next Agents:**
- junior-developer-mentor (create-tutorial) - If ready for next topic
- junior-developer-mentor (design-capstone) - If overall readiness >80%
- human (senior-developer) - If escalation needed for struggling trainee

**Trigger Conditions:**
- Mastery achieved → Automatic next tutorial creation (if path approved)
- Readiness >80% → Prompt for capstone project
- Struggling (<50%) → Escalate to human immediately

## Dependencies

**Required for this command:**
- Trainee profile: docs/training/{trainee-name}/profile.md
- Progress tracker: docs/training/{trainee-name}/progress-tracker.md
- Tutorial files: docs/training/{trainee-name}/{topic}/tutorial-*.md
- Exercise submissions: docs/training/{trainee-name}/{topic}/exercises/
- Solution files for comparison: docs/training/{trainee-name}/{topic}/exercises/solution-*.md

**Optional:**
- Previous assessments for trend analysis
- Project standards for quality evaluation
- Industry benchmarks for calibration
