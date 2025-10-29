# assess-trainee

## Purpose
Conduct comprehensive skills assessment to establish baseline or measure progress for a junior developer trainee.

## Parameters
- trainee-name (required) - Trainee identifier (e.g., john-smith)
- assessment-type (required) - "baseline" or "progress"
- topic (optional) - Specific topic for progress assessment

## Workflow

### 1. Load or Create Trainee Profile

**Check Existing Profile:**
- Look for docs/training/{trainee-name}/profile.md
- If exists, load profile and previous assessments
- If new trainee, proceed to create profile

**Create Profile (if new trainee):**
- Collect trainee information:
  - Name, role goals (frontend, backend, full-stack, etc.)
  - Prior experience and education
  - Learning preferences (visual, hands-on, theoretical)
  - Time availability and timeline goals
  - Specific areas of interest
- Create directory structure: docs/training/{trainee-name}/
- Create profile.md with collected information
- Create empty progress-tracker.md with template

### 2. Design Assessment

**For Baseline Assessment:**
- Design comprehensive evaluation covering:
  - Programming fundamentals (data structures, algorithms)
  - Language proficiency (JavaScript, TypeScript, etc.)
  - Framework knowledge (React, Next.js, Node.js)
  - Testing practices (unit, integration, e2e)
  - Development tools (git, debugging, IDE)
  - Software engineering principles (SOLID, DRY, design patterns)
  - Problem-solving approach (debugging, research skills)
- Tailor complexity to role goals from profile
- Include practical coding exercises
- Include theoretical questions
- Include real-world scenario questions

**For Progress Assessment:**
- Load tutorial content from docs/training/{trainee-name}/{topic}/
- Review exercises and trainee submissions
- Design assessment focused on:
  - Mastery of tutorial content
  - Application of learned concepts
  - Understanding of "why" not just "how"
  - Ability to extend concepts to new scenarios
  - Common mistakes and misconceptions
- Include progressive difficulty levels

### 3. Conduct Assessment

**Administer Assessment:**
- Present questions/exercises clearly
- Provide appropriate time limits
- Allow access to documentation if realistic for task
- Observe problem-solving approach
- Note strengths and struggle areas

**Evaluate Responses:**
- Use consistent rubric (0-5 scale per skill area)
- Document specific strengths with examples
- Document knowledge gaps with specifics
- Identify learning style patterns
- Note misunderstandings vs lack of exposure

### 4. Generate Assessment Report

**Report Structure:**
```markdown
# {Assessment Type} Assessment - {Trainee Name}

**Date:** {date}
**Assessed By:** Junior Developer Mentor
**Assessment Type:** {baseline/progress}
{**Topic:** {topic}} (if progress assessment)

## Executive Summary
[2-3 sentence overall assessment]
**Overall Readiness:** {beginner/junior/intermediate/approaching-senior}

## Skills Assessment

### {Skill Area 1}
**Score:** {0-5}/5
**Strengths:**
- Specific strength with example
**Gaps:**
- Specific gap with example
**Recommendation:** {next steps}

### {Skill Area 2}
...

## Learning Style Observations
- {Observed preference: visual, hands-on, theoretical, etc.}
- {Pace: fast learner, needs time to absorb, etc.}
- {Approach: systematic, exploratory, etc.}

## Recommended Learning Path

### Priority 1: {Topic}
**Why:** {Critical foundation / Role requirement / Biggest gap}
**Estimated Time:** {X weeks}
**Prerequisites Met:** {Yes/No}

### Priority 2: {Topic}
...

## Next Steps
1. {Immediate action}
2. {Follow-up action}
3. {Long-term goal}

## Assessment Artifacts
{Link to code submissions, exercise responses, etc.}
```

**Store Report:**
- Save to docs/training/{trainee-name}/assessments/
- Filename: `{baseline|progress-{topic}}-{date}.md`

### 5. Update Progress Tracker

**Update docs/training/{trainee-name}/progress-tracker.md:**

For baseline assessment:
- Set initial status: "Assessment Complete"
- List recommended learning priorities
- Initialize topic tracking structure
- Set baseline scores for reference

