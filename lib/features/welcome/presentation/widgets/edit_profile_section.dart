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
          height:isPortrait(context)? AppSize.getHeight(
            110,
          ):AppSize.getHeight(
            90,
          ),
          child: Column(
            children: [
            isPortrait(context)?  addSpace(
                65,
              ):addSpace(
                43,
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
        Positioned(
          top:isPortrait(context)? -60:-65,
          left:isPortrait(context)? 115:280,
          child: CircleAvatar(
            radius:isPortrait(context)? 50:45,
          ),
        ),
        Positioned(
          left:isPortrait(context)? 178:325,
          top:isPortrait(context)? 20:8,
          child: Container(
            width:isPortrait(context)? AppSize.getWidth(
              35,
            ):AppSize.getWidth(
              18,
            ),
            height:isPortrait(context)? AppSize.getHeight(
              35,
            ): AppSize.getHeight(
              40,
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
