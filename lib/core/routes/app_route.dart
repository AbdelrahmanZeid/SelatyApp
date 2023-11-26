
import 'package:go_router/go_router.dart';
import 'package:selaty/features/on_boarding/presentaion/views/on_boarding_view.dart';
import 'package:selaty/features/splash/presentation/views/splash_view.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, GoRouterState state) {
        return const SplashView();
      },
    ),
    GoRoute(
      path: "/onboarding",
      builder: (context, state) {
        return const OnBoardingView();
      },
    ),
  ],
);
