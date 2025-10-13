# System Improvements Plan

**Generated:** 2025-10-13
**Purpose:** Comprehensive plan for fixing issues and optimizing the agentic organization system
**Status:** Ready for Implementation

---

## Overview

This plan addresses critical issues, missing templates, orphaned files, and optimization opportunities identified in the workflow analysis. Implementation is organized by priority to ensure the most impactful changes are completed first.

---

## Phase 1: Critical Fixes (Priority 1)

### 1.1 Fix File Location Inconsistencies

**Issue:** Organizational principles and workflow DAG not in expected locations

**Changes:**
- Create symlink: `.claude/organizational-principles.yaml` → `../new_team/organizational-principles.yaml`
- Create symlink: `.claude/data/workflow-dag.yaml` → `../new_team/data/workflow-dag.yaml`
- Alternative: Copy files to expected locations
- Alternative: Update all agent references to point to actual locations

**Files Affected:**
- `.claude/organizational-principles.yaml` (create symlink or copy)
- `.claude/data/workflow-dag.yaml` (create symlink or copy)

**Validation:**
- Verify all agents can load organizational-principles.yaml
- Verify Manager can load workflow-dag.yaml

---

### 1.2 Clarify Agent Definition Format

**Issue:** Agents use Markdown+YAML frontmatter but principles expect pure YAML

**Changes:**
- Update `organizational-principles.yaml` to acknowledge Markdown format with YAML frontmatter
- Document that agent files use `.md` extension with structured YAML metadata at the top
- Update validation rules to support both formats

**Files to Update:**
- `organizational-principles.yaml` (update format specification section)

**Documentation:**
- Add section explaining agent file format: Markdown with YAML frontmatter
- Specify frontmatter must contain: name, role, description, dependencies, handoff_contracts

---

### 1.3 Create Critical Missing Templates

**Issue:** Manager agent references templates that don't exist

**Files to Create:**
1. `templates/handoff-contract.yaml`
   - Schema for handoff contracts between agents
   - Fields: from_agent, to_agent, trigger, input_schema, output_schema, validation_rules

2. `templates/command-definition.yaml`
   - Schema for slash command definitions
   - Fields: name, description, agent_type, activation_pattern, parameters, examples

**Purpose:** Enable Manager to create agents and commands using structured templates

---

## Phase 2: Major Improvements (Priority 2)

### 2.1 Create Task Workflow Files

**Issue:** Agents reference detailed task workflows that don't exist

**Files to Create:**
1. `tasks/create-agent.yaml`
   - Step-by-step workflow for creating new agents
   - Includes: requirements gathering, definition creation, validation, integration

2. `tasks/update-agent.yaml`
   - Step-by-step workflow for updating existing agents
   - Includes: change analysis, impact assessment, validation, testing

3. `tasks/resolve-conflict.yaml`
   - Step-by-step workflow for resolving agent conflicts
   - Includes: diagnosis, option generation, trade-off analysis, implementation

4. `tasks/implement-story.yaml`
   - Step-by-step workflow for Developer implementing stories
   - Includes: planning, implementation, testing, documentation

5. `tasks/create-implementation-plan.yaml`
   - Step-by-step workflow for creating implementation plans
   - Includes: analysis, breakdown, dependency mapping, estimation

**Purpose:** Provide detailed guidance for complex multi-step operations

---

### 2.2 Clarify UI Designer Integration

**Issue:** UI Designer integration has vague trigger conditions

**Changes:**
- Add explicit `ui_required: true/false` field to story template
- Update `templates/story-structure.yaml` to include UI requirement flag
- Update `workflow-dag.yaml` to replace "if-ui-required" with explicit check of story metadata
- Document in Product Owner agent when to set `ui_required: true`
- Update handoff contract: Product Owner → React UI Designer

**Files to Update:**
- `templates/story-structure.yaml` (add ui_required field)
- `data/workflow-dag.yaml` (clarify trigger condition)
- `agents/product-owner.md` (document when to set ui_required)
- `agents/react-ui-designer.md` (clarify activation conditions)

---

### 2.3 Implement Automated Quality Gates

**Issue:** No automated validation before reviews begin

**Changes:**
- Create pre-review quality gate in workflow
- Add automated checks: test coverage ≥80%, linter passing, tests passing, build successful
- Block parallel reviews from starting until quality gates pass
- Return to Developer with clear failure messages if gates fail

**Files to Update:**
- `data/workflow-dag.yaml` (add quality-gate node between Developer and parallel reviews)
- `agents/developer.md` (document quality gate requirements)

**Files to Create:**
- `scripts/quality-gate.sh` (optional automation script)

---

### 2.4 Clarify Review Synchronization