For progress assessment:
- Update topic completion percentage
- Update skill scores for topic area
- Document progress velocity
- Flag if trainee struggling (multiple low scores)
- Update overall readiness level if significant progress

**Progress Tracker Template:**
```markdown
# Progress Tracker - {Trainee Name}

**Last Updated:** {auto-updated date}
**Overall Status:** {In Progress / Ready for Capstone / Production Ready}
**Start Date:** {date}
**Target Completion:** {date}

## Current Focus
**Topic:** {current topic}
**Started:** {date}
**Progress:** {X%}
**Status:** {On Track / Needs Support / Blocked}

## Completed Topics
| Topic | Completion Date | Final Score | Notes |
|-------|----------------|-------------|-------|
| {topic} | {date} | {X}/5 | {brief note} |

## In Progress
| Topic | Started | Progress | Current Score | Issues |
|-------|---------|----------|---------------|--------|
| {topic} | {date} | {X%} | {X}/5 | {none/issue} |

## Planned Topics
| Topic | Priority | Prerequisites | Est. Duration |
|-------|----------|---------------|---------------|
| {topic} | {1-5} | {list} | {X weeks} |

## Skill Development Trends
- Programming Fundamentals: {trend: improving/stable/regressing}
- Framework Knowledge: {trend}
- Testing Practices: {trend}
- Problem Solving: {trend}

## Overall Readiness
**Current Level:** {beginner/junior/intermediate/approaching-senior}
**Production Readiness:** {X%}
**Estimated Time to Production:** {X weeks/months}

## Flags & Attention Needed
{Any concerns, blockers, or items needing escalation}
```

### 6. Present Results and Recommendations

**For Baseline Assessment:**
- Present assessment report to senior developer
- Recommend initial tutorial sequence
- Discuss timeline and expectations
- Get approval for learning path

**For Progress Assessment:**
- Present progress report with trends
- Highlight achievements and growth
- Identify areas needing additional focus
- Recommend next tutorial or remediation
- Suggest if ready to advance to next topic

**Escalate if:**
- Trainee shows no progress after 2-3 assessments
- Fundamental gaps preventing advancement
- Learning pace significantly slower than expected
- Trainee consistently struggling despite support

## Validation

**Before completing, MUST verify:**
- Assessment report is comprehensive and specific
- Scores are calibrated consistently (use previous assessments for reference)
- Recommendations are actionable with clear next steps
- Progress tracker is updated accurately
- All artifacts are stored in correct locations

**If validation fails:**
- Review scoring rubric for consistency
- Add missing specific examples
- Clarify vague recommendations
- Correct progress tracker calculations

## Error Handling

- IF trainee profile missing critical information → Request from senior developer
- IF prior assessment results inconsistent → Review and recalibrate scoring
- IF trainee not progressing → Escalate to senior developer for intervention
- IF assessment reveals unrealistic timeline → Escalate to adjust expectations

## Handoff Contract

**Input:**
- trainee-name: String (required)
- assessment-type: "baseline" | "progress" (required)
- topic: String (optional, required if progress assessment)
- Profile at docs/training/{trainee-name}/profile.md (if exists)

**Output:**
- Assessment report at docs/training/{trainee-name}/assessments/{type}-{date}.md
- Updated progress tracker at docs/training/{trainee-name}/progress-tracker.md
- Recommended learning path with priorities
- Flagged issues if trainee struggling

**Next Agents:**
- junior-developer-mentor (create-tutorial) - Create tutorial for next priority topic
- human (senior-developer) - Review and approve learning path OR address concerns

**Trigger Conditions:**
- Assessment complete → Automatic generation of next tutorial (if path approved)
- Issues flagged → Human review required before proceeding

## Dependencies

**Required for this command:**
- Trainee profile (if exists): docs/training/{trainee-name}/profile.md
- Previous assessments (if exist): docs/training/{trainee-name}/assessments/
- Tutorial content (if progress assessment): docs/training/{trainee-name}/{topic}/
- Project standards: docs/developer-guide/
- Organizational principles: organizational-principles.yaml

**Optional:**
- Project architecture: docs/arc42/
- Other trainees' assessments for calibration
