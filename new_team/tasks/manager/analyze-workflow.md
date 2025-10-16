# analyze-workflow

## Purpose
Analyze current workflow for bottlenecks, conflicts, inefficiencies, and optimization opportunities.

## Parameters
None - analyzes entire system

## Workflow

### 1. Load System State

**Read:**
- Load data/workflow-dag.yaml
- Load all agent definitions from agents/
- Load task definitions from tasks/
- Load organizational principles

### 2. Identify Issues

**Analyze for:**
- Bottlenecks (single points of failure, long wait times)
- Conflicts (overlapping responsibilities, ambiguous handoffs)
- Inefficiencies (redundant steps, unnecessary serialization)
- Missing capabilities (gaps in workflow)
- Circular dependencies

**Check:**
- Agent handoff contracts compatibility
- Command-to-workflow mappings
- Trigger conditions clarity
- Dependency chains

### 3. Analyze Metrics

**If Available:**
- Time per workflow phase
- Iteration counts (rework loops)
- Agent utilization
- Failure points

**Document:**
- Patterns in metrics
- Anomalies or outliers

### 4. Generate Analysis

**Create Report:**
- Executive summary
- Issues identified (categorized by severity)
- Root causes for each issue
- Supporting evidence
- Metrics and data points

### 5. Develop Recommendations

**Prioritize:**
- High impact, low effort first
- Critical issues second
- Nice-to-have improvements last

**For Each Recommendation:**
- What to change
- Why it helps
- Expected benefit
- Implementation effort
- Risks and trade-offs

### 6. Present Findings

**Show:**
- Comprehensive analysis report
- Issues with severity ratings
- Prioritized recommendations
- Expected outcomes
- Implementation roadmap

## Validation

**Before completing, MUST verify:**
- All agents loaded and analyzed
- Workflow DAG analyzed
- Issues properly categorized
- Recommendations actionable and specific
- Evidence supports conclusions

**If validation fails:**
- Re-analyze with more depth
- Gather more evidence
- Clarify findings

## Error Handling

- IF workflow-dag.yaml missing → Note and analyze agent definitions only
- IF metrics unavailable → Perform qualitative analysis only
- IF unclear issues → Document as potential concerns for human review

## Handoff Contract

**Input:**
- No specific input required
- Analyzes entire system state

**Output:**
- Analysis report with findings
- Issues identified with severity
- Prioritized recommendations
- Implementation roadmap
- Supporting evidence and metrics

**Next Agents:**
- None - Human decides which recommendations to implement
- May trigger update-agent or optimize-system for specific fixes

**Trigger Conditions:**
- Analysis complete and report generated

## Dependencies

**Required for this command:**
- All agents: agents/
- All tasks: tasks/
- Organizational principles: organizational-principles.yaml

**Optional:**
- Workflow DAG: data/workflow-dag.yaml
- Metrics data: data/metrics/ (if exists)
- Project config: project-config.yaml
