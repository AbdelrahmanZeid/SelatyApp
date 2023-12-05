
import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_funcation.dart';
import 'package:selaty/core/utils/app_size.dart';
import 'package:selaty/features/home/data/models/shopping_model.dart';

class CustomShoppingWidget extends StatelessWidget {
  const CustomShoppingWidget({super.key, required this.shoppingModel});
  final ShoppingModel shoppingModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height:isPortrait(context)? AppSize.getHeight(
        100,
      ):AppSize.getHeight(
       200,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          12,
        ),
        color: shoppingModel.color,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
      ),
    );
  }
}
