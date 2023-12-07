
import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_size.dart';
import 'package:selaty/features/home/data/models/take_chance_model.dart';
import 'package:selaty/features/home/presentation/widgets/take_chance_item.dart';

class TakeChanceListView extends StatelessWidget {
  const TakeChanceListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.getHeight(
        180,
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
            child: TakeChanceItem(
              takeChance: takeChanceList[index],
            ),
          );
        },
        itemCount: takeChanceList.length,
      ),
    );
  }
}
