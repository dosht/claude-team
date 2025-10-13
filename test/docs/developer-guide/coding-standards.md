# Coding Standards

These standards ensure consistency and maintainability across the codebase.

## General Principles

### 1. Clarity Over Cleverness
Write code that's easy to understand, not code that shows off language tricks.

```typescript
// Good: Clear and straightforward
const isAdult = age >= 18;

// Avoid: Unnecessarily clever
const isAdult = !!(age >= 18);
```

### 2. Type Safety First
Use TypeScript's type system fully. Avoid `any` unless absolutely necessary.

```typescript
// Good: Explicit types
interface User {
  id: string;
  name: string;
  email: string;
}

function getUser(id: string): Promise<User> {
  return fetch(`/api/users/${id}`).then(r => r.json());
}

// Avoid: Using any
function getUser(id: any): Promise<any> {
  return fetch(`/api/users/${id}`).then(r => r.json());
}
```

### 3. Small, Focused Functions
Each function should do one thing well.

```typescript
// Good: Single responsibility
function validateEmail(email: string): boolean {
  const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  return emailRegex.test(email);
}

function sendWelcomeEmail(email: string): Promise<void> {
  if (!validateEmail(email)) {
    throw new Error('Invalid email');
  }
  return emailService.send(email, 'Welcome!');
}

// Avoid: Doing too much in one function
function processUser(email: string): Promise<void> {
  const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  if (!emailRegex.test(email)) throw new Error('Invalid');
  return emailService.send(email, 'Welcome!');
}
```

## File Organization

### Directory Structure
```
src/
├── components/          # React components
│   ├── common/         # Shared components
│   └── features/       # Feature-specific components
├── hooks/              # Custom React hooks
├── services/           # API and external services
├── utils/              # Utility functions
├── types/              # TypeScript type definitions
├── contexts/           # React contexts
└── styles/             # Global styles
```

### File Naming

- **Components**: `PascalCase.tsx` (e.g., `UserProfile.tsx`)
- **Hooks**: `camelCase.ts` starting with `use` (e.g., `useAuth.ts`)
- **Utils**: `camelCase.ts` (e.g., `formatDate.ts`)
- **Types**: `PascalCase.types.ts` (e.g., `User.types.ts`)
- **Tests**: `*.test.ts` or `*.spec.ts`

### Component File Structure

```typescript
// 1. Imports - external first, then internal
import React, { useState, useEffect } from 'react';
import { User } from '@/types/User.types';
import { useAuth } from '@/hooks/useAuth';
import { formatDate } from '@/utils/formatDate';
import styles from './UserProfile.module.css';

// 2. Types/Interfaces
interface UserProfileProps {
  userId: string;
  onUpdate?: (user: User) => void;
}

// 3. Component
export const UserProfile: React.FC<UserProfileProps> = ({ userId, onUpdate }) => {
  // 3a. State
  const [user, setUser] = useState<User | null>(null);
  const [loading, setLoading] = useState(true);

  // 3b. Hooks
  const { isAuthenticated } = useAuth();

  // 3c. Effects
  useEffect(() => {
    loadUser();
  }, [userId]);

  // 3d. Event handlers
  const loadUser = async () => {
    setLoading(true);
    try {
      const userData = await fetchUser(userId);
      setUser(userData);
    } catch (error) {
      console.error('Failed to load user', error);
    } finally {
      setLoading(false);
    }
  };

  // 3e. Render logic
  if (loading) return <div>Loading...</div>;
  if (!user) return <div>User not found</div>;

  return (
    <div className={styles.container}>
      <h1>{user.name}</h1>
      <p>{user.email}</p>
    </div>
  );
};
```

## TypeScript Standards

### Type Definitions

```typescript
// Use interfaces for objects
interface User {
  id: string;
  name: string;
  email: string;
  role: UserRole;
}

// Use type aliases for unions and primitives
type UserRole = 'admin' | 'user' | 'guest';
type UserId = string;

// Use enums sparingly (prefer string unions)
// Good
type Status = 'pending' | 'active' | 'completed';

// Only use enum when you need reverse mapping
enum HttpStatus {
  OK = 200,
  NotFound = 404,
  ServerError = 500
}
```

### Avoid `any`

```typescript
// Bad
function processData(data: any) {
  return data.value;
}

// Good - use unknown and type guards
function processData(data: unknown) {
  if (typeof data === 'object' && data !== null && 'value' in data) {
    return (data as { value: string }).value;
  }
  throw new Error('Invalid data');
}

// Better - use proper types
interface DataWithValue {
  value: string;
}

function processData(data: DataWithValue) {
  return data.value;
}
```

## React Best Practices

### Component Design

