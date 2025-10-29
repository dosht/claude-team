# create-tutorial

## Purpose
Generate custom tutorial tailored to trainee's level, learning style, and progress. Invokes specialist agents for content validation.

## Parameters
- trainee-name (required) - Trainee identifier (e.g., john-smith)
- topic (required) - Tutorial topic (e.g., react-hooks, testing-strategies, api-design)
- version (optional) - Tutorial version if updating (default: v1)

## Workflow

### 1. Analyze Trainee Context

**Load Trainee Information:**
- Read profile from docs/training/{trainee-name}/profile.md
- Read progress tracker from docs/training/{trainee-name}/progress-tracker.md
- Read latest assessment from docs/training/{trainee-name}/assessments/
- Review any existing tutorials and completed exercises

**Determine Tutorial Parameters:**
- Identify trainee's current skill level in topic area
- Review learning style preferences (visual, hands-on, theoretical)
- Check prerequisite knowledge (are prerequisites completed?)
- Determine appropriate complexity level
- Identify knowledge gaps to address
- Note any previous struggles or patterns

### 2. Design Tutorial Structure

**Tutorial Components:**
1. **Learning Objectives** - Clear, measurable outcomes
2. **Prerequisites** - Required knowledge before starting
3. **Theory Section** - Core concepts with explanations
4. **Practical Examples** - Real-world code examples
5. **Guided Exercises** - Step-by-step practice
6. **Independent Exercises** - Apply knowledge without guidance
7. **Challenge Problems** - Stretch goals for mastery
8. **Common Mistakes** - Pitfalls and how to avoid
9. **Best Practices** - Industry standards and patterns
10. **Further Learning** - Resources for deeper dive

**Adaptation Based on Learning Style:**
- Visual learners: More diagrams, code visualization
- Hands-on learners: More exercises, fewer theory
- Theoretical learners: Deeper explanations, architectural context

**Progressive Difficulty:**
- Start with simplest form of concept
- Build incrementally with each example
- Exercises progress from guided to independent
- Challenge problems extend to new scenarios

### 3. Invoke Specialist Agents for Content

**Determine Which Specialists to Invoke (can invoke in parallel):**

**Tech Lead** - For code quality, testing, best practices
- Topics: coding patterns, testing strategies, refactoring, code review
- Invoke: /tech-lead research-best-practices OR review-implementation (for examples)
- Input: Topic and target skill level
- Expected: Coding standards, common patterns, testing approaches

**Architect** - For system design, architectural patterns
- Topics: API design, system architecture, scalability, integration patterns
- Invoke: /architect (review or consultation)
- Input: Architectural topic and complexity level
- Expected: Design principles, patterns, trade-offs

**Developer** - For working code examples
- Topics: implementation examples, feature walkthroughs
- Invoke: /developer create-plan (for approach) or examine existing code
- Input: Example feature requirement
- Expected: Production-quality code following standards

**React UI Designer** - For UI/UX patterns and components
- Topics: React components, UI patterns, accessibility, UX principles
- Invoke: /react-ui-designer (design or review)
- Input: UI concept to teach
- Expected: React best practices, component patterns, accessibility

**Parallel Invocation Examples:**
- Full-stack tutorial → Invoke Tech Lead AND Architect in parallel
- React testing tutorial → Invoke Tech Lead AND React UI Designer in parallel
- API design tutorial → Invoke Architect AND Developer in parallel

**Integration with Specialists:**
- Frame request clearly with learning objective and level
- Extract relevant content from specialist responses
- Adapt specialist content to trainee's level
- Cite specialists' input in tutorial (e.g., "Per Tech Lead standards...")
- MUST NOT modify other agents' documentation directly

### 4. Generate Tutorial Content

**Tutorial Template Structure:**

