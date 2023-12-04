import 'package:flutter/material.dart';
import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/app_funcation.dart';
import '../../../../core/utils/app_size.dart';

class CustomCheckPhoneNumberAppBar extends StatelessWidget {
  CustomCheckPhoneNumberAppBar({this.text, super.key});
  String? text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        GestureDetector(
          onTap: () => goBack(
            context,
          ),
          child: Container(
            width: AppSize.getWidth(
              40,
            ),
            height: AppSize.getHeight(
              40,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
            child: const Center(
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
                size: 17,
              ),
            ),
          ),
        ),

        const Spacer(
          flex: 3,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            text!,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColor.appTextColor2,
              fontSize: isPortrait(context)
                  ? AppSize.getFontSize(
                      18,
                    )
                  : AppSize.getFontSize(
                      13,
                    ),
            ),
          ),
        ),
        // SizedBox(
        //   width: AppSize.getWidth(
        //  30,
        //   ),
        // ),
        Spacer(),
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
            // border: Border.all(),
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              10,
            ),
          ),
          child: const Icon(
            Icons.shopping_bag_outlined,
            color: Colors.black,
            size: 17,
          ),
        ),
      const  Spacer(),
      ],
    );
  }
}
