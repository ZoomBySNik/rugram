import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rugram/features/home/home_page.dart';
import 'package:rugram/features/navigation/main_screen.dart';

import 'app_routes.dart';

class AppRouterConfiguration {
  static GoRouter createRouter(BuildContext appContext) {
    return GoRouter(
      initialLocation: AppRoutes.home.path,
      routes: [
        ShellRoute(
          builder: (context, state, pageWidget) =>
              MainScreen(child: pageWidget),
          routes: [
            GoRoute(
              name: AppRoutes.home.name,
              path: AppRoutes.home.path,
              builder: (context, state) => const MyHomePage(),
            ),
            GoRoute(
              name: AppRoutes.search.name,
              path: AppRoutes.search.path,
              builder: (context, state) => const Center(child: Text('search')),
            ),
            GoRoute(
              name: AppRoutes.video.name,
              path: AppRoutes.video.path,
              builder: (context, state) => const Center(child: Text('video')),
            ),
            GoRoute(
              name: AppRoutes.cart.name,
              path: AppRoutes.cart.path,
              builder: (context, state) => const Center(child: Text('cart')),
            ),
            GoRoute(
              name: AppRoutes.profile.name,
              path: AppRoutes.profile.path,
              builder: (context, state) => const Center(child: Text('profile')),
            ),
          ],
        ),
      ],
    );
  }
}
