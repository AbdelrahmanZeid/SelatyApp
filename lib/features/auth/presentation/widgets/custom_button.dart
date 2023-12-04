import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_funcation.dart';

import '../../../../core/utils/app_size.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    required this.color,
    required this.text,
    this.onPressed,
    this.txtColor = Colors.white,
  });
  final Color color;
  Color txtColor;
  final String text;

  VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: color,
        // backgroundColor: color,
        minimumSize: isPortrait(context)? Size(
          AppSize.getWidth(
            360,
          ),
          AppSize.getHeight(
            60,
          ),
        ):Size(
          AppSize.getWidth(
           360,
          ),
          AppSize.getHeight(
            45,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: txtColor,
          fontSize:isPortrait(context)? AppSize.getFontSize(
            22,
          ):AppSize.getFontSize(
            16,
          ),
        ),
      ),
    );
  }
}
