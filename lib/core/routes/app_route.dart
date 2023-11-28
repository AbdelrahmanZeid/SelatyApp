
import 'package:go_router/go_router.dart';
import 'package:selaty/features/auth/presentation/views/auth_view.dart';
import 'package:selaty/features/auth/presentation/views/check_phone_number_view.dart';
import 'package:selaty/features/auth/presentation/views/login_view.dart';
import 'package:selaty/features/auth/presentation/views/register_view.dart';
import 'package:selaty/features/auth/presentation/views/verfiy_phone_number.dart';
import 'package:selaty/features/on_boarding/presentaion/views/on_boarding_view.dart';
import 'package:selaty/features/splash/presentation/views/splash_view.dart';

final GoRouter router = GoRouter(
  routes: [
    // GoRoute(
    //   path: '/checkphonenumber',
    //   builder: (context, GoRouterState state) {
    //     return const SplashView();
    //   },
    // ),
    GoRoute(
      path: "/onboarding",
      builder: (context, state) {
        return const OnBoardingView();
      },
    ),
    GoRoute(
      path: "/auth",
      builder: (context, state) {
        return const AuthView();
      },
    ),
    GoRoute(
      path: "/login",
      builder: (context, state) {
        return const LoginView();
      },
    ),
    GoRoute(
      path: "/register",
      builder: (context, state) {
        return const RegisterView();
      },
    ),
    GoRoute(
      path: "/",
      builder: (context, state) {
        return const CheckPhoneNumberView();
      },
    ),
    GoRoute(
      path: "/verifyphonenumber",
      builder: (context, state) {
        return const VerifyPhoneNumberView();
      },
    ),
  ],
);
