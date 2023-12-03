
import '../../../../core/utils/app_assets.dart';

class CardModel {
  final String image;
  CardModel({
    required this.image,
  });
}

List<CardModel> cardsList = [
  CardModel(
    image: Assets.assetsImagesCard1,
  ),
  CardModel(
    image: Assets.assetsImagesCard2,
  ),
  CardModel(
    image: Assets.assetsImagesFruitOne,
  ),
  CardModel(
    image: Assets.assetsImagesFruitTwo,
  ),
];
