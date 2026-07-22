# Cricket Matchmaking Marketplace

## Product Requirements Document

**MVP Product Blueprint · India · Version 1.0**

> **Core proposition:** Connect teams with vacant player slots to nearby cricketers who are available and ready to play.

## 1. Executive Summary

The product is a hyperlocal recreational cricket marketplace. Its primary demand-side user is a solo player looking for a suitable game; its supply-side user is an organizer or team that has a scheduled match but lacks enough players. The MVP supports all recreational cricket formats while optimizing one transaction: a genuine vacant slot gets filled by a suitable, reliable nearby player.

**Long-term vision:** A player should be able to say, “I want to play cricket at this time near this location,” and the platform should reliably find or create a game.

## 2. Product Vision and Positioning

### Vision

Make recreational cricket accessible on demand, without requiring an existing team, office group, club, or personal network.

### Positioning

Not a generic cricket social network, scoring app, tournament manager, or turf-booking clone. The initial wedge is real-time cricket player-slot liquidity.

### Brand promise

> Want to play? There’s a game waiting.

## 3. Problem Statement

### Solo-player problem

- Players may be willing and available but lack a local team or trusted cricket network.
- New-city residents, corporate professionals, students, and irregular players often cannot find games matching their schedule and travel radius.
- Existing discovery is fragmented across friends, office groups, WhatsApp groups, and local contacts.

### Organizer problem

- Teams frequently have last-minute player shortages.
- Organizers repeatedly message multiple groups, call friends, and ask confirmed players to bring substitutes.
- Late cancellations create urgent vacancies and can threaten the entire match.

### WhatsApp gap

WhatsApp is excellent for communication inside an existing network, but weak for structured discovery outside that network. It cannot efficiently answer: “Who within 5–10 km is available Saturday evening, matches this format/skill requirement, and is likely to show up?”

## 4. MVP Goals and Non-Goals

### Primary goals

- Help solo players discover suitable nearby cricket games.
- Help teams and organizers fill genuine vacant slots quickly.
- Create measurable trust through attendance and reliability.
- Use availability, location, format, role, and skill to improve matching.
- Use WhatsApp sharing as an acquisition and distribution channel rather than trying to replace WhatsApp.

### Non-goals for V1

- Live scoring and advanced player statistics
- Tournament management
- Fantasy cricket
- Social feed, reels, or cricket news
- AI coaching/performance analysis
- Complex league management
- Full venue marketplace and automated turf booking

## 5. User Model and Personas

There are no permanent separate Player and Organizer account types. A single user can join another person’s match today and host a match tomorrow.

### Primary persona — Solo Player

A recreational cricketer who wants to play but does not always have a team. Core job: find a suitable game based on time, distance, format, skill, role, and cost.

### Secondary persona — Organizer

A person managing a regular or ad-hoc cricket group who has a scheduled match and needs additional players. Core job: publish vacancies, review applicants, fill slots, communicate logistics, and manage attendance.

## 6. Supported Cricket Configuration

| Configuration | Supported values |
| --- | --- |
| Match types | Box Cricket, Turf Cricket, Ground Cricket, Indoor Cricket, Practice/Net Session |
| Ball types | Tennis Ball, Leather/Season Ball, Soft Tennis, Other |
| Team sizes | 5-, 6-, 7-, 8-, 10-, or 11-a-side; Custom |
| Overs | 5, 6, 8, 10, 12, 15, 20, 25+, Custom |
| Skill levels | Beginner Friendly, Intermediate, Advanced, Open to All |
| Player roles | Batsman, Bowler, All-rounder, Wicketkeeper, Any |

## 7. Core Navigation

- **Home:** Personalized nearby matches, urgent vacancies, and availability shortcuts.
- **Discover:** Search and filter nearby open matches.
- **Create (+):** Host a match and publish vacancies.
- **My Games:** Upcoming, hosting, requests, and completed games.
- **Profile:** Cricket profile, preferences, availability, reliability, and settings.

## 8. Onboarding

1. Phone-number login and OTP verification.
2. Basic profile: name, optional profile image, age bracket, and optional gender/prefer-not-to-say.
3. Location permission or manually selected play area. Precise residential location must not be publicly exposed.
4. Cricket roles and optional batting/bowling style.
5. Self-selected skill level: Beginner, Intermediate, or Advanced.
6. Preferred cricket formats and ball types.
7. Enter the Home/Discover experience.

**Target onboarding time:** Under 60 seconds where practical.

