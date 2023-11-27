
import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_funcation.dart';
import 'package:selaty/features/on_boarding/presentaion/widgets/custom_page_view.dart';

class OnBoardingViewBody extends StatelessWidget {
  OnBoardingViewBody({super.key});
  PageController controller = PageController();

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        getGreyFruitImage(),
        Expanded(
          child: CustomPageView(
            currentIndex: currentIndex,
            controller: controller,
          ),
        ),
      ],
    );
  }
}
