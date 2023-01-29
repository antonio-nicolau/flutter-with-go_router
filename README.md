# Flutter go_router with nested navigation

A simple Flutter project with sample code about how to work with go_router, nested navigation and typed routes.

## Getting Started

To get started, add go_router to your pubspec.yaml. In this article we'll be using ^6.0.1.

We'll be using in this project:
- go_router: ^6.0.1
- go_router_builder: ^1.0.16
- build_runner: ^2.3.3
- build_verify: ^3.1.0

For a complete guide about how to work with go_router, take a look at my [Medium Article](https://medium.com/@antonio.tioypedro1234/flutter-go-router-the-essential-guide-349ef39ec5b3)

```dart
import 'package:go_router/go_router.dart';

// GoRouter configuration
final _router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: 'home', // Optional, add name to your routes. Allows you navigate by name instead of path
      path: '/',
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      name: 'page2',
      path: '/page2',
      builder: (context, state) => Page2Screen(),
    ),
  ],
);
```

PREVIEW

<img src="https://user-images.githubusercontent.com/67912928/215340345-14fdc8ba-9a7a-4457-b4ba-59feb8c28b33.mov" width="300">


