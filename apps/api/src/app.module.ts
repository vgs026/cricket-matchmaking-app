import { Module } from '@nestjs/common';
import { ConfigModule } from '@nestjs/config';

import { AuthModule } from './auth/auth.module';
import { AvailabilityModule } from './availability/availability.module';
import { HealthModule } from './health/health.module';
import { MatchesModule } from './matches/matches.module';
import { NotificationsModule } from './notifications/notifications.module';
import { ParticipantsModule } from './participants/participants.module';
import { RatingsModule } from './ratings/ratings.module';
import { ReportsModule } from './reports/reports.module';
import { UsersModule } from './users/users.module';
import { VenuesModule } from './venues/venues.module';

@Module({
  imports: [
    ConfigModule.forRoot({ isGlobal: true }),
    HealthModule,
    AuthModule,
    UsersModule,
    MatchesModule,
    ParticipantsModule,
    AvailabilityModule,
    VenuesModule,
    RatingsModule,
    ReportsModule,
    NotificationsModule,
  ],
})
export class AppModule {}
