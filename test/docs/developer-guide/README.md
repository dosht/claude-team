# Developer Guide

Welcome to the developer guide! This directory contains all the documentation developers need to contribute effectively to this project.

## Contents

- [Coding Standards](./coding-standards.md) - Code style, patterns, and conventions
- [TODO App Guide](./todo-app-guide.md) - Specific guide for TODO-001 epic implementation
- [Testing Guide](./testing-guide.md) - How to write and run tests
- [Git Workflow](./git-workflow.md) - Branch strategy and commit conventions
- [Development Setup](./development-setup.md) - Getting started with local development

## Quick Reference

### Before You Start Coding

1. Read the story file in `docs/product/stories/`
2. Review [coding standards](./coding-standards.md)
3. Check [architecture docs](../arc42/) for relevant patterns
4. Create an implementation plan

### While Coding

1. Follow TypeScript strict mode
2. Write tests alongside code
3. Run linter frequently
4. Commit regularly with clear messages

### Before Marking Complete

1. All tests passing
2. No linter errors
3. Code coverage >80%
4. Documentation updated
5. Implementation notes in story file

## Getting Help

- **Unclear requirements?** Check story file or ask Product Owner
- **Architecture questions?** Consult arc42 docs or ask Architect
- **Code patterns?** Check existing code or ask Tech Lead
- **Testing help?** See [testing-guide.md](./testing-guide.md)

## Contributing to This Guide

If you discover patterns or practices that should be documented:
1. Add them to the relevant guide
2. Update this README if adding new documents
3. Commit with message: `docs(dev-guide): description`

---

*This guide evolves with the project. Keep it updated!*
