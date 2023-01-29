import 'dart:math';

import 'package:flutter/material.dart';
import 'package:using_go_router/src/router/router.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feed'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Feed',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                final randomId = Random().nextInt(200).toString();
                FeedDetailsRoute(id: randomId).go(context);
              },
              child: const Text('Details'),
            ),
          ],
        ),
      ),
    );
  }
}
