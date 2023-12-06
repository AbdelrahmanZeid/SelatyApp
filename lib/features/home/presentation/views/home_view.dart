import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_color.dart';

import 'package:selaty/features/home/presentation/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.darkGrey,
        body: HomeViewBody(),
      ),
    );
  }
}
