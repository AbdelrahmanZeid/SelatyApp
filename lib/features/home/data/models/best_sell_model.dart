
import '../../../../core/utils/app_assets.dart';

class BestSellModel {
  final String image;
  final String type;
  final String price;
  final String weight;
  BestSellModel({
    required this.image,
    required this.type,
    required this.price,
    required this.weight,
  });
}

List<BestSellModel> bestSellList = [
  BestSellModel(
    image: Assets.assetsImagesBestSellOne,
    type: "فواكه",
    price: "50", weight: '5',
  ),
  BestSellModel(
    image: Assets.assetsImagesBestSellTwo,
    type: "خضروات",
    price: "150", weight: '10',
  ),
  BestSellModel(
    image: Assets.assetsImagesBestSellOne,
    type: "فواكه",
    price: "200", weight: '2',
  ),
  BestSellModel(
    image: Assets.assetsImagesBestSellTwo,
    type: "خضروات",
    price: "100", weight: '7',
  ),
];
