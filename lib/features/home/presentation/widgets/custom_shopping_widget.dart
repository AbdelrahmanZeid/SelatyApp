
import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_size.dart';
import 'package:selaty/features/home/data/models/shopping_model.dart';

class CustomShoppingWidget extends StatelessWidget {
  const CustomShoppingWidget({super.key, required this.shoppingModel});
  final ShoppingModel shoppingModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.getHeight(
        100,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          12,
        ),
        color: shoppingModel.color,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            shoppingModel.upperTitle,
            style: TextStyle(
              color: Colors.white,
              fontSize: AppSize.getFontSize(
                15,
              ),
            ),
          ),
          Text(
            shoppingModel.middleTitle,
            style: TextStyle(
              color: Colors.white,
              fontSize: AppSize.getFontSize(
                25,
              ),
            ),
          ),
          Text(
            shoppingModel.lowerTitle,
            style: TextStyle(
              color: Colors.white,
              fontSize: AppSize.getFontSize(
                15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
