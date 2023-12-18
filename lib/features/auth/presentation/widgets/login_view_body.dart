import 'package:flutter/material.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/app_funcation.dart';
import '../../../../core/utils/app_size.dart';
import '../../../../core/utils/app_strings.dart';
import 'custom_app_bar.dart';
import 'custom_button.dart';
import 'custom_text_field.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
     
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(
              height:5,
            ),
            const CustomAppBar(),
          isPortrait(context)?  const  SizedBox(
              height: 35,
            ):const  SizedBox(
              height: 5,
            ),
       isPortrait(context)?     Center(
              child: Image.asset(
                Assets.assetsImagesMain,
                width: AppSize.getWidth(
                  300,
                ),
                height: AppSize.getHeight(
                  180,
                ),
              ),
            ):   Center(
              child: Image.asset(
                Assets.assetsImagesMain,
                width: AppSize.getWidth(
                  200,
                ),
                height: AppSize.getHeight(
                  80,
                ),
              ),
            ),
            CustomTextField(
              lable: AppStrings.emailAddress,
              obscureText: false,
              perfixIcon: IconButton(
                icon: const Icon(
                  Icons.check_circle_outline,
                  color: AppColor.btnColor1,
                ),
                onPressed: () {},
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              lable: AppStrings.password,
              obscureText: true,
              perfixIcon: IconButton(
                icon: const Icon(
                  Icons.visibility_off,
                ),
                onPressed: () {},
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            GestureDetector(
              onTap: () => navigation(
                context,
                "/checkphonenumber",
              ),
              child: const Text(
                AppStrings.forgetPassword,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            CustomButton(
              color: AppColor.btnColor1,
              text: AppStrings.loginBtnName,
              onPressed: () => navigationWithReplace(
                context,
                "/home",
              ),
            ),
            const SizedBox(
              height: 25,
            ),
         isPortrait(context)?   SizedBox(
              height: AppSize.getHeight(
                140,
              ),
            ): SizedBox(
              height: AppSize.getHeight(
                30,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppStrings.loginBtnName,
                  style: TextStyle(
                    fontSize:isPortrait(context)? AppSize.getFontSize(
                      15,
                    ):AppSize.getFontSize(
                      8,
                    ),
                  ),
                ),
                Text(
                  AppStrings.alreadyHaveAccount,
                  style: TextStyle(
                    fontSize:isPortrait(context)? AppSize.getFontSize(
                      15,
                    ): AppSize.getFontSize(
                      8,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
