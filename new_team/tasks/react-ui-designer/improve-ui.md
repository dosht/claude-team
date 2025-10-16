# improve-ui

## Purpose
Improve existing UI component for better UX, accessibility, and visual design.

## Parameters
- component-path (required) - Path to component to improve
- issues (optional) - Known problems to address

## Workflow

### 1. Analysis Phase

**Load Component:**
- Read component code completely
- Understand current implementation
- Review existing styles
- Check current props API

**Load Context:**
- Review design-system/ if exists
- Check related components
- Load developer-guide/ for patterns

**Identify Issues:**
- Check accessibility (ARIA, keyboard, semantic HTML)
- Check responsive design (mobile, tablet, desktop)
- Check UX patterns (loading, error, empty states)
- Check visual consistency (design system alignment)
- Check performance (unnecessary re-renders, bundle size)
- Review code quality

### 2. Design Improvements

**Prioritize Issues:**
- Critical: Accessibility, broken functionality
- High: Poor UX, missing states
- Medium: Inconsistency, performance
- Low: Minor polish

**Design Solutions:**
- Fix accessibility issues
- Add missing states
- Improve visual design
- Enhance responsiveness
- Optimize performance

**Validate Against Standards:**
- WCAG 2.1 Level AA for accessibility
- Design system compliance
- Project coding standards

### 3. Implementation Phase

**Apply Improvements:**
- Fix issues systematically
- Preserve existing functionality
- Maintain backward compatibility
- Follow project patterns

**Test Changes:**
- Verify all states work
- Test responsive behavior
- Check accessibility
- Ensure no regressions

### 4. Documentation

**Document Changes:**
- Explain what was improved
- Note why changes were made
- Update component documentation
- Provide before/after comparison

**Present Improvements:**
- Show specific changes
- Explain benefits
- Demonstrate fixes

## Validation

**Before completing, MUST verify:**
- All identified issues fixed
- No functionality broken
- Accessibility maintained or improved
- Responsive design still works
- Code quality improved
- Documentation updated

**Improvement Checklist:**
- [ ] Accessibility improved
- [ ] All states work correctly
- [ ] Responsive on all viewports
- [ ] Follows design system
- [ ] Performance optimized
- [ ] No regressions
- [ ] Documentation updated

## Error Handling

- IF breaking changes needed → Get approval first
- IF functionality unclear → Ask before modifying
- IF performance issues complex → Consult Developer
- IF design system conflicts → Clarify with team

## Handoff Contract

**Input:**
- Component file path
- Optional: List of known issues
- Optional: Review feedback

**Output:**
- Improved component code
- Updated documentation
- Before/after comparison
- List of changes made
- Explanation of improvements

**Next Agents:**
- developer - If backend integration needed
- manual-tester - If significant changes require testing
- None if minor improvements

**Trigger Conditions:**
- Improvements complete
- No regressions introduced
- All validation passed

## Dependencies

**Required for this command:**
- Component file at specified path
- Developer guide: docs/developer-guide/
- Project config: project-config.yaml

**Optional:**
- Design system: docs/design-system/
- Related components for consistency
- Theme files
