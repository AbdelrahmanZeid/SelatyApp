import 'package:flutter/material.dart';

import 'package:selaty/features/splash/presentation/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SafeArea(
        child: SplashViewBody(),
      ),
    );
  }
}
