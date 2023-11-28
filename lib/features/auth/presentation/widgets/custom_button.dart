import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_size.dart';

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
        minimumSize: Size(
          AppSize.getWidth(
            360,
          ),
          AppSize.getHeight(
            60,
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
          fontSize: AppSize.getFontSize(
            22,
          ),
        ),
      ),
    );
  }
}
