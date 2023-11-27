import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_assets.dart';
import 'package:selaty/core/utils/app_funcation.dart';
import 'package:selaty/core/utils/app_size.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnBoardingViewBody(),
    );
  }
}

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        getGreyFruitImage(),
        const Expanded(
          child: CustomPageView(),
        ),
      ],
    );
  }
}

class CustomPageView extends StatefulWidget {
  const CustomPageView({super.key});

  @override
  State<CustomPageView> createState() => _CustomPageViewState();
}

class _CustomPageViewState extends State<CustomPageView> {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemBuilder: (context, index) {
        return Column(
          children: [
            SizedBox(
              height: AppSize.getHeight(
                30,
              ),
            ),
            Center(
              child: Image.asset(
                Assets.assetsImagesOnBoardingOne,
                // width: AppSize.getWidth(
                //   250,
                // ),
                // height: AppSize.getHeight(
                //   300,
                // ),
              ),
            ),
          ],
        );
      },
      itemCount: 3,
    );
  }
}
