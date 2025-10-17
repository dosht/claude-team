# Quick Start Guide 🚀

Welcome to your Self-Evolving Agentic Organization System!

## 📋 What You Have

A complete agentic development system that:
- **Agents defined as YAML contracts** for deterministic behavior
- **Manager meta-agent** that creates and optimizes other agents
- **DAG-based workflow** with explicit handoff contracts
- **Self-evolution capability** - the system improves itself!

## 🎯 First Steps (5 minutes)

### 1. Review the System

```bash
cd new_team/
```

**Read first:**
1. **[README.md](README.md)** - Complete system overview (15 min read)
2. **[organizational-principles.yaml](organizational-principles.yaml)** - The system "constitution"
3. **[BRAINSTORMING_SESSION_RESULTS.md](BRAINSTORMING_SESSION_RESULTS.md)** - How we got here

### 2. Understand the Agents

All agents are in `agents/` directory:
- **[manager-v1.yaml](agents/manager-v1.yaml)** - Creates/updates other agents (THE KEY AGENT)
- **[developer.yaml](agents/developer.yaml)** - Implements stories
- **[tech-lead.yaml](agents/tech-lead.yaml)** - Technical review
- **[architect.yaml](agents/architect.yaml)** - Architecture review
- **[product-owner.yaml](agents/product-owner.yaml)** - Creates stories
- **[manual-tester.yaml](agents/manual-tester.yaml)** - QA testing
- **[react-ui-designer.yaml](agents/react-ui-designer.yaml)** - UI/UX design

### 3. See the Workflow

Open **[data/workflow-dag.yaml](data/workflow-dag.yaml)** to see how agents collaborate:
- Parallel reviews (Tech Lead + Architect + Tester)
- Explicit handoff contracts
- Loop handling (test-fix-retest)
- Termination conditions

## 🧪 Testing the System (30 minutes)

### Option A: Start with Manager

Test the Manager agent first (recommended):

```
You: /manager
Manager: Hello! I'm Morgan, your Organizational Architect.
         What would you like me to help you with?

You: Validate all existing agents

Manager: I'll validate each agent against organizational principles...
         [Performs validation]
         Results: All agents valid ✅
         
         Minor suggestions:
         - Developer agent could benefit from...
         - Consider adding...
```

### Option B: Test with Real Story

Use an existing or create a simple story:

```
You: /product-owner
PO: I'll help you create a story. What feature?

You: Simple "Hello World" API endpoint

PO: Creating story PROJ-001-01...
    [Creates story file with acceptance criteria]

You: /developer
Dev: Which story to implement?

You: PROJ-001-01

Dev: Creating implementation plan...
    [Shows plan]
    
    Approve? 

You: yes

Dev: [Implements, tests, hands off to reviews]
```

## 📖 How to Use Each Agent

### Invoking Agents

**In Claude/Cursor:**
```
/manager       - Organizational architect
/developer     - Implement features
/tech-lead     - Technical guidance
/architect     - Architecture decisions
/product-owner - Create stories
/manual-tester - Test features
```

**What to expect:**
1. Agent loads its YAML definition
2. Agent loads project config (`.agentrc.yaml`)
3. Agent loads dependencies (docs, templates, etc.)
4. Agent asks what you need
5. Agent executes workflow
6. Agent hands off to next agents automatically

### Project Configuration

Before using agents on your real project, update **[.agentrc.yaml](.agentrc.yaml)**:

```yaml
project:
  name: "your-project-name"
  type: "web-application"
  
documentation:
  architecture: "docs/arc42/"           # Your arc42 location
  developer-guide: "docs/dev-guide/"    # Your dev guide
  stories: "docs/stories/"              # Your stories
```

## 🔑 Key Concepts

### 1. Handoff Contracts

Agents communicate through explicit contracts:

```yaml
output:
  - story-file: "Updated with implementation"
  
next-agents:
  - tech-lead: {input: story-file, trigger: auto}
  - architect: {input: story-file, trigger: auto}
  - manual-tester: {input: story-file, trigger: auto}
```

This means:
- ✅ You know exactly what data flows where
- ✅ Workflow is deterministic and traceable
- ✅ Agents can run in parallel safely

### 2. Manager is Your Meta-Tool

When things don't work as expected:

```
You: /manager
You: My tech-lead and architect keep disagreeing on API design

Manager: [Analyzes both agents]
         [Presents 3 options with trade-offs]
         [Recommends best solution]
         [Updates agents after your approval]
```

### 3. Everything is Git-Versioned

All agent changes are git commits:
- See what changed: `git log agents/`
- Rollback if needed: `git revert HEAD`
- Track evolution: `git blame agents/developer.yaml`

## 🎨 Customization

### Adding a New Agent

```
You: /manager
You: I need an agent that handles database migrations

Manager: Let me create that agent...
         
         Questions:
         1. What are its primary responsibilities?
         2. What inputs does it receive?
         3. What outputs does it produce?
         4. Which agents will it collaborate with?
         
[Manager creates migration-agent.yaml]
[Shows complete YAML + explanation]
[Waits for your approval]
```

