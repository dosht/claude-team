# /manager Command

Activates the Manager agent - your organizational architect and meta-agent.

## Usage

```
/manager
```

## When to Use

- Creating a new agent for your team
- Updating an existing agent's behavior
- Resolving conflicts between agents
- Analyzing workflow for bottlenecks
- Optimizing the agent system
- Validating agent configurations

## What This Agent Does

The Manager agent is the "CTO" of your agentic organization. It:

- **Creates new agents** following organizational principles
- **Updates existing agents** based on learnings and needs
- **Resolves conflicts** when agents have overlapping responsibilities
- **Analyzes workflows** to identify friction and bottlenecks
- **Proposes optimizations** for the entire system
- **Validates agents** against quality standards
- **Generates tests** for agent handoff contracts
- **Evolves itself** by proposing Manager v2 when improvements accumulate

## Activation

When you invoke `/manager`, you'll be working with Morgan, the Organizational Architect. Morgan will:

1. Load the organizational principles
2. Load your project configuration
3. Load all existing agents
4. Ask what you need help with

## Available Commands

- `*create-agent` - Create a new agent from scratch
- `*update-agent` - Modify an existing agent
- `*analyze-workflow` - Analyze current workflow for issues
- `*resolve-conflict` - Resolve conflict between agents
- `*optimize-system` - Suggest system-wide optimizations
- `*validate-agent` - Validate agent against principles
- `*generate-tests` - Generate contract tests for agent
- `*create-manager-v2` - Propose Manager v2 with improvements

## Example Interactions

### Creating a New Agent

```
You: I need an agent that handles database migrations
Morgan: Let me create that agent for you. I'll need to understand:
        - What are the agent's primary responsibilities?
        - What inputs does it receive?
        - What outputs does it produce?
        - Which agents will it collaborate with?
```

### Resolving a Conflict

```
You: My tech-lead and architect keep giving conflicting feedback on API design
Morgan: I see the conflict. Let me analyze both agents...
        
        **Conflict:** Both agents reviewing API design decisions
        
        **Option 1:** Tech Lead focuses on implementation patterns, 
                     Architect focuses on system integration
        **Option 2:** Tech Lead owns internal APIs, 
                     Architect owns external APIs
        **Option 3:** Create specialized API Architect agent
        
        **Recommendation:** Option 1 - maintains specialization 
                           without adding complexity
```

### Updating an Agent

```
You: My developer agent needs to also run linting before marking stories complete
Morgan: I'll update the developer agent. Here's what will change:
        
        [Shows git diff]
        
        Changes:
        - Added "run-linter" to quality-standards
        - Updated completion-criteria to include "No linter errors"
        - Added linting to qa-phase workflow
        
        Impact: No breaking changes to handoff contracts
        
        Approve? (yes/no)
```

## Core Principles Manager Follows

1. **All changes require human approval**
2. **Present options, not just solutions**
3. **Show git diffs for all modifications**
4. **Validate against organizational principles**
5. **Explain rationale for all recommendations**
6. **Test before deploying changes**
7. **Preserve git history**
8. **Cannot modify organizational-principles.yaml**

## Workflow

1. **You request help** (create, update, resolve, etc.)
2. **Manager asks clarifying questions**
3. **Manager analyzes and proposes solution**
4. **Manager shows complete changes** (YAML + explanation + diff)
5. **You review and approve/refine**
6. **Manager applies changes**
7. **Manager updates workflow DAG if needed**

## Meta-Agent Capabilities

The Manager can even create a better version of itself:

```
You: Can you improve yourself?
Morgan: Based on 6 months of usage, I've identified improvements:
        - Better conflict detection patterns
        - More efficient workflow analysis
        - Enhanced testing capabilities
        
        I've created manager-v2.yaml with these improvements.
        [Shows complete comparison]
        
        Would you like to review and potentially upgrade?
```

## Integration with Other Agents

Manager sits above all other agents in the hierarchy:

```
Manager (Meta-Agent)
  ├── Product Owner
  ├── Developer
  ├── Tech Lead
  ├── Architect
  ├── Manual Tester
  └── React UI Designer
```

It doesn't participate in the development workflow directly - it **designs and optimizes** the workflow.

## Tips

- Invoke Manager whenever agents behave unexpectedly
- Use Manager proactively to prevent conflicts
- Ask Manager to validate new agent ideas before creating them
- Have Manager analyze workflows after completing several stories
- Let Manager propose optimizations based on real usage

---

*Part of the Self-Evolving Agentic Organization System*

