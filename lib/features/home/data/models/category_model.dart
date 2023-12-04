import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_color.dart';

import '../../../../core/utils/app_assets.dart';

class CategoryModel {
  final String image;
  final String bgImage;
  final String title;
  final Color color;
  CategoryModel({
    required this.image,
    required this.bgImage,
    required this.title,
    required this.color,
  });
}

List<CategoryModel> catList = [
  CategoryModel(
    image: Assets.assetsImagesChicken,
    bgImage: Assets.assetsImagesFruitTwo,
    title: "دواجن", color: AppColor.green,
  ),
  CategoryModel(
    image: Assets.assetsImagesChicken,
    bgImage: Assets.assetsImagesFruitTwo,
    title: "فواكه", color: AppColor.grey,
  ),
  CategoryModel(
    image: Assets.assetsImagesChicken,
    bgImage: Assets.assetsImagesFruitTwo,
    title: "خضروات", color: AppColor.yellow,
  ),
  CategoryModel(
    image: Assets.assetsImagesChicken,
    bgImage: Assets.assetsImagesFruitTwo,
    title: "دواجن", color: AppColor.onBoardingOneColor,
  ),
  CategoryModel(
    image: Assets.assetsImagesChicken,
    bgImage: Assets.assetsImagesFruitTwo,
    title: "فواكه", color: AppColor.green,
  ),
  CategoryModel(
    image: Assets.assetsImagesChicken,
    bgImage: Assets.assetsImagesFruitTwo,
    title: "دواجن", color: AppColor.grey,
  ),
  CategoryModel(
    image: Assets.assetsImagesChicken,
    bgImage: Assets.assetsImagesFruitTwo,
    title: "دواجن", color: AppColor.yellow,
  ),

];
