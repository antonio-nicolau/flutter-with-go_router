import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:using_go_router/src/router/router.dart';

class ScaffoldWithNavBar extends StatelessWidget {
  const ScaffoldWithNavBar(this.child, {super.key});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _calculateSelectedIndex(context),
        onTap: (value) {
          switch (value) {
            case 0:
              const FeedRoute().go(context);
              break;
            case 1:
              DiscoverRoute().go(context);
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Feed',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: 'Discover',
          ),
        ],
      ),
    );
  }

  int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).location;

    if (location.startsWith('/feed')) {
      return 0;
    }
    if (location.startsWith('/discover')) {
      return 1;
    }
    return 0;
  }
}
