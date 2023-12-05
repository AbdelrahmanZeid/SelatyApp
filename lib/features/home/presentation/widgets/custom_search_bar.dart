import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_funcation.dart';
import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/app_size.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: AppSize.getWidth(
            300,
          ),
          height: AppSize.getHeight(
            45,
          ),
          child: const TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              label: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "البحث عن المنتجات",
                ),
              ),
              prefixIcon: Icon(
                Icons.search,
              ),
              suffixIcon: Icon(
                Icons.close_rounded,
                size: 16,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
        Container(
          width:isPortrait(context)? AppSize.getWidth(
            42,
          ):AppSize.getWidth(
            22,
          ),
          height: AppSize.getHeight(
            42,
          ),
          decoration: BoxDecoration(
            color: AppColor.onBoardingOneColor,
            borderRadius: BorderRadius.circular(
              16,
            ),
          ),
          child: const Icon(
            Icons.filter_list_outlined,
            color: Colors.white,
            size: 25,
          ),
        ),
      ],
    );
  }
}
