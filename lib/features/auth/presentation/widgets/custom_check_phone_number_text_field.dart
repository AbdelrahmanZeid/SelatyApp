import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_funcation.dart';
import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/app_size.dart';

class CustomCheckPhoneNumberTextField extends StatelessWidget {
  CustomCheckPhoneNumberTextField(
      {super.key,
      this.textInputType,
      this.suffixIcon,
      this.perfix,
      required this.lable,
      this.onChanged,
      required this.obscureText,
      this.onFieldSubmitted});
  final String lable;

  IconButton? suffixIcon;
  Widget? perfix;
  TextInputType? textInputType;

  final Function(String value)? onChanged;
  final Function(String value)? onFieldSubmitted;

  bool obscureText = false;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: textInputType,
      obscureText: obscureText,
      onChanged: onChanged,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        prefix: perfix,

        alignLabelWithHint: true,
        suffixIcon: suffixIcon,
        label: Align(
          alignment: Alignment.centerRight,
          child: Text(
            lable,
            style: TextStyle(
              color: AppColor.appTextColor,
              fontSize:isPortrait(context)? AppSize.getFontSize(
                14,
              ):AppSize.getFontSize(
                10,
              ),
            ),
          ),
        ),
        // border: InputBorder.none,
        border: InputBorder.none,
      ),
    );
  }
}
