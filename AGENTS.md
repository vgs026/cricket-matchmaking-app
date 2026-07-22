# Cricket Matchmaking App — Engineering Instructions

## Product Source of Truth

Read `docs/PRD.md` before making product-level decisions.

The application is a hyperlocal recreational cricket marketplace connecting:

1. Teams/organizers with vacant player slots
2. Solo cricket players looking for suitable nearby matches

Primary MVP transaction:

Organizer creates match with vacant slots  
→ nearby player discovers match  
→ player joins or requests to join  
→ organizer approves if required  
→ vacant slot is filled  
→ match takes place  
→ attendance/reliability is recorded

Do not expand scope beyond the PRD without explicit instruction.

## Engineering Principles

- Build incrementally.
- Prefer simple, maintainable architecture.
- Use a modular monolith; do not introduce microservices.
- Avoid unnecessary abstractions.
- Use strict typing.
- Validate all API inputs.
- Never trust client-calculated slot counts.
- Critical participation and capacity operations must be transaction-safe.
- Protect user privacy and never publicly expose precise residential coordinates.
- Write tests for business-critical logic.
- Update documentation when architecture changes.

## Mobile

Use:

- Flutter
- Riverpod
- GoRouter
- Dio
- Feature-first organization

Preferred structure:

```text
apps/mobile/lib/
  core/
    config/
    network/
    routing/
    theme/
  features/
  shared/
```

Avoid excessive clean-architecture boilerplate.

## Backend

Use:

- NestJS
- TypeScript
- PostgreSQL
- PostGIS
- Prisma
- Swagger/OpenAPI

Domain modules:

- health
- auth
- users
- matches
- participants
- availability
- venues
- ratings
- reports
- notifications

Later:

- chat
- payments

## Database

- Use UUID primary keys.
- Use `createdAt` and `updatedAt` timestamps where appropriate.
- Use enums for stable domain states.
- Support PostGIS geospatial querying.
- Never rely only on frontend validation.
- Match capacity and participation operations must remain correct under concurrent requests.

## Authentication

Development must support a documented development OTP flow.

Use an `OtpProvider` abstraction so a production SMS/Firebase provider can be added later.

Never hardcode production credentials.

## Testing

Prioritize tests for:

- match creation
- slot calculations
- join flow
- approval flow
- concurrent joins
- cancellation
- availability matching
- reliability calculations

## Definition of Done

A task is complete only when:

1. Code compiles where required tooling is available.
2. Lint passes.
3. Relevant tests pass.
4. Database migrations work where infrastructure is available.
5. API contracts are documented.
6. No obvious security/privacy issue is introduced.
7. Existing functionality is not broken.
8. Documentation is updated where necessary.

Do not claim functionality was verified if the required tooling was unavailable.
