import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_color.dart';
import 'package:selaty/core/utils/app_funcation.dart';
import 'package:selaty/core/utils/app_size.dart';

class CustomWatchAllTextWidget extends StatelessWidget {
  const CustomWatchAllTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "مشاهده الكل",
          style: TextStyle(
            color: AppColor.appTextColor,
            fontWeight: FontWeight.w600,
            fontSize: isPortrait(context)
                ? AppSize.getFontSize(
                    15,
                  )
                : AppSize.getFontSize(
                    10,
                  ),
          ),
        ),
        const Icon(
          Icons.arrow_right_sharp,
        ),
      ],
    );
  }
}
