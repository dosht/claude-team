# list-trainees

## Purpose
Display comprehensive overview of all trainees, their progress, and status to help senior developers manage training program.

## Parameters
- None (displays all trainees)

## Workflow

### 1. Discover All Trainees

**Scan Training Directory:**
- Look in docs/training/ for all subdirectories
- Each subdirectory represents a trainee
- List all trainee identifiers

**If No Trainees Found:**
- Report: "No trainees currently in training program"
- Suggest: "Use assess-trainee command to onboard first trainee"
- Exit gracefully

**If Trainees Found:**
- Proceed to load data for each trainee

### 2. Load Each Trainee's Data

**For Each Trainee, Load:**
- Profile: docs/training/{trainee-name}/profile.md
- Progress Tracker: docs/training/{trainee-name}/progress-tracker.md
- Latest Assessment: docs/training/{trainee-name}/assessments/ (most recent)
- Capstone Status: docs/training/{trainee-name}/capstone/ (if exists)

**Extract Key Metrics:**
- Overall status (In Progress, Ready for Capstone, Production Ready, etc.)
- Start date and duration in training
- Topics: Completed count, In Progress count, Planned count
- Completion percentage across all topics
- Production readiness percentage
- Current focus topic
- Capstone status (Not Started, In Progress, Under Review, Passed, Failed)
- Flags or concerns (if any)
- Last activity date

**Handle Missing Data:**
- If file missing, mark as "Data unavailable"
- If progress tracker empty, infer from other files
- If no recent activity, flag as "Inactive"

### 3. Categorize Trainees by Status

**Group trainees into categories:**

**Active - Production Ready (Ready to Deploy!):**
- Capstone passed
- Production readiness ≥90%
- Ready for real feature work

**Active - Capstone Phase:**
- Capstone in progress or under review
- High production readiness (70-90%)
- Near completion

**Active - Tutorial Phase:**
- Working through tutorials
- Moderate production readiness (30-70%)
- Steady progress

**Active - Initial Assessment:**
- Recently started
- First topic assessments complete (1-2 topics)
- Low production readiness (<30%)

**Needs Attention:**
- No progress in 7+ days
- Failing assessments repeatedly
- Stuck on same topic
- Flagged concerns in progress tracker

**Inactive:**
- No activity in 14+ days
- No recent progress updates

### 4. Calculate Program-Wide Statistics

**Overall Metrics:**
- Total trainees: {X}
- Active trainees: {Y}
- Production ready: {Z}
- Average time to production: {X days/weeks}
- Average completion rate: {X%}

**Status Breakdown:**
- Production Ready: {X trainees}
- Capstone Phase: {X trainees}
- Tutorial Phase: {X trainees}
- Initial Assessment: {X trainees}
- Needs Attention: {X trainees}
- Inactive: {X trainees}

**Success Metrics:**
- Capstone pass rate: {X%}
- Average topics completed per trainee: {X}
- Trainees graduated to production: {X}

### 5. Generate Trainees Overview Report

**Report Template:**

