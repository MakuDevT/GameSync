import 'package:flutter/material.dart';
import 'package:gamesync/src/features/authentication/presentation/sign_in/sign_in_screen.dart';
import 'package:go_router/go_router.dart';

final goRouter = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: true,
  routes: [
    GoRoute(path: '/', builder: ((context, state) => CustomSignInScreen()))
  ],
);
