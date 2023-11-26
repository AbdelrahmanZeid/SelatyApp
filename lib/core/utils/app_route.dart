import 'package:go_router/go_router.dart';
import 'package:selaty/features/splash/presentation/views/splash_view.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, GoRouterState state) {
        return const SplashView();
      },
    ),
  ],
);
