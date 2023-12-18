import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_assets.dart';
import 'package:selaty/core/utils/app_color.dart';
import 'package:selaty/core/utils/app_funcation.dart';
import 'package:selaty/core/utils/app_size.dart';

class CustomActionWidget extends StatelessWidget {
  const CustomActionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Abdelrahman Ibrahem",
            ),
            Text(
              "Sadat city",
            ),
          ],
        ),
        SizedBox(
          width: AppSize.getWidth(
            10,
          ),
        ),
        SizedBox(
          width:isPortrait(context)? AppSize.getWidth(
            45,
          ): AppSize.getWidth(
           25,
          ),
          height:isPortrait(context)? AppSize.getHeight(
            45,
          ):AppSize.getHeight(
            50,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(
              50,
            ),
            child: Image.asset(
              Assets.assetsImagesProfile,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
