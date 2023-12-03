import 'dart:async';

import 'package:flutter/material.dart';
import '../../../../core/utils/app_funcation.dart';

import '../widgets/splash_view_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  late Timer _timer;

  void moveForwad() {
    _timer = Timer(
        const Duration(
    seconds: 4,
        ),
        _goNext);
  }

  void _goNext() {
    navigation(
      context,
      "/onboarding",
    );
  }

  @override
  void initState() {
    moveForwad();
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  getOrientation(context)==Orientation.portrait? Scaffold(
      appBar: AppBar(),
      body: const SafeArea(
        child: SplashViewBody(),
      ),
    ):const Scaffold(
    
      body: SplashViewBody(),
    );
  }
}
