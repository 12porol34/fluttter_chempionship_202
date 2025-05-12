import 'package:go_router/go_router.dart';
import 'package:matule/layers/presentation/screens/home_screen.dart';
import 'package:matule/layers/presentation/screens/root_screen.dart';

class RouterConfigGo {
  static GoRouter get router => GoRouter(
    routes: [
      StatefulShellRoute.indexedStack(
        builder:
            (context, state, navigationShell) =>
                RootScreen(statefulNavigationShell: navigationShell),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/',
                builder: (context, state) => HomeScreen(),
                name: 'home',
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/qw',
                builder: (context, state) => HomeScreen(),
                name: 'home1',
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/qwer',
                builder: (context, state) => HomeScreen(),
                name: 'home2',
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/profile',
                builder: (context, state) => HomeScreen(),
                name: 'profile',
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
