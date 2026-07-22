import 'package:cricket_matchmaking_mobile/features/placeholder_page.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(path: '/splash', builder: (context, state) => const PlaceholderPage(title: 'Splash')),
    GoRoute(path: '/login', builder: (context, state) => const PlaceholderPage(title: 'Login')),
    GoRoute(path: '/onboarding', builder: (context, state) => const PlaceholderPage(title: 'Onboarding')),
    GoRoute(path: '/home', builder: (context, state) => const PlaceholderPage(title: 'Home')),
    GoRoute(path: '/discover', builder: (context, state) => const PlaceholderPage(title: 'Discover')),
    GoRoute(path: '/create-match', builder: (context, state) => const PlaceholderPage(title: 'Create Match')),
    GoRoute(path: '/my-games', builder: (context, state) => const PlaceholderPage(title: 'My Games')),
    GoRoute(path: '/profile', builder: (context, state) => const PlaceholderPage(title: 'Profile')),
  ],
);
