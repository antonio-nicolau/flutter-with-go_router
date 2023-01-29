import 'package:flutter/material.dart';

class FeedDetailsPage extends StatelessWidget {
  const FeedDetailsPage({super.key, required this.id});

  final String id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
      ),
      body: Center(
        child: Text(
          id,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
    );
  }
}
