# design-component

## Purpose
Design and implement a new React component with modern UI/UX, accessibility, and responsive design.

## Parameters
- component-purpose (required) - What the component does
- requirements (required) - Specific needs and constraints

## Workflow

### 1. Requirements Phase

**Gather Context:**
- Read design-system/ docs if exists
- Review existing components for consistency
- Load developer-guide/ for patterns
- Understand project tech stack

**Clarify Requirements:**
- Understand component purpose
- Identify user needs
- Note constraints (technical, design)
- Define success criteria

### 2. Design Phase

**Design Component API:**
- Define props interface
- Plan component composition
- Consider developer experience
- Keep interface simple and flexible

**Design Visual Appearance:**
- Follow design system tokens
- Choose colors, typography, spacing
- Design layout and structure
- Ensure modern, clean aesthetic

**Design All States:**
- Default state
- Hover, active, focus states
- Disabled state
- Loading state
- Error state
- Empty state (if applicable)
- Success state (if applicable)

**Design Interactions:**
- User clicks/taps
- Keyboard navigation
- Hover effects
- Touch interactions
- Animations and transitions

### 3. Accessibility Phase

**Implement Accessibility:**
- Use semantic HTML elements
- Add ARIA labels where needed
- Support keyboard navigation
- Ensure focus indicators visible
- Verify color contrast sufficient
- Test with screen reader in mind

**Standards:**
- MUST meet WCAG 2.1 Level AA minimum
- MUST NOT rely on color alone

### 4. Responsive Phase

**Design for All Viewports:**
- Start mobile-first (320px+)
- Scale to tablet (768px+)
- Scale to desktop (1024px+)
- Test all breakpoints
- Ensure no horizontal scroll

**Touch Considerations:**
- Touch targets minimum 44x44px
- Spacing for fat fingers
- No hover-dependent functionality

### 5. Implementation Phase

**Write Component Code:**
- Use modern React hooks
- Follow project patterns
- Apply TypeScript if used
- Optimize performance
- Keep code clean and maintainable

**Document Usage:**
- Write clear prop documentation
- Provide code examples
- Document accessibility features
- Note responsive behavior

### 6. Completion

**Present for Review:**
- Show complete component code
- Demonstrate all states
- Show responsive behavior
- Explain accessibility features

## Validation

**Before completing, MUST verify:**
- All states designed and implemented
- Accessibility features complete
- Responsive design works on all viewports
- Documentation complete
- Follows design system
- Code quality meets standards

**Component Checklist:**
- [ ] All states (default, hover, active, focus, disabled, loading, error, empty, success)
- [ ] Semantic HTML
- [ ] ARIA labels
- [ ] Keyboard navigation
- [ ] Focus indicators
- [ ] Color contrast
- [ ] Works on mobile/tablet/desktop
- [ ] Touch-friendly
- [ ] Follows design system
- [ ] Documented

## Error Handling

- IF design system unclear → Ask for clarification
- IF requirements ambiguous → Clarify before proceeding
- IF technical constraints conflict → Escalate to Developer
- IF project patterns unclear → Check developer-guide/

## Handoff Contract

**Input:**
- Component purpose description
- Requirements and constraints
- Optional: Design mockups or references

**Output:**
- React component code in src/components/
- Complete documentation
- All states implemented
- Accessibility features included
- Responsive design implemented

**Next Agents:**
- developer - Integrate component into application
- None if standalone component

**Trigger Conditions:**
- Component design complete
- All validation passed
- Documentation complete

## Dependencies

**Required for this command:**
- Project config: project-config.yaml
- Developer guide: docs/developer-guide/
- Project instructions: CLAUDE.md

**Optional:**
- Design system: docs/design-system/
- Existing components: src/components/
- Theme files: src/theme/ or similar
