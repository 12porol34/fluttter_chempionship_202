import 'package:go_router/go_router.dart';
import 'package:matule/home_screen.dart';

class RouterConfigGo {
  GoRouter get router => GoRouter(
    routes: [GoRoute(path: '/', builder: (context, state) => HomeScreen())],
  );
}
