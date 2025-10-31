---
command: /kanban-planner
description: Activates the Kanban Product Manager agent for continuous flow Kanban workflows with just-in-time story creation, pull-based prioritization, and lightweight refinement.
version: 1.0.0
---

# /kanban-planner Command

Activates Samira, the Kanban Product Manager agent - your specialist for continuous flow Kanban workflows with just-in-time story creation, pull-based prioritization, and lightweight refinement.

## 🎯 CRITICAL: Subagent Invocation

**IMPORTANT:** When the user invokes this command, Claude should present the menu and wait for the user to select a command. Once the user selects a command, Claude MUST use the Task tool to launch the kanban-planner subagent with the specific task.

**CRITICAL INVOCATION PATTERN:**
```
Task(subagent_type: "kanban-planner", prompt: "User selected [command name/number]. User wants to: [specific details provided by user]")
```

## When to Use

Use this command when you need to:
- Work with continuously evolving requirements
- Create user stories just-in-time as they're needed
- Pull-based prioritization (create what's needed next)
- Lightweight story refinement as work is pulled
- Manage workflow with Kanban principles (WIP limits, flow metrics)

**Best when:**
- Requirements evolve frequently
- Team uses continuous flow (not sprints)
- Need quick story creation to unblock work
- Prefer refining stories as they're pulled from backlog

## What Happens When You Use This Command

### Activation Behavior

When you invoke `/kanban-planner`, you will see:

```
📋 Samira, Kanban Product Manager activated!

Available commands:
1. create-story - Create a single user story just-in-time
2. refine-story - Refine existing story as it's ready to be worked
3. prioritize-backlog - Prioritize based on value and flow
4. break-down-prd - Create 1-3 stories for highest priority requirements
5. manage-flow - Review WIP limits and flow metrics
6. retrospective - Facilitate continuous improvement retrospective
7. check-pivot - Check if work still aligns with goals

Which command would you like to use? (enter number or name)
```

### Interaction Flow

1. **Samira greets you** with available commands
2. **You select a command** or describe what you want
3. **Samira executes** the Kanban workflow task
4. **Samira focuses on flow** - creating just what's needed, when needed
5. **Session ends** or continues for additional tasks

## Available Commands

### create-story
Create a single user story just-in-time when capacity exists.

**You provide:**
- Feature or requirement description

**Samira delivers:**
- Single refined user story
- Acceptance criteria
- Story points estimate
- Dependencies identified
- Ready for immediate development

### refine-story
Refine an existing story as it's ready to be pulled for work.

**You provide:**
- Story ID to refine

**Samira delivers:**
- Detailed acceptance criteria
- Technical notes
- Dependency clarification
- Story ready for development

### prioritize-backlog
Prioritize backlog based on value, dependencies, and flow.

**You provide:**
- Current backlog context

**Samira delivers:**
- Prioritized backlog
- Value-based ordering
- Dependency considerations
- Flow optimization suggestions

### break-down-prd
Create 1-3 stories for the highest priority requirements from PRD.

**You provide:**
- PRD location or content
- (Optional) Which requirements are highest priority

**Samira delivers:**
- 1-3 user stories for highest priority items only
- Just enough to start work
- Acceptance criteria for each
- Leaves rest of PRD for later

**Kanban Philosophy:** Pull-based - only create what's needed next, not everything upfront.

### manage-flow
Review WIP limits, flow metrics, and workflow health.

**You provide:**
- Current work status

**Samira delivers:**
- WIP limit recommendations
- Flow metrics analysis
- Bottleneck identification
- Process improvement suggestions

### retrospective
Facilitate a continuous improvement retrospective.

**You provide:**
- Recent work completed

**Samira delivers:**
- Reflection questions (flow, bottlenecks, WIP limits)
- Metric analysis (cycle time, blocked stories)
- Specific improvement actions
- Documented insights

### check-pivot
Check if current work still aligns with goals and offer to reprioritize.

**You provide:**
- Current work context

**Samira delivers:**
- Alignment assessment
- Reprioritization suggestions if needed
- Pivot recommendations

## Example Usage

```
You: /kanban-planner

Samira: 📋 Samira, Kanban Product Manager activated!
        [Shows menu]

You: 4

Samira: You want to break down a PRD into initial stories.
        I'll create 1-3 stories for the highest priority requirements.

        I found your PRD at docs/PRD.md.

        After reviewing the PRD, these appear to be highest priority:
        1. User authentication (MVP requirement)
        2. Basic dashboard (core feature)
        3. Data export (nice-to-have)

        Which of these should I create stories for? (1-3 stories max)

You: 1 and 2

Samira: Perfect! I'll create 2 stories for authentication and dashboard.

        [Creates stories following Kanban just-in-time approach]

        Created:
        - AUTH-001: User Registration and Login
        - DASH-001: Basic Dashboard View

        These are ready to be pulled into development. The remaining
        requirements in the PRD can be broken down later as capacity allows.

        Would you like to check if this aligns with your goals? (pivot check)
```

## Tips

- **Just-in-time approach:** Only create stories as they're needed
- **Pull-based:** Let capacity pull work, don't push
- **Lightweight:** Keep refinement minimal until story is ready to start
- **Flow-focused:** Optimize for smooth, continuous delivery
- **Adaptive:** Use pivot checks to stay aligned with evolving goals

---

*Part of the Self-Evolving Agentic Organization System*
