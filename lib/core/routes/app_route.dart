import 'package:go_router/go_router.dart';
import 'package:selaty/features/welcome/presentation/views/welcome_view.dart';

import '../../features/auth/presentation/views/auth_view.dart';
import '../../features/auth/presentation/views/change_pass_success_view.dart';
import '../../features/auth/presentation/views/change_password_view.dart';
import '../../features/auth/presentation/views/check_phone_number_view.dart';
import '../../features/auth/presentation/views/login_view.dart';
import '../../features/auth/presentation/views/register_view.dart';
import '../../features/auth/presentation/views/verfiy_phone_number.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/on_boarding/presentaion/views/on_boarding_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

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

    // auth route
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
      path: "/checkphonenumber",
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
    GoRoute(
      path: "/changepassword",
      builder: (context, state) {
        return const ChangePasswordView();
      },
    ),
    GoRoute(
      path: "/changepasssuccess",
      builder: (context, state) {
        return const ChangePassSuccessView();
      },
    ),

    //home route
    GoRoute(
      path: "/home",
      builder: (context, state) {
        return const HomeView();
      },
    ),
    GoRoute(
      path: "/category",
      builder: (context, state) {
        return const WelcomeView();
      },
    ),
  ],
);
