import 'package:go_router/go_router.dart';
import 'package:veggers_app/splash_page.dart';

import '../../../main_navigation.dart';

final appRouter = GoRouter(
  initialLocation: '/splash-screen',
  routes: [
    GoRoute(
      path: '/splash-screen',
      name: 'splash_screen',
      builder: (context, state) => const SplashPage(),
      routes: [
        GoRoute(
          path: '/dashboard',
          name: 'dashboard',
          builder: (context, state) => const MainNavigation(),
        ),
      ],
    ),
    GoRoute(
      path: '/',
      name: 'main_nav',
      builder: (context, state) => const MainNavigation(),
    ),
  ],
);
