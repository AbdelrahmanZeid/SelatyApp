import 'package:flutter/material.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/app_funcation.dart';
import '../../../../core/utils/app_size.dart';
import '../../../../core/utils/app_strings.dart';
import 'custom_button.dart';

class AuthViewBody extends StatelessWidget {
  const AuthViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: ListView(
        children: [
          SizedBox(
            height: AppSize.getHeight(
              35,
            ),
          ),
          Center(
            child: Image.asset(
              Assets.assetsImagesMain,
              width: AppSize.getWidth(
                300,
              ),
              height: AppSize.getHeight(
                200,
              ),
            ),
          ),
          SizedBox(
            height: AppSize.getHeight(
              25,
            ),
          ),
          CustomButton(
            text: AppStrings.loginBtnName,
            color: AppColor.onBoardingOneColor,
            onPressed: () => navigationWithReplace(
              context,
              "/login",
            ),
          ),
          SizedBox(
            height: AppSize.getHeight(
              10,
            ),
          ),
          CustomButton(
            text: AppStrings.registerName,
            color: AppColor.btnColor1,
            onPressed: () => navigationWithReplace(
              context,
              "/register",
            ),
          ),
        ],
      ),
    );
  }
}
