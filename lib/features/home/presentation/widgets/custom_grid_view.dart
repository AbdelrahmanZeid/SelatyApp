import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_funcation.dart';
import '../../../../core/utils/app_size.dart';
import '../../data/models/best_sell_model.dart';
import 'custom_most_sell_item.dart';

class CustomGridViewWidget extends StatelessWidget {
  const CustomGridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:isPortrait(context)? AppSize.getHeight(
        460,
      ): AppSize.getHeight(
        478,
      ),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 4,
        ),
        child: DynamicHeightGridView(
          mainAxisSpacing: 18,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          builder: (BuildContext context, int index) {
            return CustomMostSellItem(
              bsetSellModel: bestSellList[index],
            );
          },
          itemCount: 4,
          crossAxisCount: 2,
        ),
      ),
    );
  }
}
