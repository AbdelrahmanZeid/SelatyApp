
import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_size.dart';
import 'package:selaty/features/home/data/models/shopping_model.dart';
import 'package:selaty/features/home/presentation/views/home_view.dart';
import 'package:selaty/features/home/presentation/widgets/custom_shopping_widget.dart';

class CustomShoppingGridView extends StatelessWidget {
  const CustomShoppingGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.getHeight(
        300,
      ),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 4,
        ),
        child: DynamicHeightGridView(
          mainAxisSpacing: 12,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          builder: (BuildContext context, int index) {
            return CustomShoppingWidget(
              shoppingModel: shoppingList[index],
            );
          },
          itemCount: 6,
          crossAxisCount: 3,
        ),
      ),
    );
  }
}