# update-arc42

## Purpose
Update arc42 documentation based on system changes or evolution.

## Parameters
- section (required) - Which arc42 section to update (e.g., "building-blocks", "runtime-view")
- changes (required) - What changed and why

## Workflow

### 1. Identify Section

**Determine Target:**
- Map user request to arc42 section
- Sections available:
  - requirements-and-goals
  - constraints
  - context-and-scope
  - solution-strategy
  - building-block-view
  - runtime-view
  - deployment-view
  - crosscutting-concepts
  - architectural-decisions
  - quality-requirements
  - risks-and-technical-debt
  - glossary

### 2. Load Current Documentation

**Read Section:**
- Load current state of target section
- Understand existing content
- Note structure and format

### 3. Determine Changes

**Identify Updates:**
- What needs to be added
- What needs to be modified
- What needs to be removed

**Validate:**
- Ensure changes align with arc42 template
- Maintain section structure

### 4. Update Documentation

**Write Updated Content:**
- Keep concise and AI-friendly
- Reference actual code files (not examples)
- Document rationale for changes
- Maintain arc42 structure

**Quality Checks:**
- Short, focused content
- Clear and specific
- No code examples (use file references)
- Proper arc42 formatting

### 5. Check Consistency

**Verify Alignment:**
- Check update doesn't contradict other sections
- Ensure terminology consistent across docs
- Validate cross-references still valid

**Update Related Sections (if needed):**
- If change affects other sections, note them
- Update glossary if new terms introduced

### 6. Present Update

**Show Changes:**
- Display before/after comparison or diff
- Explain what changed and why
- Highlight any related sections affected

**Get Approval:**
- Wait for human approval
- Address feedback if changes requested

### 7. Apply Changes

**Update Files:**
- Write updated content to arc42 files
- Preserve structure and formatting
- Commit changes with clear message

## Validation

**Before completing, MUST verify:**
- Arc42 template structure maintained
- Content is concise and AI-friendly
- No code examples (file references only)
- Consistent with other sections
- Human approval obtained

**If validation fails:**
- Fix issues immediately
- Re-present for approval

## Error Handling

- IF section not found → List available sections and ask for clarification
- IF change conflicts with other sections → Escalate to human
- IF unclear what to update → Ask clarifying questions

## Handoff Contract

**Input:**
- Section name to update
- Description of changes needed
- Context about why update needed

**Output:**
- Updated arc42 documentation in docs/arc42/
- Changes applied to appropriate section file(s)
- Consistent with arc42 template

**Next Agents:**
- None (documentation update complete)

**Trigger Conditions:**
- N/A (this is typically a standalone task)

## Dependencies

**Required for this command:**
- Arc42 docs: docs/arc42/ (all sections)
- Arc42 template structure knowledge

**Optional:**
- Source code: src/ (for file references)
- Story files: docs/product/stories/ (for context)
