
import 'dart:ui';

import 'package:selaty/core/utils/app_color.dart';

class ShoppingModel {
  final Color color;
  final String upperTitle;
  final String middleTitle;
  final String lowerTitle;
  ShoppingModel({
    required this.middleTitle,
    required this.color,
    required this.upperTitle,
    required this.lowerTitle,
  });
}

List<ShoppingModel> shoppingList = [
  ShoppingModel(
    color: AppColor.purple,
    upperTitle: 'صفه',
    lowerTitle: 'خصم',
    middleTitle: "30%",
  ),
  ShoppingModel(
    color: AppColor.blue,
    upperTitle: 'صفه',
    lowerTitle: 'خصم',
    middleTitle: "40%",
  ),
  ShoppingModel(
    color: AppColor.red,
    upperTitle: 'صفه',
    lowerTitle: 'خصم',
    middleTitle: "50%",
  ),
  ShoppingModel(
    color: AppColor.lightBlue,
    upperTitle: 'صفه',
    lowerTitle: 'خصم',
    middleTitle: "70%",
  ),
  ShoppingModel(
    color: AppColor.darkGreen,
    upperTitle: 'صفه',
    lowerTitle: 'خصم',
    middleTitle: "20%",
  ),
  ShoppingModel(
    color: AppColor.yellow,
    upperTitle: 'صفه',
    lowerTitle: 'خصم',
    middleTitle: "30%",
  ),
];

