
import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_assets.dart';
import 'package:selaty/core/utils/app_funcation.dart';
import 'package:selaty/core/utils/app_size.dart';
import 'package:selaty/core/utils/app_strings.dart';

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
              30,
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
            110,
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            text!,
            // textAlign: TextAlign.right,
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
            15,
          ),
        ),
        Container(
          padding: const EdgeInsets.only(
            left: 0,
          ),
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            // border: Border.all(),
            borderRadius: BorderRadius.circular(
              10,
            ),
          ),
          child: Image.asset(
            Assets.assetsImagesPhoto20231128141726,
          ),
        ),
      ],
    );
  }
}