import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_color.dart';
import 'package:selaty/core/utils/app_funcation.dart';
import 'package:selaty/core/utils/app_size.dart';

class EditProfileSection extends StatelessWidget {
  const EditProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              15,
            ),
            color: AppColor.lightGreen,
          ),
          width: AppSize.getWidth(
            300,
          ),
          height: AppSize.getHeight(
            110,
          ),
          child: Column(
            children: [
              addSpace(
                65,
              ),
              const Text(
                "abdelrahman ibrahem",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const Text(
                "zeid4643@gmail.com",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        const Positioned(
          top: -60,
          left: 115,
          child: CircleAvatar(
            radius: 50,
          ),
        ),
        Positioned(
          left: 178,
          top: 20,
          child: Container(
            width: AppSize.getWidth(
              35,
            ),
            height: AppSize.getHeight(
              35,
            ),
            decoration: BoxDecoration(
              color: AppColor.red,
              borderRadius: BorderRadius.circular(
                360,
              ),
            ),
            child: const Center(
              child: Icon(
                Icons.image,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