```typescript
// Good: Functional components with hooks
export const Counter: React.FC = () => {
  const [count, setCount] = useState(0);

  return (
    <button onClick={() => setCount(count + 1)}>
      Count: {count}
    </button>
  );
};

// Use React.memo for expensive renders
export const ExpensiveComponent = React.memo<Props>(({ data }) => {
  // Expensive rendering logic
  return <div>{/* ... */}</div>;
});
```

### Hooks Best Practices

```typescript
// Custom hooks for reusable logic
function useWindowSize() {
  const [size, setSize] = useState({ width: 0, height: 0 });

  useEffect(() => {
    const updateSize = () => {
      setSize({ width: window.innerWidth, height: window.innerHeight });
    };

    window.addEventListener('resize', updateSize);
    updateSize();

    return () => window.removeEventListener('resize', updateSize);
  }, []);

  return size;
}

// Use useCallback for event handlers passed to children
const handleClick = useCallback(() => {
  doSomething(id);
}, [id]);

// Use useMemo for expensive computations
const sortedData = useMemo(() => {
  return data.sort((a, b) => a.value - b.value);
}, [data]);
```

## Error Handling

### Consistent Error Patterns

```typescript
// API call error handling
async function fetchUser(id: string): Promise<User> {
  try {
    const response = await fetch(`/api/users/${id}`);

    if (!response.ok) {
      throw new Error(`Failed to fetch user: ${response.statusText}`);
    }

    return await response.json();
  } catch (error) {
    console.error('Error fetching user:', error);
    throw error; // Re-throw to let caller handle
  }
}

// Component error handling
function UserProfile({ userId }: Props) {
  const [error, setError] = useState<Error | null>(null);

  useEffect(() => {
    fetchUser(userId)
      .then(setUser)
      .catch(setError);
  }, [userId]);

  if (error) {
    return <ErrorMessage message={error.message} />;
  }

  return <div>{/* ... */}</div>;
}
```

## Naming Conventions

### Variables and Functions

```typescript
// camelCase for variables and functions
const userName = 'John';
const totalCount = 42;

function calculateTotal(items: Item[]): number {
  return items.reduce((sum, item) => sum + item.price, 0);
}

// Boolean variables start with is/has/should
const isAuthenticated = true;
const hasPermission = false;
const shouldRender = true;

// Event handlers start with handle
const handleClick = () => {};
const handleSubmit = () => {};
```

### Components and Types

```typescript
// PascalCase for components and types
interface UserProfile {}
type UserRole = 'admin' | 'user';

const UserProfile: React.FC = () => {};
const Button: React.FC = () => {};
```

### Constants

```typescript
// UPPER_SNAKE_CASE for true constants
const MAX_RETRY_COUNT = 3;
const API_BASE_URL = 'https://api.example.com';

// Regular camelCase for config objects
const apiConfig = {
  baseUrl: 'https://api.example.com',
  timeout: 5000,
};
```

## Code Style

### Formatting

- **Indentation**: 2 spaces
- **Line length**: Max 100 characters
- **Quotes**: Single quotes for strings
- **Semicolons**: Required
- **Trailing commas**: Use them in multiline

```typescript
// Good
const user = {
  name: 'John',
  email: 'john@example.com',
  role: 'admin',
};

// Multiline function arguments
function createUser(
  name: string,
  email: string,
  role: string,
): User {
  return { name, email, role };
}
```

### Comments

```typescript
// Use comments for WHY, not WHAT
// Good: Explains reasoning
// Using setTimeout to avoid blocking the main thread
setTimeout(() => processLargeData(), 0);

// Avoid: States the obvious
// Set count to 0
const count = 0;

// Use JSDoc for public APIs
/**
 * Calculates the total price of items in the cart
 * @param items - Array of cart items
 * @param discountCode - Optional discount code
 * @returns Total price after discount
 */
function calculateTotal(items: CartItem[], discountCode?: string): number {
  // Implementation
}
```

## Testing Requirements

See [testing-guide.md](./testing-guide.md) for detailed testing standards.

## Performance Considerations

- Memoize expensive calculations with `useMemo`
- Prevent unnecessary re-renders with `useCallback` and `React.memo`
- Lazy load routes and heavy components
- Debounce user input handlers
- Optimize images and assets

## Security Best Practices

- Validate and sanitize all user input
- Use parameterized queries for database operations
- Store secrets in environment variables
- Implement proper authentication and authorization
- Use HTTPS in production
- Escape user content before rendering

## Questions?

If you're unsure about a coding pattern or standard:
1. Check existing code for similar patterns
2. Ask the Tech Lead for guidance
3. Propose a new standard if needed

---

*Keep this document updated as patterns evolve!*
