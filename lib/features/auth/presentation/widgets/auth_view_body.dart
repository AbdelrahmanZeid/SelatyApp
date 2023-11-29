import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_assets.dart';
import 'package:selaty/core/utils/app_color.dart';
import 'package:selaty/core/utils/app_funcation.dart';
import 'package:selaty/core/utils/app_size.dart';
import 'package:selaty/core/utils/app_strings.dart';
import 'package:selaty/features/auth/presentation/widgets/custom_button.dart';

class AuthViewBody extends StatelessWidget {
  const AuthViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        getGreyFruitImage(),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: ListView(
            children: [
              SizedBox(
                height: AppSize.getHeight(
                 50,
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
                  15,
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
                  15,
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
        ),
      ],
    );
  }
}
