

import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_funcation.dart';
import 'package:selaty/core/utils/app_size.dart';

class CustomPin extends StatelessWidget {
  const CustomPin({super.key, required this.color, this.number});
  final Color color;
  final String? number;
  @override
  Widget build(BuildContext context) {
    return Container(
      width:isPortrait(context)? AppSize.getWidth(
        65,
      ):AppSize.getWidth(
        40,
      ),
      height:isPortrait(context)? AppSize.getHeight(
        60,
      ): AppSize.getHeight(
       80,
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      child: Center(
        child: Text(
          number!,
          style: TextStyle(
            fontSize:isPortrait(context)? AppSize.getFontSize(
              32,
            ):AppSize.getFontSize(
             25,
            ),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
