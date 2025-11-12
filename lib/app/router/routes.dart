// lib/src/app/router/routes.dart

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:protthasha_app/feature/home/views/home_view.dart';
import 'app_router.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: AppRoutes.loginPath,
  routes: [
    // GoRoute(
    //   name: AppRoutes.login,
    //   path: AppRoutes.loginPath,
    //   builder: (context, state) => const LoginScreen(),
    // ),
    GoRoute(
      name: AppRoutes.home,
      path: AppRoutes.homePath,
      builder: (context, state) => const HomeView(),
    ),
  ],
);
