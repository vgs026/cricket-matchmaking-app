import 'package:cricket_matchmaking_mobile/core/routing/app_router.dart';
import 'package:cricket_matchmaking_mobile/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CricketMatchmakingApp extends StatelessWidget {
  const CricketMatchmakingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Cricket Matchmaking',
      theme: AppTheme.light,
      routerConfig: appRouter,
    );
  }
}
