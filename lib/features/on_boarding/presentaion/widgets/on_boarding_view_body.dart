import 'package:flutter/material.dart';

import 'custom_page_view.dart';

class OnBoardingViewBody extends StatelessWidget {
  OnBoardingViewBody({super.key});
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomPageView(
        controller: controller,
      ),
    );
  }
}
