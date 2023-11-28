import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
      this.textInputType,
      this.suffixIcon,
      this.perfixIcon,
      required this.lable,
      this.onChanged,
      required this.obscureText,
      this.onFieldSubmitted});
  final String lable;

  IconButton? suffixIcon;
  IconButton? perfixIcon;
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
      textAlign: TextAlign.right,
      
      decoration: InputDecoration(
        prefixIcon:perfixIcon ,
        alignLabelWithHint: true,
      //  suffixIcon: suffixIcon,
        label: Align(
          alignment: Alignment.centerRight,
          child: Text(
            lable,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            5,
          ),
        ),
      ),
    );
  }
}
