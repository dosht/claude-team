# Project Guidelines for Claude Code

This document provides project-specific context and guidelines for working with this codebase.

## Project Overview

**Project Name:** transgate-claude-team-test
**Purpose:** Test project for implementing an agentic organization system
**Architecture:** [To be defined in arc42 docs]

## Quick Start for Claude

### Key Documents to Read First

1. **Developer Guide**: `docs/developer-guide/` - Coding standards and patterns
2. **Architecture**: `docs/arc42/` - Technical architecture and decisions
3. **Stories**: `docs/product/stories/` - User stories and requirements

### Project Structure

```
.
├── .claude/                    # Agent configuration
│   ├── organizational-principles.yaml
│   ├── project-config.yaml
│   └── agents/                 # Agent definitions
├── docs/
│   ├── developer-guide/        # Coding standards
│   ├── arc42/                  # Architecture docs
│   └── product/                # Product requirements
│       └── stories/            # User stories
├── src/                        # Source code
├── tests/                      # Test files
└── scripts/                    # Build and utility scripts
```

## Technology Stack

- **Frontend**: React
- **Backend**: Node.js
- **Database**: PostgreSQL
- **Testing**: Jest
- **Language**: TypeScript

## Coding Standards

### General Principles

1. **Type Safety**: Use TypeScript strict mode
2. **Testing**: Write tests for all new features
3. **Documentation**: Comment complex logic
4. **Error Handling**: Handle errors gracefully
5. **Performance**: Consider performance implications

### File Naming

- Components: `PascalCase.tsx`
- Utils/helpers: `camelCase.ts`
- Tests: `*.test.ts` or `*.spec.ts`
- Types: `types.ts` or `*.types.ts`

### Code Style

- Use ESLint and Prettier configurations
- 2 spaces for indentation
- Single quotes for strings
- Semicolons required
- Max line length: 100 characters

## Testing Requirements

### Unit Tests
- Test all functions and components
- Use descriptive test names
- Follow AAA pattern (Arrange, Act, Assert)
- Mock external dependencies

### E2E Tests
- Test critical user flows
- Test happy paths and error cases
- Use meaningful test data

### Coverage Requirements
- Minimum 80% code coverage
- 100% coverage for critical paths
- No skipped tests in production

## Architecture Patterns

### Component Structure
```typescript
// Component file structure
import React from 'react';
import { Props } from './types';
import styles from './Component.module.css';

export const Component: React.FC<Props> = ({ prop1, prop2 }) => {
  // Hooks
  // Event handlers
  // Effects
  // Render
  return <div>...</div>;
};
```

### API Structure
```typescript
// API endpoint pattern
export const handler = async (req: Request, res: Response) => {
  try {
    // Validate input
    // Process request
    // Return response
    return res.status(200).json({ success: true, data });
  } catch (error) {
    // Log error
    // Return error response
    return res.status(500).json({ success: false, error: error.message });
  }
};
```

## Development Workflow

### Story Implementation

1. **Read Story**: Understand requirements and acceptance criteria
2. **Plan**: Break down into tasks and make architectural decisions
3. **Implement**: Write code following standards
4. **Test**: Write and run tests
5. **Document**: Update relevant documentation
6. **Review**: Code ready for Tech Lead, Architect, Manual Tester review

### Git Workflow

- Branch naming: `feature/STORY-ID-description`
- Commit messages: `feat(scope): description` or `fix(scope): description`
- Pull requests: Include story ID and description

## Quality Gates

Before marking story complete:

- [ ] All acceptance criteria met
- [ ] All tests passing
- [ ] Code coverage meets requirements (>80%)
- [ ] No linter errors
- [ ] No TypeScript errors
- [ ] Documentation updated
- [ ] Ready for review

## Common Patterns

### Error Handling
```typescript
try {
  const result = await someAsyncOperation();
  return { success: true, data: result };
} catch (error) {
  logger.error('Operation failed', { error, context });
  return { success: false, error: error.message };
}
```

### Async Operations
```typescript
// Use async/await, not callbacks
const data = await fetchData();

// Handle loading and error states
const [loading, setLoading] = useState(false);
const [error, setError] = useState<Error | null>(null);
```

### Type Definitions
```typescript
// Define clear interfaces
interface User {
  id: string;
  name: string;
  email: string;
  createdAt: Date;
}

// Use type unions for variants
type Status = 'pending' | 'active' | 'completed' | 'failed';
```

## Debugging Tips

- Use `console.log` sparingly; prefer debugger or logging library
- Check browser console for errors
- Use React DevTools for component debugging
- Check network tab for API issues

## Performance Considerations

- Memoize expensive computations with `useMemo`
- Prevent unnecessary re-renders with `useCallback` and `React.memo`
- Lazy load components and routes
- Optimize images and assets
- Use pagination for large data sets

## Security Best Practices

- Validate all user input
- Sanitize data before rendering
- Use parameterized queries for database
- Store secrets in environment variables
- Implement proper authentication and authorization
- Use HTTPS in production

## Resources

- **Project Repository**: [Add URL]
- **Documentation**: See `docs/` directory
- **Issue Tracker**: [Add URL]
- **CI/CD Pipeline**: [Add URL]

## Agent-Specific Notes

### For Developer Agent
- Always read story file first
- Create implementation plan before coding
- Run tests after each major change
- Update story file with implementation notes

### For Tech Lead Agent
- Focus on code quality and maintainability
- Check adherence to coding standards
- Suggest improvements, not just criticisms
- Consider team patterns and conventions

### For Architect Agent
- Ensure architectural consistency
- Validate technology choices
- Document architectural decisions
- Consider scalability and maintainability

## Questions or Issues?

If you're unsure about:
- **Coding standards**: Check `docs/developer-guide/coding-standards.md`
- **Architecture**: Check `docs/arc42/architecture.md`
- **Story details**: Check the story file in `docs/product/stories/`
- **Unclear requirements**: Ask the human for clarification

---

*Last updated: 2025-10-12*
