import '../../../../core/utils/app_assets.dart';

class CategoryModel {
  final String image;
  final String bgImage;
  final String title;
  CategoryModel({
    required this.image,
    required this.bgImage,
    required this.title,
  });
}

List<CategoryModel> catList = [
  CategoryModel(
    image: Assets.assetsImagesChicken,
    bgImage: Assets.assetsImagesFruitTwo,
    title: "دواجن",
  ),
  CategoryModel(
    image: Assets.assetsImagesChicken,
    bgImage: Assets.assetsImagesFruitTwo,
    title: "فواكه",
  ),
  CategoryModel(
    image: Assets.assetsImagesChicken,
    bgImage: Assets.assetsImagesFruitTwo,
    title: "خضروات",
  ),
  CategoryModel(
    image: Assets.assetsImagesChicken,
    bgImage: Assets.assetsImagesFruitTwo,
    title: "دواجن",
  ),
  CategoryModel(
    image: Assets.assetsImagesChicken,
    bgImage: Assets.assetsImagesFruitTwo,
    title: "دواجن",
  ),
  CategoryModel(
    image: Assets.assetsImagesChicken,
    bgImage: Assets.assetsImagesFruitTwo,
    title: "دواجن",
  ),
  CategoryModel(
    image: Assets.assetsImagesChicken,
    bgImage: Assets.assetsImagesFruitTwo,
    title: "دواجن",
  ),

];
