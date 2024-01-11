import 'package:flutter/material.dart';
import 'package:gamesync/features/authentication/presentation/sign_in/sign_in_screen.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final goRouter = GoRouter(
      routes: [
        GoRoute(path: '/', builder: ((context, state) =>  Container()))
      ],
    );
    return MaterialApp.router(
      routerConfig: goRouter,
    );
  }
}
