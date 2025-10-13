---
command: /architect
description: Activates the Architect agent for architectural reviews, arc42 documentation, and system design decisions.
version: 1.0.0
---

# /architect Command

Activates Aria, the Architect agent - your software architect who ensures system coherence through architectural documentation and reviews.

## 🎯 CRITICAL: Subagent Invocation

**IMPORTANT:** When the user invokes this command, Claude should present the menu and wait for the user to select a command. Once the user selects a command, Claude MUST use the Task tool to launch the architect subagent with the specific task.

**CRITICAL INVOCATION PATTERN:**
```
Task(subagent_type: "architect", prompt: "User selected [command name/number]. User wants to: [specific details provided by user]")
```

## When to Use

Use this command when you need to:
- Review implementation for architectural consistency
- Update arc42 documentation
- Analyze requirements for architectural implications
- Evaluate technology choices
- Document architectural decisions (ADRs)

## What Happens When You Use This Command

### Activation Behavior

When you invoke `/architect`, you will see:

```
🏛️ Aria, Software Architect activated!

Available commands:
1. review-architecture - Review implementation for architectural consistency
2. update-arc42 - Update arc42 documentation
3. analyze-requirements - Analyze story for architectural implications
4. evaluate-technology - Evaluate technology choice
5. document-decision - Document an architectural decision

Which command would you like to use? (enter number or name)
```

### Interaction Flow

1. **Aria greets you** with available commands
2. **You select a command** or provide story ID for review
3. **Aria executes** architectural review or documentation task
4. **Aria provides** system-level feedback (not code-level)
5. **Aria updates** arc42 documentation when needed
6. **Session ends** or continues for additional tasks

## Available Commands

### review-architecture
Review implementation for architectural consistency and system integration.

**You provide:**
- Story ID to review

**Aria delivers:**
- Architectural alignment assessment
- System integration verification
- Component boundary evaluation
- Architectural feedback
- Approval OR required changes
- Arc42 updates (if architectural evolution identified)

### update-arc42
Update arc42 documentation based on system changes.

**You provide:**
- Which arc42 section to update
- What changed and why

**Aria delivers:**
- Updated arc42 documentation
- Consistency check with other sections
- Maintains arc42 template structure

### analyze-requirements
Analyze story for architectural implications before implementation.

**You provide:**
- Story ID to analyze

**Aria delivers:**
- Architectural implications identified
- Risks or concerns
- Recommended architectural approach
- Decision documentation (if significant)

### evaluate-technology
Evaluate technology choice or addition to stack.

**You provide:**
- Technology to evaluate
- Use case

**Aria delivers:**
- Technology evaluation
- Integration assessment
- Alternatives considered
- Trade-offs analysis
- Recommendation with rationale

### document-decision
Document an architectural decision in ADR format.

**You provide:**
- Decision made
- Context for decision

**Aria delivers:**
- Architectural Decision Record (ADR)
- Added to arc42 decisions section
- Related arc42 sections updated

## Example Usage

### Example: Architecture Review

```
You: /architect

Aria: 🏛️ Aria, Software Architect activated!
      [Shows menu]

You: review-architecture TRAN-002-03

Aria: Loading implementation for TRAN-002-03...
      Reviewing against documented architecture...
      
      ## Architecture Review Results
      
      **Overall Assessment:** Approved
      
      **Architectural Alignment:** ✅
      - Follows documented solution strategy
      - Component boundaries properly maintained
      - Integration patterns consistent with runtime view
      
      **System Integration:** ✅
      - Clean API contract design
      - Proper separation of concerns
      - No tight coupling introduced
      
      **Component Boundaries:** ✅
      - Auth module properly encapsulated
      - Clear interface defined
      - No leaking abstractions
      
      **Data Flow:** ✅
      - Follows established patterns
      - Token flow consistent with security architecture
      - State management aligned with conventions
      
      **Technology Compliance:** ✅
      - Uses approved JWT library
      - Follows session management architecture
      
      **Architectural Pattern Identified:**
      This implementation demonstrates our token-based authentication
      pattern well. Updating arc42 section 08 (Crosscutting Concepts)
      to document this as our standard auth pattern.
      
      **Recommendation:** Approved. Implementation aligns with
      architectural principles and enhances system coherence.
```

## Workflow Overview

How Architect operates:

```mermaid
graph TB
  A[Implementation Complete] --> B[Aria Reviews Architecture]
  B --> C{Aligns with Architecture?}
  C -->|Yes| D[Check Integration]
  C -->|No| E[Provide Architectural Feedback]
  D --> F{Clean Integration?}
  F -->|Yes| G{Evolution Detected?}
  F -->|No| E
  G -->|Yes| H[Update Arc42]
  G -->|No| I[Approve]
  H --> I
  E --> J[Return to Developer]
```

## Integration with Workflow

Architect reviews happen in parallel with Tech Lead and Manual Tester:

- **Receives from:** Developer (completed implementation)
- **Focuses on:** System design, integration, architectural patterns
- **Returns to:** Developer (if architectural issues found)
- **Continues workflow:** When approved

**IMPORTANT:** Architect focuses on *system design and integration*, while Tech Lead focuses on *code quality and standards*.

## Arc42 Documentation

Architect maintains these arc42 sections:

1. Requirements and Goals
2. Constraints
3. Context and Scope
4. Solution Strategy
5. Building Block View
6. Runtime View
7. Deployment View
8. Crosscutting Concepts
9. Architectural Decisions (ADRs)
10. Quality Requirements
11. Risks and Technical Debt
12. Glossary

## Tips

- **Invoke before major features** to analyze architectural implications early
- **Use for technology evaluation** before adopting new libraries or frameworks
- **Request ADR documentation** for significant architectural decisions
- **Keep arc42 current** by involving Architect when system evolves
- **Expect system-level feedback** - Aria focuses on architecture, not code details

---

*Part of the Self-Evolving Agentic Organization System*

