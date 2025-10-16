# create-design-system

## Purpose
Establish design system guidelines for consistent UI across the application.

## Parameters
- scope (required) - What to include (colors, typography, spacing, components, etc.)

## Workflow

### 1. Analysis Phase

**Review Existing UI:**
- Scan existing components if any
- Identify patterns already in use
- Note inconsistencies
- Extract implicit design tokens

**Understand Project Needs:**
- Review project-config.yaml
- Check brand guidelines if any
- Understand target audience
- Consider accessibility requirements

### 2. Define Design Tokens

**Core Tokens:**
- Colors (primary, secondary, neutral, semantic)
- Typography (font families, sizes, weights, line heights)
- Spacing (consistent scale, e.g., 4px base)
- Border radius (button, card, input styles)
- Shadows (elevation levels)
- Breakpoints (mobile, tablet, desktop)

**Semantic Tokens:**
- Success, error, warning, info colors
- Text colors (primary, secondary, disabled)
- Background colors (surface, background, overlay)
- Border colors

**Accessibility:**
- Color contrast ratios
- Focus indicator styles
- Touch target sizes
- Font size minimums

### 3. Document Component Patterns

**Common Components:**
- Buttons (primary, secondary, tertiary, sizes)
- Inputs (text, select, checkbox, radio)
- Cards
- Modals/dialogs
- Navigation
- Typography components

**Component Guidelines:**
- When to use each variant
- Spacing rules
- State variations
- Accessibility requirements
- Code examples

### 4. Create Examples

**Build Reference Components:**
- Create example implementations
- Show all variants and states
- Demonstrate proper usage
- Include accessibility features

**Create Style Guide:**
- Visual examples
- Code snippets
- Do's and don'ts
- Best practices

### 5. Documentation

**Write Guidelines:**
- Clear usage instructions
- Accessibility standards
- Responsive design approach
- Component composition patterns
- Testing requirements

**Organize Documentation:**
- Create docs/design-system/ directory
- Separate files for tokens, components, patterns
- Include visual examples
- Make it easy to navigate

### 6. Present for Approval

**Show Complete System:**
- Design tokens
- Component guidelines
- Example implementations
- Usage documentation

**Get Approval:**
- Present to human
- Gather feedback
- Make adjustments
- Finalize system

## Validation

**Before completing, MUST verify:**
- All design tokens defined
- Component patterns documented
- Examples provided
- Accessibility standards included
- System is consistent
- Documentation is complete

**Design System Checklist:**
- [ ] Color palette defined
- [ ] Typography scale defined
- [ ] Spacing scale defined
- [ ] Border radius values defined
- [ ] Shadow values defined
- [ ] Breakpoints defined
- [ ] Component patterns documented
- [ ] Examples provided
- [ ] Accessibility guidelines included
- [ ] Usage documentation complete

## Error Handling

- IF existing brand guidelines exist → Follow them
- IF scope too large → Break into phases
- IF unclear requirements → Ask for clarification
- IF conflicts with accessibility → Prioritize accessibility

## Handoff Contract

**Input:**
- Scope definition (what to include)
- Optional: Brand guidelines
- Optional: Existing UI to analyze

**Output:**
- Design system documentation in docs/design-system/
- Design tokens file (CSS variables, JS constants, or both)
- Component pattern examples
- Usage guidelines
- Accessibility standards

**Next Agents:**
- developer - Implement design system in code
- react-ui-designer (self) - Create components using system
- None if documentation only

**Trigger Conditions:**
- Design system approved
- Documentation complete
- Examples provided

## Dependencies

**Required for this command:**
- Project config: project-config.yaml
- Project instructions: CLAUDE.md

**Optional:**
- Existing UI components to analyze
- Brand guidelines
- Design mockups or references