## 9. Home Experience

- **Primary shortcuts:** Play Today, Play This Weekend, I’m Available to Play, Host a Match.
- **Sections:** Matches Near You, Urgently Need Players, Recommended For You.
- **Card priority:** date/time, distance, slots, format, skill, contribution, and host trust.

## 10. Match Card

Each match card shows:

- Match type and date/time
- Venue/locality and distance
- Open slots and confirmed-player count
- Skill requirement and ball type
- Contribution per player
- Host rating/reliability summary
- View Match and Join or Request call to action

## 11. Discover and Search

- **Date:** Today, Tomorrow, Saturday, Sunday, or Custom.
- **Distance:** 2 km, 5 km, 10 km, 20 km, or Any.
- **Filters:** Format, ball type, skill level, cost range, and role needed.
- Default sorting prioritizes relevance and proximity, not merely creation time.
- A map/list toggle is optional; list view is sufficient for the earliest beta.

## 12. Match Details

- Date, start/end time, venue, and map/navigation action
- Confirmed players, total capacity, and open slots
- Format, team size, overs, ball, and skill requirement
- Role-specific vacancies when configured
- Contribution amount and payment instruction
- Host profile, rating, hosted-game count, and organizer reliability
- Join Match or Request to Join, based on host setting

## 13. Join Modes and Player Flow

### Instant Join

Eligible users immediately occupy an available slot.

### Approval Required

The player submits a request. The organizer sees role, skill, matches played, rating, and reliability, then approves or declines.

### Commitment confirmation

Before joining or requesting, show match date/time, distance, contribution, and a clear attendance commitment. Later phases can add deposits or online payment.

## 14. Host Match Flow

1. Choose match type.
2. Select date, start time, and end time.
3. Choose/search venue or add a custom location.
4. Configure team size, overs, and ball type.
5. Enter total players required and already confirmed; the system calculates vacancies.
6. Optionally define role-specific vacancies.
7. Set skill requirement and player contribution, or mark the match free.
8. Choose Instant Join or Approval Required.
9. Preview and publish.
10. Share to WhatsApp, copy a deep link, or invite players.

## 15. WhatsApp and Deep-Link Acquisition

Every published match must generate a concise share card/link with match type, date/time, locality, available slots, contribution, skill, and a Join CTA.

A recipient without the app first sees a lightweight mobile-web match page. App installation/login is requested only when the person expresses join intent. Deep links return the user directly to the same match.

## 16. Availability

Users can mark themselves available by date, time window, travel radius, location, and preferred formats. This is a core MVP differentiator.

- Quick options: Today, Tomorrow, Saturday, Sunday, Custom
- Time windows plus custom times
- Travel radius: 3, 5, 10, 20 km, or custom
- Format: Any or selected cricket formats
- Availability automatically expires after its time window

## 17. Match Recommendation Logic

V1 uses deterministic ranking rather than over-engineered AI.

| Signal | Weight |
| --- | ---: |
| Distance score | 30% |
| Time/availability overlap | 25% |
| Format preference | 15% |
| Skill compatibility | 10% |
| Role requirement | 10% |
| Host reliability | 5% |
| Past interaction/preference signal | 5% |

Weights should be configurable server-side. The search radius can expand progressively when nearby supply is insufficient.

## 18. My Games and Match Room

### My Games tabs

- Upcoming
- Hosting
- Requests
- Completed

### Match Room

- **Overview:** Logistics, venue, rules, and contribution.
- **Players:** Confirmed roster, open slots, and roles.
- **Chat:** Basic text coordination for confirmed participants.
- **Updates:** Organizer announcements and system status changes.

Phone numbers are private by default. Users coordinate inside the match room unless contact sharing is explicitly enabled.

## 19. Match Lifecycle

Primary states: `DRAFT → OPEN → FULL → IN_PROGRESS → COMPLETED`.

Alternative terminal state: `CANCELLED`.

If a confirmed participant leaves a `FULL` match, the status returns to `OPEN` and discovery/notification logic can reactivate.

## 20. Urgent Replacement

When a late cancellation creates a vacancy, the organizer can mark the slot as urgent. The system prioritizes the vacancy to nearby available compatible players and sends time-sensitive notifications. This directly addresses one of the highest-pain organizer scenarios.

## 21. Reliability, Attendance, and Ratings

### Reliability

Reliability is primarily behavioral, using matches joined, attendance, timely cancellations, late cancellations, no-shows, and dispute outcomes. It must not be dominated by subjective skill opinions.

