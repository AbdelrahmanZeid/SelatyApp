import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_assets.dart';
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
          width: isPortrait(context)
              ? AppSize.getWidth(
                  300,
                )
              : AppSize.getWidth(
                  200,
                ),
          height: isPortrait(context)
              ? AppSize.getHeight(
                  110,
                )
              : AppSize.getHeight(
                  70,
                ),
          child: Column(
            children: [
              isPortrait(context)
                  ? addSpace(
                      65,
                    )
                  : addSpace(
                      30,
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
          top: isPortrait(context) ? -45 : -65,
          left: isPortrait(context) ? 115 : 180,
          child: SizedBox(
            width:isPortrait(context)? AppSize.getWidth(
             98,
            ):AppSize.getWidth(
             40,
            ),
            height: AppSize.getHeight(
            91,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                60,
              ),
              child: Image.asset(
                Assets.assetsImagesProfile,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          left: isPortrait(context) ? 180 : 228,
          top: isPortrait(context) ? 15: -12,
          child: Container(
            width: isPortrait(context)
                ? AppSize.getWidth(
                    35,
                  )
                : AppSize.getWidth(
                    15,
                  ),
            height: isPortrait(context)
                ? AppSize.getHeight(
                    30,
                  )
                : AppSize.getHeight(
                    30,
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