```markdown
# Training Program Overview

**Report Generated:** {date}
**Total Trainees:** {X}
**Active Trainees:** {Y}
**Production Ready:** {Z}

---

## Program Statistics

### Overall Metrics
- **Average Time to Production:** {X weeks}
- **Average Completion Rate:** {X%}
- **Capstone Pass Rate:** {X%}
- **Active Engagement Rate:** {X%}

### Status Distribution
| Status | Count | Percentage |
|--------|-------|------------|
| Production Ready | {X} | {Y%} |
| Capstone Phase | {X} | {Y%} |
| Tutorial Phase | {X} | {Y%} |
| Initial Assessment | {X} | {Y%} |
| Needs Attention | {X} | {Y%} |
| Inactive | {X} | {Y%} |

---

## Production Ready Trainees 🎉

{If none: "No trainees production ready yet. First group in progress!"}

### {Trainee Name 1}
- **Status:** ✅ Production Ready
- **Training Duration:** {X weeks}
- **Capstone:** {Project name} - Passed {date}
- **Strengths:** {Key strengths from capstone review}
- **Readiness:** {95%}
- **Recommended First Assignment:** {Suggestion based on strengths}

**Next Step:** Assign to supervised production feature

---

### {Trainee Name 2}
{Similar format}

---

## Capstone Phase 🎯

{If none: "No trainees in capstone phase currently."}

### {Trainee Name}
- **Status:** 🎯 Capstone In Progress
- **Training Duration:** {X weeks}
- **Capstone:** {Project name}
- **Started:** {date}
- **Expected Completion:** {date}
- **Progress:** {On track / Behind schedule / Ahead of schedule}
- **Last Check-in:** {date}
- **Readiness:** {X%}

**Next Milestone:** {Expected submission date or current blocker}

---

## Tutorial Phase 📚

{If none: "No trainees in tutorial phase currently."}

### {Trainee Name 1}
- **Status:** 📚 Tutorial Phase
- **Training Duration:** {X weeks}
- **Current Focus:** {Topic name}
- **Progress:** {X%} overall
- **Topics Completed:** {X}
- **Topics In Progress:** {X}
- **Topics Planned:** {X}
- **Readiness:** {X%}
- **Pace:** {Fast / Moderate / Slow}
- **Last Activity:** {date}

**Next Milestone:** {Complete current topic / Start next topic / Assessment}

---

### {Trainee Name 2}
{Similar format}

---

## Initial Assessment Phase 🔍

{If none: "No trainees in initial assessment phase."}

### {Trainee Name}
- **Status:** 🔍 Initial Assessment
- **Started:** {date}
- **Assessment Completed:** {Yes/No/In Progress}
- **Initial Readiness:** {X%}
- **Learning Path:** {Defined / In Progress}
- **First Tutorial:** {Topic} {Assigned / Not Yet Assigned}

**Next Step:** {Complete assessment / Assign first tutorial / Get learning path approval}

---

## Needs Attention ⚠️

{If none: "All trainees progressing well! ✅"}

### {Trainee Name 1}
- **Status:** ⚠️  Needs Attention
- **Issue:** {No progress in X days / Failing assessments / Stuck on topic / Flagged concern}
- **Training Duration:** {X weeks}
- **Current Phase:** {Phase}
- **Last Activity:** {date}
- **Concern Details:** {Specific concern from progress tracker}
- **Recommended Action:** {Specific intervention needed}

**Priority:** {High / Medium / Low}

---

### {Trainee Name 2}
{Similar format}

---

## Inactive Trainees 💤

{If none: "No inactive trainees. Great engagement! ✅"}

### {Trainee Name}
- **Status:** 💤 Inactive
- **Training Duration:** {X weeks}
- **Last Activity:** {date} ({X days ago})
- **Progress When Last Active:** {X%}
- **Phase When Last Active:** {Phase}
- **Recommended Action:** Check in with trainee / Archive profile / Resume training

---

## Recommendations for Training Program

### Immediate Actions Needed
{Based on "Needs Attention" and "Inactive" trainees}
1. {Action for specific trainee}
2. {Action for specific trainee}

### Resource Allocation
- **High Priority:** {X trainees needing immediate support}
- **Medium Priority:** {X trainees progressing normally}
- **Low Priority:** {X trainees independent and on track}

### Program Improvements
{Based on patterns across trainees}
- {Observation: e.g., "Multiple trainees struggling with testing topic"}
  **Suggestion:** {e.g., "Revise testing tutorial to add more examples"}
- {Observation}
  **Suggestion:** {Improvement}

### Capacity Assessment
- **Current Capacity:** {X active trainees}
- **Mentor Bandwidth:** {Available / At capacity / Overloaded}
- **Recommendation:** {Can onboard more / Maintain current / Reduce intake}

---

## Training Pipeline

**Next 2 Weeks:**
- Expected Capstone Submissions: {X trainees}
- Expected Topic Completions: {X milestones}
- Expected Production Ready: {X trainees}

**Next Month:**
- Projected Production Ready: {X trainees}
- Projected Capstone Phase: {X trainees}
- Projected Tutorial Completions: {X topics}

---

## Quick Reference

### Trainee Contact Info
{If available in profiles}
| Trainee | Email | Preferred Communication | Availability |
|---------|-------|-------------------------|--------------|
| {Name} | {email} | {Slack/Email/etc} | {Timezone/Hours} |

### Training Resources
- Training Directory: docs/training/
- Individual Profiles: docs/training/{trainee-name}/profile.md
- Progress Trackers: docs/training/{trainee-name}/progress-tracker.md

---

**Report End**

---

**Actions Required This Week:**
{Summary list of immediate actions based on report}
1. {High priority action}
2. {High priority action}
3. {Medium priority action}
```

