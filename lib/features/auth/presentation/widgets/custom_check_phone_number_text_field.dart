
import 'package:flutter/material.dart';

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
      // style: TextStyle(
      //   color: Colors.red,
      // ),

      keyboardType: textInputType,
      obscureText: obscureText,
      onChanged: onChanged,
      decoration: InputDecoration(
        prefix: perfix,
        //   prefixText: "+20",
      //  prefixIcon: perfix,
        alignLabelWithHint: true,
        suffixIcon: suffixIcon,
        label: Text(
          lable,
        ),
        // border: InputBorder.none,
        border: OutlineInputBorder(),
      ),
    );
  }
}
