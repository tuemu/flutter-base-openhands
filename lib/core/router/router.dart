import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:imin/features/counter/views/counter_page.dart';

import 'routes.dart';

final goRouter = GoRouter(
  initialLocation: AppRoutes.counter,
  routes: [
    GoRoute(
      path: AppRoutes.counter,
      name: AppRouteNames.counter,
      builder: (context, state) => const CounterPage(),
    ),
    // 他のルートをここに追加
  ],
  // エラーハンドリング
  errorBuilder:
      (context, state) =>
          Scaffold(body: Center(child: Text('エラー: ${state.error}'))),
);
