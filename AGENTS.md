# Cricket Matchmaking App — Engineering Instructions

## Product Source of Truth

Read `docs/PRD.md` before making product-level decisions.

The application is a hyperlocal recreational cricket marketplace connecting:

1. Teams/organizers with vacant player slots
2. Solo cricket players looking for suitable nearby matches

The primary MVP transaction is:

Organizer creates match with vacant slots
→ nearby player discovers match
→ player joins or requests to join
→ organizer approves if required
→ vacant slot is filled
→ match takes place
→ attendance/reliability is recorded

Do not expand scope beyond the PRD without explicit instruction.

---

## Engineering Principles

1. Build incrementally.
2. Prefer simple, maintainable architecture.
3. Do not introduce microservices.
4. Avoid unnecessary abstractions.
5. Use strict typing.
6. Validate all API inputs.
7. Never trust client-calculated slot counts.
8. Critical match participation operations must be transaction-safe.
9. Protect user privacy.
10. Precise residential coordinates must never be publicly exposed.
11. Write tests for business-critical logic.
12. Update documentation when architecture changes.

---

## Repository Structure

apps/mobile
Flutter mobile application.

apps/api
NestJS backend API.

apps/admin
Reserved for future admin dashboard.

docs
Product and engineering documentation.

infrastructure
Docker and deployment configuration.

---

## Mobile Standards

Use:

- Flutter
- Riverpod for state management
- GoRouter for navigation
- Dio for HTTP
- Feature-first architecture

Preferred structure:

lib/
  core/
  features/
  shared/

Each feature may contain:

data/
domain/
presentation/

Avoid excessive clean-architecture boilerplate.

---

## Backend Standards

Use:

- NestJS
- PostgreSQL
- PostGIS
- Prisma
- Swagger/OpenAPI

Organize backend by domain modules.

Expected modules:

auth
users
matches
participants
availability
venues
ratings
reports
notifications

Later:

chat
payments

---

## Database Rules

Use UUID primary keys.

Use timestamps:

createdAt
updatedAt

Use enums where appropriate.

Use PostGIS-compatible location storage.

Never rely only on frontend validation.

Match slot counts must remain consistent during concurrent join requests.

---

## Authentication

Development:

Support a documented development OTP flow.

Production architecture:

Use an OTP provider abstraction so the provider can be replaced.

Never hardcode production credentials.

---

## Testing

Critical backend logic requires tests.

Prioritize:

match creation
slot calculations
join flow
approval flow
concurrent joins
cancellation
availability matching
reliability calculations

---

## Definition of Done

A task is complete when:

1. Code compiles.
2. Lint passes.
3. Relevant tests pass.
4. Database migrations work.
5. API contracts are documented.
6. No obvious security/privacy issue is introduced.
7. Existing functionality is not broken.
8. Documentation is updated when necessary.

Do not claim a feature works unless it has been verified.
