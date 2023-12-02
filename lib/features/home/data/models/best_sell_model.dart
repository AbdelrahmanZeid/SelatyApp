
import 'package:selaty/core/utils/app_assets.dart';

class BestSellModel {
  final String image;
  final String type;
  final String price;
  BestSellModel({
    required this.image,
    required this.type,
    required this.price,
  });
}

List<BestSellModel> bestSellList = [
  BestSellModel(
    image: Assets.assetsImagesBestSellOne,
    type: "فواكه",
    price: "50",
  ),
  BestSellModel(
    image: Assets.assetsImagesBestSellTwo,
    type: "خضروات",
    price: "150",
  ),
  BestSellModel(
    image: Assets.assetsImagesBestSellOne,
    type: "فواكه",
    price: "200",
  ),
  BestSellModel(
    image: Assets.assetsImagesBestSellTwo,
    type: "خضروات",
    price: "100",
  ),
];
