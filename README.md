# Cricket Matchmaking App

Phase 0 foundation for a hyperlocal recreational-cricket marketplace. The repository contains a Flutter mobile application, a NestJS API, and local Postgres/PostGIS infrastructure.

## Prerequisites

- [Flutter](https://docs.flutter.dev/get-started/install) (stable channel)
- Node.js 22+ and pnpm 11+
- Docker Desktop with Docker Compose

## Local setup

1. Copy `apps/api/.env.example` to `apps/api/.env` and adjust values if needed.
2. Start the database:

   ```sh
   docker compose -f infrastructure/docker-compose.yml up -d
   ```

3. Install backend dependencies:

   ```sh
   pnpm install
   ```

4. Generate Prisma Client and run migrations:

   ```sh
   pnpm prisma:generate
   pnpm --filter @cricket-matchmaking/api prisma:migrate
   ```

5. Start the API at `http://localhost:3000`:

   ```sh
   pnpm --filter @cricket-matchmaking/api start:dev
   ```

   `GET http://localhost:3000/health` returns `{ "status": "ok" }`. Swagger UI is available at `http://localhost:3000/api`.

6. Run the Flutter application:

   ```sh
   cd apps/mobile
   # One time only: generate the Android and iOS runner projects.
   flutter create . --platforms=android,ios
   flutter pub get
   flutter run --dart-define=API_BASE_URL=http://localhost:3000
   ```

   Use `apps/mobile/.env.example` as the reference for local values. The current app reads the API base URL from the compile-time `API_BASE_URL` definition.

## Checks

```sh
# Backend
pnpm lint
pnpm test
pnpm build

# Mobile
cd apps/mobile
flutter analyze
flutter test
```

## Repository layout

```text
apps/
  api/       NestJS API, Prisma schema, and tests
  mobile/    Flutter app
docs/        Product and engineering documentation
infrastructure/  Local Docker Compose services
```

## Development authentication

OTP authentication is a later product phase. When it is introduced, development will use a documented local OTP provider behind an `OtpProvider` abstraction; production SMS or Firebase credentials must only be supplied through environment variables.
