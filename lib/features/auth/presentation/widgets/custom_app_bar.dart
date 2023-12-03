import 'package:flutter/material.dart';

import '../../../../core/utils/app_funcation.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () => goBack(
            context,
          ),
          child: Container(
            padding: const EdgeInsets.only(
              left: 8,
            ),
            width: 40,
            height: 40,
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
        Container(
            // padding: const EdgeInsets.only(
            //   left: 8,
            // ),
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(),
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
      ],
    );
  }
}
