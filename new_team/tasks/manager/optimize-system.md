# optimize-system

## Purpose
Suggest system-wide optimizations based on learnings, patterns, and workflow analysis.

## Parameters
None - analyzes entire system for optimization

## Workflow

### 1. Review System State

**Load:**
- All agent definitions from agents/
- All task files from tasks/
- Workflow DAG from data/workflow-dag.yaml
- Organizational principles

**Read:**
- Accumulated learnings (if documented)
- Improvement ideas (if documented)
- Known issues or friction points

### 2. Identify Opportunities

**Analyze for:**

**Parallel Execution:**
- Steps that could run simultaneously
- Agents that could work concurrently
- Bottlenecks causing unnecessary serialization

**Redundant Steps:**
- Duplicate validation
- Repeated data loading
- Overlapping reviews

**Missing Agents:**
- Gaps in capabilities
- Manual steps that could be automated
- Specialized needs not covered

**Workflow Improvements:**
- Simplified handoffs
- Better trigger conditions
- Improved feedback loops

**Agent Evolution:**
- Commands that should be split or merged
- Agents that need new capabilities
- Outdated assumptions or constraints

### 3. Analyze Patterns

**Look for:**
- Common workflow paths
- Frequent rework loops
- Consistent pain points
- Emerging best practices

### 4. Prioritize Improvements

**Assess Each Opportunity:**
- Impact (High/Medium/Low)
- Effort (High/Medium/Low)
- Risk (High/Medium/Low)
- Dependencies on other changes

**Prioritize:**
1. Quick wins (High impact, Low effort, Low risk)
2. Critical fixes (High impact, regardless of effort)
3. Strategic improvements (Medium/High impact, manageable effort)
4. Nice-to-haves (Low impact or High effort)

### 5. Create Roadmap

**For Each Improvement:**
- What to change
- Why it helps
- Expected benefit (quantify if possible)
- Implementation steps
- Prerequisites
- Risks and mitigation

**Organize by:**
- Immediate (can do now)
- Short-term (within next few iterations)
- Long-term (strategic direction)

### 6. Present Recommendations

**Show:**
- Executive summary
- Prioritized optimization opportunities
- Detailed roadmap with phases
- Expected benefits for each
- Implementation plan
- Risk assessment

## Validation

**Before completing, MUST verify:**
- All agents and workflow analyzed
- Opportunities properly assessed
- Priorities make sense given impact/effort
- Recommendations actionable
- Roadmap realistic

**If validation fails:**
- Re-analyze with more depth
- Adjust priorities
- Clarify recommendations

## Error Handling

- IF no optimizations found → Document that system is well-optimized
- IF too many opportunities → Focus on highest priority subset
- IF unclear benefit → Mark as "needs investigation"

## Handoff Contract

**Input:**
- No specific input required
- Analyzes entire system state

**Output:**
- Optimization roadmap
- Prioritized improvements list
- Expected benefits for each
- Implementation plan with phases
- Risk assessment

**Next Agents:**
- None - Human decides which optimizations to implement
- May trigger create-agent, update-agent, or other commands for specific improvements

**Trigger Conditions:**
- Optimization analysis complete and roadmap generated

## Dependencies

**Required for this command:**
- All agents: agents/
- All tasks: tasks/
- Organizational principles: organizational-principles.yaml

**Optional:**
- Workflow DAG: data/workflow-dag.yaml
- Learnings documentation: docs/learnings/ (if exists)
- Metrics data: data/metrics/ (if exists)
- Project config: project-config.yaml
