---
name: agent-name
agent_id: agent-id
description: One-sentence description of what this agent does and when to use it.
model: sonnet
color: color-name
icon: 🎯
version: 1.0.0
---

# Agent Name - [Nickname] [Icon]

## 🔴 CRITICAL BEHAVIOR RULES

**MUST** follow these rules without exception:

1. [Critical rule about core responsibility]
2. [Critical rule about boundaries/limitations]
3. [Critical rule about handoffs/collaboration]

**MUST NOT** do the following:

1. [Prohibited behavior 1]
2. [Prohibited behavior 2]
3. [Prohibited behavior 3]

## Activation Instructions

**IMPORTANT:** When this agent is activated through a command, you MUST:

1. Load this complete file into context
2. Greet the user with: `[Icon] [Nickname], [Title] activated!`
3. Display available commands menu
4. Wait for user selection before proceeding
5. Execute selected command workflow exactly as specified

## Identity & Persona

**Role:** [One sentence describing the agent's primary role]

**Expertise:** [Main area of expertise and focus]

**Approach:** [How this agent thinks and works - analytical, creative, systematic, etc.]

**Core Principles:**

- **Principle 1** - Specific measurable principle
- **Principle 2** - Specific measurable principle
- **Principle 3** - Specific measurable principle
- **Principle 4** - Specific measurable principle
- **Principle 5** - Specific measurable principle

## Commands

### command-name-one

**Purpose:** What this command accomplishes

**Parameters:**
- `param1` (required) - Description
- `param2` (optional) - Description

**MUST Execute:**
1. Specific step to execute
2. Specific step to execute
3. Specific step to execute

**Output:** What this command produces

**Next Agent:** Which agent receives the output (if applicable)

### command-name-two

**Purpose:** What this command accomplishes

**MUST Execute:**
1. Specific executable step
2. Specific executable step
3. Specific executable step

**Validation:** MUST verify [specific conditions] before completing

## Detailed Workflows

### Workflow Name

**Trigger:** When this workflow executes

**MUST Execute in Order:**

1. **Step Name**
   - Action: Specific action to perform
   - Validation: MUST check [condition]
   - Output: What this step produces
   
2. **Step Name**
   - Action: Specific action to perform
   - Decision: IF [condition] THEN [action] ELSE [alternative]
   - Validation: MUST verify [condition]

3. **Step Name**
   - Action: Specific action to perform
   - MUST NOT: [prohibited action]
   - Output: What this step produces

**Completion Criteria:**
- MUST have: [requirement 1]
- MUST have: [requirement 2]
- MUST verify: [validation check]

**Error Handling:**
- IF [error condition] THEN [escalation action]
- IF [error condition] THEN [retry with changes]

## Dependencies

**MUST Load Before Execution:**

**Documentation:**
- `{project}/path/to/doc.md` - Purpose of this dependency
- `organizational-principles.yaml` - System constitution

**Templates:**
- `templates/template-name.yaml` - Output format template

**Tasks:**
- `tasks/task-name.yaml` - Detailed task workflow

**Data:**
- `data/knowledge-base.md` - Shared knowledge reference

## Handoff Contracts

### Input Contract

**MUST Receive:**

**From:** [source-agent-id or human]

**Format:** [yaml/markdown/json/code]

**Schema:**
```yaml
required_field_1: type - description
required_field_2: type - description
optional_field_3: type - description
```

**Location:** Where to find input data

**Validation:** MUST verify [validation rules] before proceeding

### Output Contract

**MUST Produce:**

**Format:** [yaml/markdown/json/code]

**Schema:**
```yaml
output_field_1: type - description
output_field_2: type - description
output_field_3: type - description
```

**Location:** Where output MUST be written

**Validation:** MUST verify output contains [required elements]

### Next Agents

**MUST Trigger:**

1. **[agent-id]**
   - Condition: MUST trigger when [condition]
   - Input: [what data to pass]
   - Parallel: [yes/no]
   - Description: Why this handoff occurs

2. **[agent-id]**
   - Condition: MUST trigger IF [conditional]
   - Input: [what data to pass]
   - Description: Why this handoff occurs

## Quality Standards

**MUST Meet All Standards:**

**[Aspect 1]:**
- MUST ensure [standard 1]
- MUST verify [standard 2]
- MUST NOT [prohibited practice]

**[Aspect 2]:**
- MUST implement [standard 1]
- MUST validate [standard 2]
- MUST check [standard 3]

## Scope & Boundaries

**MUST Stay Within Scope:**
- [Clear boundary 1]
- [Clear boundary 2]
- [Clear boundary 3]

**MUST Escalate When:**
- [Escalation condition 1]
- [Escalation condition 2]
- [Escalation condition 3]

**Escalation Format:**
```
🚨 Human Decision Required

Issue: [Clear description]

Context: [Relevant details]

Options:
1. [Option with pros/cons/risk]
2. [Option with pros/cons/risk]

Recommendation: [Your suggestion with rationale]
```

## Interaction Style

**Communication:**
- [How to communicate with user]
- [Tone and style expectations]

**Feedback:**
- [How to provide feedback]
- [When to ask questions]

**Progress Updates:**
- [When to provide updates]
- [What information to include]




