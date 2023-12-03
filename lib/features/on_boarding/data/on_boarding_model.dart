import 'package:flutter/material.dart';
import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_color.dart';
import '../../../core/utils/app_strings.dart';

class OnBoardingModel {
  final String image;
  final String title;
  final String subTitle;
  final Color color;
  OnBoardingModel({
    required this.image,
    required this.title,
    required this.subTitle,
    required this.color,
  });
}

final List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
    image: Assets.assetsImagesOnBoarding1,
    title: AppStrings.onBoardingOneTtile,
    subTitle: AppStrings.onBoardingOneSubTtile,
    color: AppColor.onBoardingOneColor,
  ),
  OnBoardingModel(
    image: Assets.assetsImagesOnBoarding2,
    title: AppStrings.onBoardingTwoTtile,
    subTitle: AppStrings.onBoardingTwoSubTtile,
    color: AppColor.btnColor1,
  ),
  OnBoardingModel(
    image: Assets.assetsImagesOnBoarding3,
    title: AppStrings.onBoardingThreeTitle,
    subTitle: AppStrings.onBoardingThreeSubTtile,
    color: AppColor.onBoardingThreeColor,
  ),
];
