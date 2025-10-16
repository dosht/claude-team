# review-ui

## Purpose
Review UI component for accessibility, UX best practices, and design consistency.

## Parameters
- component-path (required) - Path to component to review

## Workflow

### 1. Load Phase

**Load Component:**
- Read component code completely
- Understand implementation
- Review styles and layout
- Check props and state

**Load Context:**
- Review design-system/ if exists
- Check related components
- Load developer-guide/ for standards

### 2. Accessibility Review

**Check Standards:**
- Semantic HTML used (button, nav, header, etc.)
- ARIA labels present where needed
- Keyboard navigation works (tab order, enter/space)
- Focus indicators visible
- Color contrast sufficient (WCAG 2.1 AA: 4.5:1 text, 3:1 UI)
- Not relying on color alone

**Test Mentally:**
- Can be used with keyboard only?
- Clear for screen readers?
- Visible focus states?
- Appropriate ARIA roles?

**Score:** Rate High/Medium/Low

### 3. Responsive Design Review

**Check Viewports:**
- Works on mobile (320px+)
- Works on tablet (768px+)
- Works on desktop (1024px+)
- No horizontal scroll
- Touch targets sufficient (44x44px)

**Test Mentally:**
- Mobile-first approach used?
- Breakpoints appropriate?
- Layout adapts gracefully?
- Text readable on all sizes?

**Score:** Rate High/Medium/Low

### 4. UX Patterns Review

**Check States:**
- Loading state present
- Error state present
- Empty state present (if applicable)
- Success feedback present
- Disabled state present

**Check Feedback:**
- User actions have immediate feedback
- Error messages helpful and specific
- Loading indicators clear
- Call-to-actions obvious

**Score:** Rate High/Medium/Low

### 5. Visual Consistency Review

**Check Design System:**
- Colors from design system
- Typography from design system
- Spacing consistent
- Border radius consistent
- Shadows consistent

**Check Quality:**
- Layout clean and organized
- Spacing appropriate
- Visual hierarchy clear
- Aesthetically pleasing

**Score:** Rate High/Medium/Low

### 6. Performance Review

**Check Code:**
- Unnecessary re-renders avoided
- Expensive operations memoized
- Bundle size reasonable
- Animations performant (CSS over JS)

**Look For:**
- Missing React.memo/useMemo/useCallback
- Large inline objects/arrays
- Complex calculations in render
- Heavy dependencies

**Score:** Rate High/Medium/Low

### 7. Generate Feedback

**For Each Issue:**
- What: Specific issue found
- Why: Why it matters (UX impact, accessibility, etc.)
- How: How to fix it
- Priority: Critical/High/Medium/Low

**Format Feedback:**
- Be specific and actionable
- Reference standards when applicable
- Provide examples
- Be constructive

### 8. Make Decision

**Criteria:**
- IF no critical issues AND no high issues → Approve
- IF minor issues only → Approve with suggestions
- IF high or critical issues → Changes required

**Output:**
- Review status
- Scores for each area
- List of issues with priorities
- Specific recommendations
- Overall assessment

## Validation

**Before completing, MUST verify:**
- All review areas covered
- Scores assigned
- Issues documented with priorities
- Recommendations specific and actionable
- Decision made (approve/approve with suggestions/changes required)

**Review Checklist:**
- [ ] Accessibility reviewed
- [ ] Responsive design reviewed
- [ ] UX patterns reviewed
- [ ] Visual consistency reviewed
- [ ] Performance reviewed
- [ ] Issues prioritized
- [ ] Recommendations provided
- [ ] Decision made

## Error Handling

- IF component too complex → Review in sections
- IF design system unclear → Note inconsistency
- IF standards unclear → Use WCAG 2.1 AA baseline
- IF cannot determine issue → Ask for clarification

## Handoff Contract

**Input:**
- Component file path
- Optional: Specific areas to focus on

**Output:**
```yaml
component_path: string
review_status: "approved" | "approved_with_suggestions" | "changes_required"
accessibility_score: "high" | "medium" | "low"
responsive_design_score: "high" | "medium" | "low"
ux_patterns_score: "high" | "medium" | "low"
visual_consistency_score: "high" | "medium" | "low"
performance_score: "high" | "medium" | "low"
issues_found:
  - issue: string
    why: string
    how_to_fix: string
    priority: "critical" | "high" | "medium" | "low"
recommendations: array of strings
overall_assessment: string
```

**Next Agents:**
- react-ui-designer (self) - IF changes_required, trigger improve-ui
- developer - IF approved and needs backend integration
- None if approved without further work

**Trigger Conditions:**
- Review complete
- All areas assessed
- Feedback provided

## Dependencies

**Required for this command:**
- Component file at specified path
- Project config: project-config.yaml

**Optional:**
- Design system: docs/design-system/
- Developer guide: docs/developer-guide/
- WCAG 2.1 guidelines