```markdown
# {Topic} Tutorial - {Trainee Name}

**Version:** {v1/v2/etc}
**Created:** {date}
**Target Level:** {beginner/junior/intermediate}
**Estimated Time:** {X hours}
**Last Updated:** {date}

## Learning Objectives
By completing this tutorial, you will be able to:
1. {Measurable objective 1}
2. {Measurable objective 2}
3. {Measurable objective 3}

## Prerequisites
Before starting, you should understand:
- {Prerequisite 1} - {Link to previous tutorial if available}
- {Prerequisite 2}

**Prerequisites Check:**
- [ ] {Checkpoint 1}
- [ ] {Checkpoint 2}

## Part 1: Core Concepts

### {Concept 1}
{Clear explanation of concept}

**Why This Matters:**
{Real-world relevance and importance}

**Mental Model:**
{Analogy or simplified way to think about it}

### {Concept 2}
...

## Part 2: Practical Examples

### Example 1: {Simple Example}
**Goal:** {What we're building}
**Concepts Used:** {List}

```javascript
// Code with detailed comments explaining each part
```

**What's Happening:**
{Line-by-line explanation if needed}

**Key Takeaways:**
- {Important point 1}
- {Important point 2}

### Example 2: {More Complex Example}
...

## Part 3: Guided Exercises

### Exercise 1: {Title}
**Objective:** {What trainee will learn}
**Difficulty:** ⭐ (1 star = easiest)

**Instructions:**
1. {Step 1}
2. {Step 2}
...

**Hints:**
- {Hint 1 - subtle guidance}
- {Hint 2}

**Expected Outcome:**
{What correct solution looks like}

{Link to solution file}

### Exercise 2: {Title}
**Difficulty:** ⭐⭐
...

## Part 4: Independent Exercises

### Exercise 3: {Title}
**Objective:** {What trainee will learn}
**Difficulty:** ⭐⭐⭐

**Requirements:**
- {Requirement 1}
- {Requirement 2}

**Evaluation Criteria:**
- {How this will be assessed}

**No hints provided - apply what you learned!**

{Link to solution file with detailed explanation}

### Exercise 4: {Title}
...

## Part 5: Challenge Problems

### Challenge 1: {Title}
**Difficulty:** ⭐⭐⭐⭐
**Objective:** Extend concepts to new scenario

{Open-ended problem requiring creative application}

{Multiple valid approaches - solution shows one example}

## Common Mistakes & Pitfalls

### Mistake 1: {Common Error}
**Why It Happens:** {Explanation}
**How to Avoid:** {Prevention strategy}
**How to Fix:** {Solution if encountered}

### Mistake 2: {Common Error}
...

## Best Practices (from Tech Lead / Architect)

1. {Best practice 1 with rationale}
2. {Best practice 2 with rationale}
...

{Cite source: "Per Tech Lead standards..." or "Architect recommends..."}

## Knowledge Check

Self-assessment questions:
1. {Question testing understanding}
2. {Question requiring application}
3. {Question about edge cases}

{Answers at end of document}

## Further Learning

**Next Steps:**
- {Recommended next tutorial}
- {Related advanced topic}

**Additional Resources:**
- {External resource with annotation}
- {Related project documentation}

## Exercises Directory

All exercises and solutions are in:
[Exercises Directory](docs/training/{trainee-name}/{topic}/exercises/)

Submit your solutions there with filename:
`trainee-submission-{exercise-number}.{ext}`

---

**Knowledge Check Answers:**
{Answers to self-assessment questions}
```

**Create Exercises Directory:**
- Create docs/training/{trainee-name}/{topic}/exercises/
- For each exercise, create solution file with detailed explanation
- Prepare evaluation rubric for independent exercises

### 5. Store Tutorial and Update Progress

**Save Tutorial:**
- Location: docs/training/{trainee-name}/{topic}/tutorial-{version}.md
- If updating existing tutorial, increment version number
- Keep previous versions for reference
- Reference using markdown link: `[{Topic} Tutorial](docs/training/{trainee-name}/{topic}/tutorial-{version}.md)`

**Update Progress Tracker:**
- Add topic to "In Progress" section
- Set start date and 0% progress
- Set status: "Tutorial Created - Not Started"
- Link to tutorial file using markdown: `[{Topic} Tutorial](docs/training/{trainee-name}/{topic}/tutorial-{version}.md)`

**Notify Senior Developer:**
- Present tutorial summary
- Highlight customizations for trainee
- Explain progression strategy
- Note specialist input incorporated

### 6. Present Tutorial to Trainee

**Provide Context:**
- Explain learning objectives clearly
- Review prerequisites - ensure ready to start
- Set expectations for time commitment
- Explain exercise submission process
- Clarify when to ask for help vs struggle productively

**Establish Checkpoints:**
- Part 1-2 (Theory + Examples): Review for understanding
- Part 3 (Guided Exercises): Review submissions
- Part 4 (Independent Exercises): Formal evaluation
- Part 5 (Challenge): Optional for advanced trainees

## Validation

**Before completing, MUST verify:**
- Tutorial appropriate for trainee's assessed level
- Learning objectives clear and measurable
- Progressive difficulty from simple to complex
- Specialist input incorporated where relevant
- All exercises have solution files with explanations
- Tutorial stored in correct location
- Progress tracker updated accurately

**If validation fails:**
- Adjust complexity level to match trainee
- Add missing explanations or examples
- Create missing solution files
- Correct progress tracker entries

## Error Handling

- IF trainee profile not found → Run assess-trainee first
- IF prerequisites not met → Create prerequisite tutorial first
- IF topic too broad → Break into multiple tutorials
- IF no specialist available for critical content → Escalate to human for guidance
- IF trainee struggling with previous tutorial → Remediate before creating new tutorial

## Handoff Contract

**Input:**
- trainee-name: String (required)
- topic: String (required)
- version: String (optional, default "v1")
- Trainee profile: docs/training/{trainee-name}/profile.md
- Progress tracker: docs/training/{trainee-name}/progress-tracker.md
- Latest assessment: docs/training/{trainee-name}/assessments/

**Output:**
- Tutorial file: docs/training/{trainee-name}/{topic}/tutorial-{version}.md
- Exercise solutions: docs/training/{trainee-name}/{topic}/exercises/solution-*.md
- Updated progress tracker: docs/training/{trainee-name}/progress-tracker.md

**Next Agents:**
- junior-developer-mentor (check-progress) - After trainee completes exercises
- tech-lead, architect, developer, react-ui-designer (parallel) - For content validation during creation

**Trigger Conditions:**
- Tutorial created → Trainee begins working through content
- Trainee completes exercises → Trigger check-progress command

## Dependencies

**Required for this command:**
- Trainee profile: docs/training/{trainee-name}/profile.md
- Progress tracker: docs/training/{trainee-name}/progress-tracker.md
- Latest assessment: docs/training/{trainee-name}/assessments/
- Project standards: docs/developer-guide/
- Project architecture: docs/arc42/

**Optional (based on topic):**
- Tech Lead for coding standards and best practices
- Architect for system design and patterns
- Developer for working code examples
- React UI Designer for UI/UX patterns
- Previous tutorials for consistency