**Issue:** Ambiguous parallel review coordination

**Changes:**
- Document explicit synchronization mechanism in workflow-dag.yaml
- Define re-review process: only reviewers who found issues re-review
- Add review status tracking to story file structure
- Document timeout/escalation if reviews don't complete

**Files to Update:**
- `data/workflow-dag.yaml` (add detailed synchronization rules)
- `templates/story-structure.yaml` (add review_status section)
- `agents/tech-lead.md` (clarify re-review conditions)
- `agents/architect.md` (clarify re-review conditions)
- `agents/manual-tester.md` (clarify re-review conditions)

---

## Phase 3: Optional Templates (Priority 3)

### 3.1 Create Optional Agent Templates

**Issue:** Agents reference optional templates that could improve consistency

**Files to Create:**
1. `templates/epic-structure.yaml`
   - Structure for epics (multi-story features)
   - Fields: id, title, description, stories, acceptance_criteria, timeline

2. `templates/test-plan.yaml`
   - Structure for manual test plans
   - Fields: story_id, test_scenarios, expected_results, test_data

3. `templates/bug-report.yaml`
   - Structure for bug reports
   - Fields: id, severity, steps_to_reproduce, expected, actual, environment

4. `templates/implementation-plan.yaml`
   - Structure for Developer implementation plans
   - Fields: story_id, approach, tasks, dependencies, estimates, risks

5. `templates/test-checklist.yaml`
   - Checklist for Developer testing
   - Categories: unit tests, integration tests, E2E tests, edge cases

6. `templates/technical-review.yaml`
   - Structure for Tech Lead reviews
   - Fields: story_id, code_quality, test_coverage, standards_compliance, suggestions

7. `templates/architecture-review.yaml`
   - Structure for Architect reviews
   - Fields: story_id, architectural_impact, design_patterns, integration_points, concerns

8. `templates/adr-template.md`
   - Architecture Decision Record template
   - Sections: Context, Decision, Consequences, Status, Date

**Purpose:** Provide consistent structure for all agent outputs

---

## Phase 4: Optimizations (Priority 4)

### 4.1 Implement Smart Re-Review

**Issue:** All reviewers re-review even if they approved initially

**Changes:**
- Add review tracking to story metadata
- When Developer fixes issues, only trigger re-review for reviewers who found issues
- Auto-approve previously passed reviews on subsequent passes

**Files to Update:**
- `data/workflow-dag.yaml` (add conditional re-review logic)
- `templates/story-structure.yaml` (add review tracking fields)

**Expected Impact:** 50-70% reduction in re-review time

---

### 4.2 Implement Story Complexity Tiers

**Issue:** All stories follow same workflow regardless of complexity

**Changes:**
- Add `complexity: simple|medium|complex` field to story template
- Define tier-specific workflows:
  - **Simple:** Tech Lead only (skip Architect, Manual Tester)
  - **Medium:** Current full workflow
  - **Complex:** Add additional checkpoints
- Document criteria for each tier in Product Owner agent

**Files to Update:**
- `templates/story-structure.yaml` (add complexity field)
- `data/workflow-dag.yaml` (add conditional workflow paths)
- `agents/product-owner.md` (document tier criteria)

**Expected Impact:** 40% faster completion for simple stories

---

### 4.3 Create Bootstrap Documentation

**Issue:** Agents reference docs that don't exist in new projects

**Files to Create:**
1. `docs/developer-guide/README.md`
   - Overview of coding standards
   - Link to detailed standards docs

2. `docs/developer-guide/coding-standards.md`
   - Language-specific standards
   - Testing requirements
   - Code review checklist

3. `docs/arc42/README.md`
   - Architecture documentation overview
   - Link to arc42 sections

4. `docs/arc42/01-introduction.md`
   - System introduction and goals (arc42 section 1)

5. `docs/product/README.md`
   - Product documentation overview
   - Link to epics and stories

**Purpose:** Provide minimal documentation structure for new projects

---

### 4.4 Add Security Review Capability

**Issue:** No explicit security review in workflow

**Option A: Add Security Reviewer Agent**
- Create new agent: `agents/security-reviewer.md`
- Add to parallel review group in workflow-dag.yaml
- Define security review checklist

**Option B: Expand Existing Agent Responsibilities**
- Add security review section to Tech Lead agent
- Add security checklist to technical review template
- Document security concerns in developer guide

**Recommendation:** Start with Option B, create dedicated agent if needed later

**Files to Update (Option B):**
- `agents/tech-lead.md` (add security review responsibilities)
- `templates/technical-review.yaml` (add security section)
- `docs/developer-guide/coding-standards.md` (add security best practices)

---

## Phase 5: Cleanup (Priority 5)

