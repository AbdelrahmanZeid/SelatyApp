import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_funcation.dart';
import '../../../../core/utils/app_size.dart';
import '../../data/models/card_model.dart';
import 'custom_best_value_item.dart';

class BestValue extends StatelessWidget {
  const BestValue({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:isPortrait(context)? AppSize.getHeight(
        150,
      ):AppSize.getHeight(
        160,
      ),
      child: Swiper(
        autoplay: true,
        itemCount: 3,
        itemBuilder: (context, index) {
          return CustomBestValueItem(
            card: cardsList[index],
          );
        },
      ),
    );
  }
}
