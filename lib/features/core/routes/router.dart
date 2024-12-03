import 'package:go_router/go_router.dart';

import '../../../main_navigation.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: 'dashboard',
      builder: (context, state) => const MainNavigation(),
    ),
  ],
);
