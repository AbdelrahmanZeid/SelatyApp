
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_size.dart';
import 'package:selaty/features/home/data/models/card_model.dart';
import 'package:selaty/features/home/presentation/widgets/custom_best_value_item.dart';

class BestValue extends StatelessWidget {
  const BestValue({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.getHeight(
        150,
      ),
      child: Swiper(
        autoplay: true,
        itemCount: 3,
        itemBuilder: (context, index) {
          return CustomBestValueItem(card: cardsList[index],);
        },
      ),
    );
  }
}