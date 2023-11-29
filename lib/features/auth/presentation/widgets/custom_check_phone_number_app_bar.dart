
import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_funcation.dart';
import 'package:selaty/core/utils/app_size.dart';

class CustomCheckPhoneNumberAppBar extends StatelessWidget {
 CustomCheckPhoneNumberAppBar({this.text,super.key});
  String? text;
  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () => goBack(
            context,
          ),
          child: Container(
            padding: const EdgeInsets.only(
              left: 8,
            ),
            width: AppSize.getWidth(
              40,
            ),
            height: AppSize.getHeight(
              40,
            ),
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 17,
            ),
          ),
        ),
        SizedBox(
          width: AppSize.getWidth(
          80,
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            text!,
            
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade700,
              fontSize: AppSize.getFontSize(
                18,
              ),
            ),
          ),
        ),
        SizedBox(
          width: AppSize.getWidth(
            20,
          ),
        ),
       Container(
            // padding: const EdgeInsets.only(
            //   left: 8,
            // ),
            width: AppSize.getWidth(
              40,
            ),
            height: AppSize.getHeight(
              40,
            ),
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
            child: const Icon(
              Icons.ac_unit,
              color: Colors.black,
              size: 17,
            ),
          ),
      ],
    );
  }
}