### Attendance

After a match, the organizer records **Attended**, **Cancelled Early**, **Cancelled Late**, or **No-show** for confirmed participants. Users need a dispute/report path.

### Two-way ratings

- Players rate organizers using an experience rating and tags such as Well Organized, Accurate Details, Friendly Group, Good Venue, and Poor Communication.
- Organizers rate behavioral qualities such as Reliable, Good Team Player, Friendly, Late, and No-show.
- Avoid talent-centric ratings in the MVP.

## 22. Notifications

- Relevant nearby match discovered
- Join request received
- Join request accepted/declined
- Match filling progress / almost full
- Match reminders
- Cancellation and reopened slot
- Urgent player-needed alert
- Organizer update

Users must be able to control notification categories and avoid excessive spam.

## 23. Cancellation and Safety

- A player leave flow includes a reason and warns when a late cancellation may affect reliability.
- Organizer cancellation requires a reason and affects organizer reliability where appropriate.
- Report reasons: fake match, harassment, unsafe environment, payment dispute, incorrect information, discrimination, spam, and other.
- Block-user capability.
- Admin moderation, warning, suspension, and ban controls.

## 24. Admin Panel

- **Dashboard:** Users, active players, matches created/completed, fill rate, cancellation/no-show rates, DAU/MAU, and city/locality activity.
- **User management:** Profiles, history, reports, warnings, suspensions, and bans.
- **Match management:** Inspect, flag, and remove/cancel fraudulent listings.
- **Report queue:** Moderation workflow.
- **Location analytics:** Player density, weekly active users, matches/week, fill rate, and time-to-fill.

## 25. Core Data Model

| Entity | Key fields |
| --- | --- |
| User | `user_id`, phone, name, profile_photo, age_range, gender_optional, home_play_area, latitude, longitude, status, created_at |
| PlayerProfile | `user_id`, roles, batting_style, bowling_style, skill_level, preferred_formats, preferred_ball_types, travel_radius, reliability_score, rating |
| Match | `match_id`, host_id, match_type, date, start_time, end_time, venue_id/custom_location, total_players, confirmed_players, players_needed, ball_type, overs, skill_level, cost_per_player, payment_instruction, join_type, status, created_at |
| MatchRoleRequirement | `match_id`, role, slots_required, slots_filled |
| MatchParticipant | `match_id`, user_id, status (`REQUESTED`, `APPROVED`, `DECLINED`, `CANCELLED`, `ATTENDED`, `NO_SHOW`), joined_at |
| Availability | `user_id`, date, start_time, end_time, radius, formats, location, expires_at |
| Rating | reviewer_id, reviewee_id, match_id, rating, tags, comment |
| Venue | `venue_id`, name, address, latitude, longitude, metadata |
| Notification | `user_id`, type, match_id, status, created_at |
| Report | reporter_id, reported_user_id, match_id, reason, description, status |
| ChatMessage | `message_id`, match_id, sender_id, body, created_at |
| Cancellation | match_id, user_id/host_id, reason, timing_classification, created_at |
| UserBlock | blocker_id, blocked_id, created_at |

## 26. Recommended Technical Architecture

- **Mobile:** Flutter for a single Android/iOS codebase.
- **Backend:** Node.js with NestJS (recommended) or Python/FastAPI.
- **Database:** PostgreSQL with PostGIS for geospatial queries.
- **Authentication:** OTP provider/Firebase Authentication, depending on India unit economics.
- **Push notifications:** Firebase Cloud Messaging.
- **Maps/geocoding:** Google Maps Platform or Mapbox.
- **Chat:** WebSocket-based backend or managed realtime service.
- **Hosting:** AWS or GCP.
- **Architecture:** Start with a modular monolith; avoid premature microservices.

## 27. High-Level API Surface

```text
POST   /auth/login
POST   /auth/verify-otp
GET    /users/profile
PUT    /users/profile
POST   /availability
GET    /availability
DELETE /availability
GET    /matches/nearby
GET    /matches/recommended
POST   /matches
GET    /matches/{id}
PUT    /matches/{id}
POST   /matches/{id}/join
POST   /matches/{id}/leave
POST   /matches/{id}/approve
POST   /matches/{id}/decline
POST   /matches/{id}/cancel
POST   /matches/{id}/attendance
GET    /my-games
POST   /ratings
POST   /reports
GET    /matches/{id}/messages
POST   /matches/{id}/messages
```

