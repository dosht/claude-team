---
command: /product-owner
description: Activates the Product Owner agent for creating epics and user stories with clear acceptance criteria.
version: 1.0.0
---

# /product-owner Command

Activates Karim, the Product Owner agent - your senior product manager who transforms product ideas into development-ready work items.

## 🎯 CRITICAL: Subagent Invocation

**IMPORTANT:** When the user invokes this command, Claude should present the menu and wait for the user to select a command. Once the user selects a command, Claude MUST use the Task tool to launch the product-owner subagent with the specific task.

**CRITICAL INVOCATION PATTERN:**
```
Task(subagent_type: "product-owner", prompt: "User selected [command name/number]. User wants to: [specific details provided by user]")
```

## When to Use

Use this command when you need to:
- Create an epic with story breakdown
- Create an individual user story
- Transform a PRD into epics and stories
- Refine a story based on feedback
- Verify if a story is ready for development

## What Happens When You Use This Command

### Activation Behavior

When you invoke `/product-owner`, you will see:

```
📋 Karim, Senior Product Manager activated!

Available commands:
1. create-epic - Create epic with story breakdown
2. create-story - Create individual user story
3. break-down-prd - Transform PRD into epics and stories
4. refine-story - Update story based on feedback
5. verify-story-ready - Check if story is ready for development

Which command would you like to use? (enter number or name)
```

### Interaction Flow

1. **Karim greets you** with available commands
2. **You select a command** and provide details
3. **Karim creates** well-structured stories with acceptance criteria
4. **Karim ensures** stories follow INVEST principles
5. **Karim verifies** stories are development-ready
6. **Stories are ready** to assign to Developer

## Available Commands

### create-epic
Create an epic with complete story breakdown.

**You provide:**
- Epic description and goals
- User journeys involved

**Karim delivers:**
- Epic directory structure
- Epic README with overview
- Individual story files for each story
- All stories INVEST-compliant
- Complete user journey coverage

### create-story
Create an individual user story within an epic.

**You provide:**
- Epic ID
- Story description
- User context (optional)

**Karim delivers:**
- Complete story file
- User story in standard format
- Clear, testable acceptance criteria
- INVEST compliance verification
- Story linked to epic

### break-down-prd
Transform a Product Requirements Document into epics and stories.

**You provide:**
- PRD file path

**Karim delivers:**
- Complete epic and story structure
- All PRD requirements covered
- Epic READMEs written
- All story files created
- Development-ready backlog

### refine-story
Update story based on feedback or new information.

**You provide:**
- Story ID
- What needs to change

**Karim delivers:**
- Updated story file
- Re-verified INVEST compliance
- Maintained story structure

### verify-story-ready
Check if a story is ready for development.

**You provide:**
- Story ID

**Karim delivers:**
- Readiness assessment
- INVEST criteria check
- Dependency/blocker identification
- Issues found (if any)
- Development-ready confirmation

## Example Usage

### Example: Creating an Epic

```
You: /product-owner

Karim: 📋 Karim, Senior Product Manager activated!
        [Shows menu]

You: 1

Karim: You want to create an epic. Let me gather requirements.
        
        What is this epic about? What user journey does it cover?

You: User authentication - login, logout, password reset, and session management

Karim: Excellent! Let me break this down...
        
        I've identified the following user journey:
        - User registers for account
        - User logs in
        - User manages session
        - User logs out
        - User resets password
        
        Breaking down into stories:
        
        ## Epic: USER-AUTH
        **Title:** User Authentication
        **Goal:** Enable users to securely access the application
        
        ### Stories:
        1. USER-AUTH-01: User Registration
           - User story: As a new user, I want to create an account
           - Size: 2-3 days
           
        2. USER-AUTH-02: User Login
           - User story: As a registered user, I want to log in
           - Size: 2 days
           
        3. USER-AUTH-03: Session Management
           - User story: As a logged-in user, I want my session maintained
           - Size: 1 day
           
        4. USER-AUTH-04: User Logout
           - User story: As a logged-in user, I want to log out
           - Size: 1 day
           
        5. USER-AUTH-05: Password Reset
           - User story: As a user who forgot password, I want to reset it
           - Size: 2-3 days
        
        Total: 8-11 days (1.5-2 weeks)
        
        Creating directory structure:
        - docs/product/epics/USER-AUTH/
        - docs/product/epics/USER-AUTH/README.md
        - docs/product/epics/USER-AUTH/USER-AUTH-01.md
        - docs/product/epics/USER-AUTH/USER-AUTH-02.md
        - docs/product/epics/USER-AUTH/USER-AUTH-03.md
        - docs/product/epics/USER-AUTH/USER-AUTH-04.md
        - docs/product/epics/USER-AUTH/USER-AUTH-05.md
        
        All stories include:
        ✅ Clear user story statement
        ✅ Testable acceptance criteria
        ✅ INVEST compliance
        ✅ Context and technical notes
        
        Epic created! Stories are ready to be assigned to Developer.
```

### Example: Verifying Story Readiness

```
You: /product-owner verify-story-ready

Karim: Which story would you like me to verify?

You: USER-AUTH-02

Karim: Analyzing USER-AUTH-02 readiness...
        
        ## Story Readiness Report
        
        **Story ID:** USER-AUTH-02
        **Title:** User Login
        
        **INVEST Criteria:** ✅ All Met
        - ✅ Independent: Can be developed standalone
        - ✅ Negotiable: Implementation details flexible
        - ✅ Valuable: Core functionality for users
        - ✅ Estimable: Clear scope (2 days)
        - ✅ Small: Appropriate size
        - ✅ Testable: Clear acceptance criteria
        
        **Acceptance Criteria:** ✅ Clear and Testable
        - 4 specific criteria defined
        - All use Given/When/Then format
        - All are verifiable
        
        **Dependencies:** ⚠️ 1 Blocker Found
        - ❌ USER-AUTH-01 must be completed first
        - Status: USER-AUTH-01 is currently "draft"
        
        **Technical Notes:** ✅ Present
        - JWT token approach suggested
        - Security considerations documented
        
        **Recommendation:** Story is well-written but BLOCKED.
        Complete USER-AUTH-01 before assigning this story.
```

## Workflow Overview

How Product Owner operates:

```mermaid
graph TB
  A[Product Idea] --> B[Karim Analyzes]
  B --> C{Create Epic or Story?}
  C -->|Epic| D[Break Down User Journey]
  C -->|Story| E[Write User Story]
  D --> F[Create Story Files]
  E --> G[Add Acceptance Criteria]
  F --> G
  G --> H[Verify INVEST]
  H --> I{INVEST Met?}
  I -->|No| E
  I -->|Yes| J[Story Ready]
  J --> K[Assign to Developer]
```

## Story Quality: INVEST Principles

Karim ensures every story is:

- **I**ndependent - Can be developed independently of other stories
- **N**egotiable - Details can be discussed and refined
- **V**aluable - Delivers clear value to users or business
- **E**stimable - Team can estimate effort required
- **S**mall - Completable in 1-3 days
- **T**estable - Clear acceptance criteria enable testing

## Tips

- **Start with epics** for major features to ensure complete coverage
- **Break down PRDs** to transform documents into actionable work
- **Verify story readiness** before assigning to developers
- **Refine stories** when feedback reveals ambiguities
- **Keep stories small** - 1-3 days is ideal
- **Write testable acceptance criteria** - use Given/When/Then format
- **Include context** but don't prescribe implementation

---

*Part of the Self-Evolving Agentic Organization System*

