import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:using_go_router/src/features/discover/discover.page.dart';
import 'package:using_go_router/src/features/feed/feed.page.dart';
import 'package:using_go_router/src/features/feed_detail/feed_details.page.dart';

part 'router.g.dart';

@TypedGoRoute<FeedRoute>(
  path: '/feed',
  routes: [
    TypedGoRoute<FeedDetailsRoute>(path: 'feed-details/:id'),
  ],
)
@immutable
class FeedRoute extends GoRouteData {
  const FeedRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const FeedPage();
  }
}

@immutable
class FeedDetailsRoute extends GoRouteData {
  const FeedDetailsRoute({required this.id});

  final String id;
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return FeedDetailsPage(id: id);
  }
}

@TypedGoRoute<DiscoverRoute>(path: '/discover')
@immutable
class DiscoverRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const DiscoverPage();
  }
}