### 5.1 Archive Historical Documentation

**Issue:** Documentation files in .claude not used by agents

**Files to Archive:**
- Move to `.claude/archive/` directory:
  - `BRAINSTORMING_SESSION_RESULTS.md`
  - `IMPLEMENTATION_SUMMARY.md`

**Purpose:** Keep .claude directory focused on operational files

---

### 5.2 Verify Unknown Configuration Files

**Issue:** Purpose of some config files unclear

**Files to Investigate:**
- `settings.local.json` (201 bytes) - determine purpose, document or remove

**Action:** Review file contents, determine if needed, update documentation or remove

---

### 5.3 Standardize Agent Command Patterns

**Issue:** Inconsistent command detection across agents

**Changes:**
- Define standard activation patterns for all agents
- Document in organizational principles
- Update all agent definitions to follow standard pattern

**Files to Update:**
- `organizational-principles.yaml` (add activation pattern standards)
- All agent files in `agents/` (standardize activation sections)

---

## Phase 6: Nice-to-Have (Future)

### 6.1 Create Workflow Visualization Tool

**Purpose:** Generate visual diagrams from workflow-dag.yaml

**Files to Create:**
- `scripts/visualize-workflow.js` or `.py`
- Outputs: SVG or PNG workflow diagram

---

### 6.2 Add Agent Performance Tracking

**Purpose:** Track metrics for data-driven optimization

**Files to Create:**
- `data/agent-metrics.yaml` - Schema for tracking metrics
- `scripts/analyze-performance.js` - Analysis tool

**Metrics to Track:**
- Average time per agent task
- Re-review frequency
- Issues found per review
- Human escalation rate

---

### 6.3 Create Workflow Templates

**Purpose:** Specialized workflows for common scenarios

**Files to Create:**
- `workflows/bug-fix.yaml` - Shortened workflow for bug fixes
- `workflows/docs-only.yaml` - Documentation update workflow
- `workflows/refactoring.yaml` - Code refactoring workflow

---

### 6.4 Consider Manager v2

**Purpose:** Self-evolution based on learnings

**Action:** After implementing improvements and observing results, have Manager analyze and propose Manager v2 with accumulated improvements

**Files to Create (when ready):**
- `agents/manager-v2.md`
- `commands/manager-v2.md`
- Migration plan document

---

## Implementation Strategy

### Recommended Order:
1. **Week 1:** Phase 1 (Critical Fixes) - Get system fully operational
2. **Week 2:** Phase 2.1-2.2 (Task Files + UI Integration) - Add missing workflows
3. **Week 3:** Phase 2.3-2.4 (Quality Gates + Review Sync) - Improve workflow efficiency
4. **Week 4:** Phase 3 (Optional Templates) - Improve consistency
5. **Month 2:** Phase 4 (Optimizations) - Performance improvements
6. **Ongoing:** Phase 5 (Cleanup) - Maintenance
7. **Future:** Phase 6 (Nice-to-Have) - Advanced features

### Testing Strategy:
- After Phase 1: Validate all agents can load dependencies
- After Phase 2: Run 2-3 test stories through complete workflow
- After Phase 4: Measure workflow completion time improvements
- After each phase: Update this plan with learnings

---

## Success Metrics

### Phase 1 Success:
- [ ] All agents load without missing file errors
- [ ] Manager can reference all required templates
- [ ] Workflow DAG loads successfully

### Phase 2 Success:
- [ ] UI Designer integration clear and documented
- [ ] Quality gates block reviews when tests fail
- [ ] Review synchronization documented and tested

### Phase 3 Success:
- [ ] All agents have access to relevant templates
- [ ] Output consistency improved

### Phase 4 Success:
- [ ] Story completion time reduced by 30%+
- [ ] Re-review time reduced by 50%+
- [ ] Simple stories complete 40% faster

---

## Notes

- All file paths are relative to project root: `/Users/mu/src/transgate/claude-team/test/`
- Template files should be YAML for machine-readable structure
- Documentation files should be Markdown for human readability
- Maintain backward compatibility where possible
- Test incrementally - don't implement all changes at once
- Get human approval before implementing each phase

---

## Questions for Human Decision

Before implementing, decisions needed on:

1. **Agent Format (Phase 1.2):** Keep Markdown+YAML or switch to pure YAML?
2. **File Locations (Phase 1.1):** Symlinks, copies, or update references?
3. **UI Integration (Phase 2.2):** Explicit flag or flexible detection?
4. **Story Tiers (Phase 4.2):** Implement complexity tiers or keep uniform workflow?
5. **Security Review (Phase 4.4):** New agent or expand existing responsibilities?

---

*This plan is a living document. Update as implementation progresses and new insights emerge.*
