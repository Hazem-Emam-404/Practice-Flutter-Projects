import 'package:bookly/features/home/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/data/model/book_model.dart';
import '../../features/home/view/book_details_screen.dart';
import '../../features/splash/view/splash_screen.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
    ),
    GoRoute(
      path: "/home_screen",
      builder: (BuildContext context, GoRouterState state) {
        return HomeScreen();
      },
    ),
    GoRoute(
      path: "/book_details",
      builder: (BuildContext context, GoRouterState state) {
        final book = state.extra as BookModel;
        return BookDetailsScreen(book: book);
      },
    ),
  ],
);
