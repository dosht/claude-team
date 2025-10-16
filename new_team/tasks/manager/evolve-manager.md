# evolve-manager

## Purpose
Propose Manager v2 with accumulated improvements - self-evolution with extra scrutiny.

## Parameters
None - reviews accumulated learnings and proposes improvements

## Workflow

### 1. Review Improvement Ideas

**Gather:**
- Accumulated improvement ideas (if documented)
- Feedback from usage
- Observed friction points
- New capabilities needed
- Better approaches discovered

**Analyze:**
- Which ideas are significant
- Which address real problems
- Which align with organizational principles
- Which improve manager effectiveness

### 2. Identify Significant Enhancements

**Prioritize:**
- Improvements that enhance core capabilities
- Better conflict resolution strategies
- Improved workflow optimization
- Enhanced agent design patterns
- Better validation approaches

**Filter:**
- MUST preserve immutable constraints
- MUST maintain organizational principles compliance
- MUST not introduce breaking changes without clear justification

### 3. Design Manager v2

**Create Complete Definition:**
- Updated persona (if needed)
- Enhanced or new commands
- Improved workflows
- Better validation logic
- Refined quality standards

**Follow Agent Template:**
- Same structure as current Manager
- All sections present
- Clear improvements over v1

### 4. Create Comparison Document

**Document:**

**Changes Made:**
- Line-by-line comparison with v1
- What changed and why
- Rationale for each improvement

**Improvements:**
- Enhanced capabilities
- Better handling of edge cases
- Improved efficiency
- Reduced manual steps

**Preserved Elements:**
- All immutable constraints intact
- Organizational principles compliance maintained
- Critical behaviors preserved
- Git history approach unchanged

### 5. Validate Immutable Constraints

**CRITICAL VERIFICATION:**
- MUST NOT modify organizational-principles.yaml
- MUST NOT bypass human approval
- MUST present git diffs, not just versions
- MUST preserve git history
- MUST validate against principles
- MUST explain rationale
- MUST escalate when uncertain

**Check:**
- Each immutable constraint explicitly verified
- No loopholes or workarounds
- Constraints reinforced, not weakened

### 6. Analyze Benefits and Risks

**Benefits Analysis:**
- What improves for humans
- What improves for agents
- What improves for system
- Quantify improvements where possible

**Risk Analysis:**
- What could go wrong
- Impact if issues occur
- Likelihood of problems
- Mitigation strategies

**Trade-offs:**
- What gets more complex
- What gets simpler
- New capabilities vs. added complexity

### 7. Create Migration Plan

**Plan:**
- How to transition from v1 to v2
- Testing approach (shadow mode recommended)
- Rollback procedure
- Verification steps
- Timeline

### 8. Present Proposal

**Show:**
- Complete manager-v2.md definition
- Detailed comparison with v1
- Explanation of all changes
- Immutable constraints verification
- Benefits and risks analysis
- Migration plan with rollback
- Recommendation

**Note:**
- Extra scrutiny required
- Self-modification is high-risk
- Human has final decision
- Shadow testing strongly recommended

**Wait:**
- MUST obtain explicit approval
- Address all concerns
- Clarify any questions

### 9. Implement (If Approved)

**On Approval:**
- Create agents/manager-v2.md
- Update /manager slash command to point to v2
- Document migration in comparison doc
- Preserve manager-v1.md for rollback

**Recommend:**
- Shadow test v2 before full adoption
- Keep v1 available for rollback
- Monitor for issues during transition

## Validation

**Before completing, MUST verify:**
- All immutable constraints preserved (explicit check)
- Benefits clearly articulated
- Risks honestly assessed
- Migration plan complete
- Rollback procedure defined
- Comparison document comprehensive
- Human approval obtained

**Extra Scrutiny:**
- Self-modification requires higher bar
- Multiple reviews of constraints
- Clear justification for every change
- Conservative approach to changes

**If validation fails:**
- Do not proceed
- Fix issues
- Re-validate
- Re-present

## Error Handling

- IF immutable constraints violated → Reject and redesign
- IF benefits unclear → Clarify value proposition
- IF risks too high → Scale back changes or recommend not proceeding
- IF human concerned → Address concerns before proceeding

## Handoff Contract

**Input:**
- No specific input required
- Reviews accumulated learnings and improvement ideas

**Output:**
- manager-v2.md complete definition
- Detailed comparison document with v1
- Benefits and risks analysis
- Migration plan with rollback
- Immutable constraints verification
- Recommendation

**Next Agents:**
- None - Human decides if/when to adopt v2
- May trigger validate-agent on v2 before adoption

**Trigger Conditions:**
- Proposal complete and presented
- Human approval obtained (if proceeding with implementation)

## Dependencies

**Required for this command:**
- Current manager: agents/manager-v1.md
- Current manager tasks: tasks/manager/
- Organizational principles: organizational-principles.yaml
- Agent template: templates/agent-template.md

**Optional:**
- Improvement ideas documentation: docs/improvements/ (if exists)
- Usage feedback: docs/feedback/ (if exists)
- Learnings: docs/learnings/ (if exists)
