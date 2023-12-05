
import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_funcation.dart';
import '../../data/models/card_model.dart';

class CustomBestValueItem extends StatelessWidget {
  const CustomBestValueItem({
    Key? key,
    required this.card,
  }) : super(key: key);
 final CardModel card;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
          15,
        ),
        child: Image.asset(
          card.image,
          fit:isPortrait(context)? BoxFit.fitWidth: BoxFit.fill,
        ),
      ),
    );
  }
}
