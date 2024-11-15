// lib/config/router/app_router.dart
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:greword/config/environment.dart';
import 'package:greword/features/greword/presentation/pages/greword_page.dart';
import '../../features/home/presentation/pages/home_page.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

class AppRouter {
  static const String home = '/';
  static const String gre = "/gre";

  static final GoRouter router = GoRouter(
    debugLogDiagnostics: Environment.isDevelopment,
    navigatorKey: _rootNavigatorKey,
    initialLocation: home,
    routes: [
      // Shell Route for Bottom Navigation Bar (如果需要的話)
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return ScaffoldWithNavBar(child: child);
        },
        routes: [
          // Home Route
          GoRoute(
            path: home,
            name: 'home',
            builder: (context, state) => const HomePage(),
            routes: [
              // Nested Routes under home if needed
            ],
          ),
          // gre route
          GoRoute(
            path: gre,
            name: 'gre',
            builder: (context, state) => const GreWordPage(),
          ),
        ],
      ),
    ],
  );
}

// 底部導航欄 Scaffold
class ScaffoldWithNavBar extends StatelessWidget {
  const ScaffoldWithNavBar({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'GRE Words',
          ),
        ],
        currentIndex: _calculateSelectedIndex(context),
        onTap: (index) => _onItemTapped(index, context),
      ),
    );
  }

  static int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).matchedLocation;
    if (location.startsWith('/gre')) {
      return 1;
    }
    return 0;
  }

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        context.go('/');
        break;
      case 1:
        context.go('/gre');
        break;
    }
  }
}

// 錯誤頁面
class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Page not found!'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => context.go('/'),
              child: const Text('Go Home'),
            ),
          ],
        ),
      ),
    );
  }
}
