import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_assets.dart';
import 'package:selaty/core/utils/app_strings.dart';

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
    image: Assets.assetsImagesOnBoardingOne,
    title: AppStrings.onBoardingOneTtile,
    subTitle: AppStrings.onBoardingOneSubTtile,
    color: Colors.red,
  ),
  OnBoardingModel(
    image: Assets.assetsImagesOnBoardingTwo,
    title: AppStrings.onBoardingTwoTtile,
    subTitle: AppStrings.onBoardingTwoSubTtile,
    color: Colors.green,
  ),
  OnBoardingModel(
    image: Assets.assetsImagesOnBoardingThree,
    title: AppStrings.onBoardingThreeTitle,
    subTitle: AppStrings.onBoardingThreeSubTtile,
    color: Colors.deepPurple,
  ),
];
