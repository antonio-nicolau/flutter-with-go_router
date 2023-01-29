import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:using_go_router/src/features/feed/widgets/scaffold_with_navbar.widget.dart';
import 'package:using_go_router/src/router/router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Create a GoRouter with all your app routes
    final router = GoRouter(
      initialLocation: '/feed',
      routes: [
        ShellRoute(
          builder: (context, state, child) {
            return ScaffoldWithNavBar(child);
          },
          routes: $appRoutes,
        ),
      ],
      redirect: (context, state) {
        const isAuthenticated = true; // Add your logic to check whether a user is authenticated or not
        if (!isAuthenticated) {
          return '/auth';
        } else {
          return null;
        }
      },
    );
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}
