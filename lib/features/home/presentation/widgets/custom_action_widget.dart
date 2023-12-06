import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_color.dart';
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
        const CircleAvatar(
          radius: 28,
          backgroundColor: AppColor.lightBlue,
        ),
      ],
    );
  }
}
