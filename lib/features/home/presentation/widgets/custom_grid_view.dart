
import 'package:flutter/material.dart';
import '../../../../core/utils/app_size.dart';
import '../../data/models/best_sell_model.dart';
import 'custom_most_sell_item.dart';

class CustomGridViewWidget extends StatelessWidget {
  const CustomGridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.getHeight(
        350,
      ),
      width: double.infinity,
      child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.all(
            8,
          ),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
          ),
          itemCount: 4,
          itemBuilder: (context, index) {
            return CustomMostSellItem(
              bsetSellModel: bestSellList[index],
            );
          }),
    );
  }
}