### 6. Present Report

**To Senior Developer:**
- Present complete report
- Highlight immediate actions needed
- Discuss "Needs Attention" trainees
- Celebrate production-ready achievements
- Discuss resource allocation and capacity

**Interactive Options:**
- "Show details for trainee {name}" → Load and display full progress tracker
- "Show capstone for trainee {name}" → Display capstone project and review
- "Export report" → Save to file for sharing

### 7. Optional: Generate Visual Dashboard

**If supported, create visual representation:**

**Status Chart:**
```
Production Ready   [███████░░░] 70% (7 of 10)
Capstone Phase     [████░░░░░░] 20% (2 of 10)
Tutorial Phase     [███░░░░░░░] 10% (1 of 10)
Initial Assessment [░░░░░░░░░░]  0% (0 of 10)
```

**Progress Timeline:**
```
Trainee A  [████████████████░░] 80% (Week 8 of 10)
Trainee B  [███████████░░░░░░░] 60% (Week 6 of 10)
Trainee C  [████████░░░░░░░░░░] 40% (Week 4 of 10)
```

**Completion Velocity:**
```
Topics Completed per Week (Last 4 Weeks):
Week 1: ████████ 8 topics
Week 2: ██████ 6 topics
Week 3: ██████████ 10 topics
Week 4: ████████████ 12 topics
Trend: Accelerating ↗
```

## Validation

**Before completing, MUST verify:**
- All trainees discovered and loaded
- Data extracted accurately from all files
- Categorizations correct based on status
- Recommendations actionable and specific
- Report formatted clearly and readable
- Statistics calculated correctly

**If validation fails:**
- Verify file paths and trainee directories
- Check for corrupted or missing files
- Recalculate statistics
- Clarify vague recommendations

## Error Handling

- IF docs/training/ directory doesn't exist → Report no training program, suggest setup
- IF trainee directory exists but files missing → Note "Incomplete profile" in report
- IF progress tracker unreadable → Use available data, flag in report
- IF all trainees inactive → Highlight for senior developer attention
- IF calculations produce unexpected results → Double-check data and flag for review

## Handoff Contract

**Input:**
- All trainee directories: docs/training/*/
- All trainee files: profiles, progress trackers, assessments, capstones

**Output:**
- Comprehensive training program overview report
- Categorized trainee lists
- Program-wide statistics
- Actionable recommendations
- Immediate action items

**Next Agents:**
- junior-developer-mentor (assess-trainee) - For trainees needing assessment
- junior-developer-mentor (check-progress) - For trainees needing progress check
- junior-developer-mentor (review-capstone) - For pending capstone reviews
- human (senior-developer) - For decisions on "Needs Attention" trainees

**Trigger Conditions:**
- Report generated → Senior developer reviews and takes action
- Needs Attention flagged → Human intervention required
- Production Ready identified → Assign to real feature work

## Dependencies

**Required for this command:**
- Training directory: docs/training/
- All trainee profiles: docs/training/{trainee-name}/profile.md
- All progress trackers: docs/training/{trainee-name}/progress-tracker.md
- All assessments: docs/training/{trainee-name}/assessments/
- All capstone projects: docs/training/{trainee-name}/capstone/

**Optional:**
- Historical data for trend analysis
- Industry benchmarks for comparison
- Program goals and targets for evaluation