### Updating an Existing Agent

```
You: /manager
You: My developer agent should also run linting before marking stories complete

Manager: I'll update the developer agent...
         
         [Shows git diff]
         
         Changes:
         - Added linting to QA phase
         - Updated completion criteria
         
         Impact: None (backwards compatible)
         
         Approve?
```

## 🐛 Troubleshooting

### Agents Behaving Unexpectedly

1. **Invoke Manager**: `/manager validate-agent developer`
2. **Check handoff contracts**: Are inputs/outputs matching?
3. **Review workflow DAG**: Is the flow what you expected?

### Conflicting Feedback from Agents

```
You: /manager resolve-conflict
You: Tech Lead says use pattern A, Architect says use pattern B

Manager: [Analyzes conflict]
         [Presents resolution options]
         [Updates agents to clarify boundaries]
```

### Agent Needs More Context

Update `.agentrc.yaml`:

```yaml
agent-overrides:
  developer:
    extra-dependencies:
      - "docs/your-specific-guide.md"
    extra-principles:
      - "Your project-specific principle"
```

## 📊 Measuring Success

After a few stories, check:

1. **Consistency**: Are agents providing predictable results?
2. **Efficiency**: Is the workflow smooth or are there bottlenecks?
3. **Quality**: Is the code meeting standards?
4. **Evolution**: Have you needed to update agents? (Good sign!)

### Ask Manager for Analysis

```
You: /manager analyze-workflow

Manager: Workflow Analysis:
         
         ✅ Strengths:
         - Parallel reviews save time
         - Clear handoffs prevent confusion
         
         ⚠️  Bottlenecks:
         - Manual Tester often finds issues (improve dev testing?)
         - Tech Lead and Architect overlap on API review
         
         💡 Recommendations:
         1. Add API-specific review checklist
         2. Enhance developer's self-testing
         3. Consider API specialist agent
```

## 🎯 Your First Real Task

**Recommended:** Start small to build confidence

1. **Pick a simple story** (1-2 day story)
2. **Run it through the full workflow**:
   - Product Owner (if needed)
   - Developer (plan → implement → test)
   - Parallel reviews
   - Human validation
3. **Document what worked and what didn't**
4. **Ask Manager to optimize** based on learnings

## 💡 Pro Tips

1. **Let agents finish their workflow** - They hand off automatically
2. **Review plans before approving** - Catch issues early
3. **Invoke Manager proactively** - Don't wait for problems
4. **Keep organizational-principles.yaml handy** - It's the reference
5. **Update .agentrc.yaml per project** - Agents adapt automatically
6. **Git commit agent changes** - Track evolution over time

## 🔮 What's Next

After testing the system:

1. **Refine based on real usage** (ask Manager to help!)
2. **Let Manager create Manager v2** (self-improvement!)
3. **Add project-specific agents** if needed
4. **Share learnings** with the community

## 📚 Documentation Map

```
new_team/
├── QUICK_START.md                    # ← You are here
├── README.md                         # Complete system overview
├── BRAINSTORMING_SESSION_RESULTS.md  # How we designed this
├── organizational-principles.yaml    # System constitution
├── .agentrc.yaml                     # Project configuration
├── agents/                           # Agent definitions
│   ├── manager-v1.yaml              # THE KEY AGENT
│   ├── developer.yaml
│   ├── tech-lead.yaml
│   └── ...
├── commands/                         # How to invoke agents
│   ├── manager.md
│   ├── developer.md
│   └── ...
├── templates/                        # Handoff contracts
│   ├── agent-definition.yaml
│   ├── story-structure.yaml
│   └── ...
└── data/
    └── workflow-dag.yaml            # Complete workflow graph
```

## 🎉 You're Ready!

The system is complete and ready to use. Start with:

1. ✅ Read README.md (15 min)
2. ✅ Test Manager agent
3. ✅ Run one simple story through workflow
4. ✅ Refine based on experience

**Remember:** This system **evolves with you**. Don't expect perfection on day 1. Let Manager help you improve it!

---

## 🆘 Need Help?

**Questions about the system?**
- Invoke `/manager` and ask directly
- Review **[organizational-principles.yaml](organizational-principles.yaml)** for guidelines
- Check **[data/workflow-dag.yaml](data/workflow-dag.yaml)** for agent collaboration
- Read agent YAML files for specific behaviors

**Something not working?**
- Invoke `/manager validate-agent {agent-id}`
- Check **[.agentrc.yaml](.agentrc.yaml)** for project paths
- Review **[BRAINSTORMING_SESSION_RESULTS.md](BRAINSTORMING_SESSION_RESULTS.md)** for design rationale

**Want to improve?**
- Invoke `/manager optimize-system`
- Ask Manager to analyze your workflow
- Let Manager propose improvements

---

**Good luck! The system is yours to evolve.** 🚀

*Built through collaborative brainstorming session*
*October 5, 2025*
*Powered by BMAD-METHOD™ principles + Your innovations*

