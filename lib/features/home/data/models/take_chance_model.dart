
import 'package:selaty/core/utils/app_assets.dart';
import 'package:selaty/core/utils/app_strings.dart';

class TakeChance {
  final String title;
  final String subTitle;
  final String image;
  TakeChance({
    required this.title,
    required this.subTitle,
    required this.image,
  });
}

List<TakeChance> takeChanceList = [
  TakeChance(
    image: Assets.assetsImagesMoz,
    title: AppStrings.takeChance,
    subTitle: AppStrings.discount,
  ),
  TakeChance(
    image: Assets.assetsImagesFlfl,
    title: AppStrings.takeChance,
    subTitle: AppStrings.discount,
  ),
  TakeChance(
    image: Assets.assetsImagesApple,
    title: AppStrings.takeChance,
    subTitle: AppStrings.discount,
  ),
];
