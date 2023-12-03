import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_assets.dart';
import 'package:selaty/core/utils/app_funcation.dart';
import 'package:selaty/core/utils/app_size.dart';
import 'package:selaty/features/on_boarding/presentaion/widgets/custom_page_view.dart';

class OnBoardingViewBody extends StatelessWidget {
  OnBoardingViewBody({super.key});
  PageController controller = PageController();

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        getOrientation(context) == Orientation.portrait
            ? Positioned(
                bottom: 0,
                right: 0,
                child: Center(
                  child: Image.asset(
                    Assets.assetsImagesGreyFruitImage,
                    width: AppSize.getWidth(
                      170,
                    ),
                    height: AppSize.getHeight(
                      170,
                    ),
                  ),
                ),
              )
            : Positioned(
                bottom: -27,
                right: -70,
                child: Image.asset(
                  Assets.assetsImagesGreyFruitImage,
                  width: AppSize.getWidth(
                    120,
                  ),
                  height: AppSize.getHeight(
                    120,
                  ),
                ),
              ),
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
