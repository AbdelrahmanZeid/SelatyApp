import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_size.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key, required this.color, required this.text, this.onPressed});
  final Color color;
  final String text;

  VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: color,
        minimumSize: const Size(
          335,
          60,
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
          fontSize: AppSize.getFontSize(
            22,
          ),
        ),
      ),
    );
  }
}
