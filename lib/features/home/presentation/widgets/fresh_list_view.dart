import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_funcation.dart';
import 'package:selaty/core/utils/app_size.dart';
import 'package:selaty/features/home/data/models/best_sell_model.dart';
import 'package:selaty/features/home/presentation/widgets/custom_most_sell_item.dart';

class FreshListView extends StatelessWidget {
  const FreshListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:isPortrait(context)? AppSize.getHeight(
      220,
      ):AppSize.getHeight(
      250,
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 5
            ),
            child: CustomMostSellItem(
              bestSellModel: bestSellList[index],
            ),
          );
        },
        itemCount: bestSellList.length,
      ),
    );
  }
}