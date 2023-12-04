
import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_color.dart';
import 'package:selaty/core/utils/app_size.dart';

class CustomWatchAllTextWidget extends StatelessWidget {
  const CustomWatchAllTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
                  children: [
                    Text(
                      "مشاهده الكل",
                      style: TextStyle(
                        color: AppColor.appTextColor,
                        fontSize: AppSize.getFontSize(
                          15,
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