## 28. MVP Priority

### P0 — Launch

- OTP authentication and profile
- Location and cricket preferences
- Create match and all recreational cricket configurations
- Nearby discovery and filters
- Match details
- Join/request and organizer approval
- Availability and basic matching
- My Games and basic match room/chat
- Push notifications and reminders
- Cancellation, attendance, reliability, and ratings
- WhatsApp sharing and deep links
- Reporting/moderation and basic admin panel

### P1 — After validation

- Online payments/refunds
- Waitlist
- Recurring matches
- Private communities
- Advanced organizer tools

### P2 — Marketplace expansion

- Venue marketplace
- Turf availability/booking
- Auto-created matches from player demand
- Split payments

### P3 — Ecosystem

- Teams/tournaments
- Scoring integrations
- Player stats
- Corporate leagues
- Umpires/scorers/coaches
- Equipment and sponsorship partnerships

## 29. Monetization

1. **Phase 1:** Free creation, joining, and player discovery to maximize liquidity.
2. **Phase 2:** Small convenience fee per paid participant/transaction.
3. **Phase 3:** Venue booking commission.
4. **Phase 4:** Organizer Pro subscription for recurring games, advanced search, player CRM, payments, analytics, and private communities.
5. **Phase 5:** Venue SaaS for booking calendars, CRM, dynamic pricing, promotions, payments, and analytics.

## 30. Metrics

### North-star metric

**Match Slot Fill Rate** = filled public vacancies ÷ total public vacancies × 100.

### Supporting metrics

- Median and average time-to-fill
- Match completion rate
- Player 30-day repeat rate
- Organizer repeat-post rate
- No-show and late-cancellation rate
- Search-to-join conversion
- Join-request acceptance rate
- Geographic liquidity by micro-market
- WhatsApp share → landing → signup → join conversion

## 31. Launch Strategy

- Do not launch as an empty nationwide marketplace. Technically support India, but operationally seed one dense micro-market at a time.
- Recruit 20–30 recurring organizers before public launch.
- Have organizers create real matches and share platform links into existing WhatsApp groups.
- Seed several hundred players in a compact 5–10 km cluster.
- Measure fill rate, time-to-fill, no-show rate, repeat rate, and travel willingness.
- Expand only after repeat liquidity is demonstrated.

## 32. Core Product Flywheel

More players → faster vacancy filling → more organizers post → more matches become discoverable → better player experience → more players.

The defensibility is not the feature list. It is local marketplace liquidity, trust/reliability data, repeat organizer supply, and the resulting cricket participation graph.

## 33. Codex Build Plan

### Phase A — Foundation

- Create monorepo/repository and environment strategy.
- Flutter app shell with routing, design tokens, and state-management convention.
- NestJS modular backend and PostgreSQL/PostGIS connection.
- Database migrations and seed data.
- Authentication contract and local-development auth stub.
- CI checks: formatting, linting, tests, and build.

### Phase B — Core marketplace

- Profile/onboarding
- Create Match
- Nearby/discover queries using PostGIS
- Match details
- Join/request/approve/decline
- My Games

### Phase C — Liquidity and trust

- Availability
- Recommendation ranking
- Push-notification event model
- Cancellation/replacement flow
- Attendance and reliability
- Ratings/reports

### Phase D — Distribution and operations

- WhatsApp share/deep links and a mobile-web match page
- Basic match chat
- Admin/moderation panel
- Analytics instrumentation and launch dashboards

## 34. Initial Acceptance Criteria

- A new user can verify/login, complete a cricket profile, and set a playable location.
- An organizer can publish a valid match with one or more vacancies in under two minutes.
- A nearby player can discover that match through location/date filters.
- A player can join instantly or request approval according to organizer settings.
- An organizer can approve/decline requests and slot counts remain transactionally consistent.
- A full match automatically reopens when an approved participant cancels.
- Users can share a match externally and the deep link resolves to the correct match.
- Availability records influence recommendation ordering.
- Completed matches support attendance confirmation and reliability updates.
- Moderators can inspect reports and suspend abusive/fraudulent accounts.
- Core marketplace events are instrumented for fill-rate and time-to-fill analytics.

## 35. Product Definition

A hyperlocal cricket marketplace that connects teams with vacant player slots to nearby cricketers who are available and ready to play.

**MVP discipline:** Every major product decision should improve the probability that a real vacant slot is filled by a suitable player who actually shows up.
