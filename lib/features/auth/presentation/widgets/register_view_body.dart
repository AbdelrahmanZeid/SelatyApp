import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/app_funcation.dart';
import '../../../../core/utils/app_size.dart';
import '../../../../core/utils/app_strings.dart';
import 'custom_app_bar.dart';
import 'custom_button.dart';
import 'custom_text_field.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  isPortrait(context)? Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(
              height: 10,
            ),
            const CustomAppBar(),
            const SizedBox(
              height: 35,
            ),
            const Text(
              AppStrings.newAccount,
              style: TextStyle(
                fontSize: 28,
                color: AppColor.appTextColor2
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              AppStrings.enterYourData,
              style: TextStyle(
                fontSize: 17,
                color: AppColor.appTextColor,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              lable: AppStrings.name,
              obscureText: false,
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextField(
              lable: AppStrings.emailAddress,
              obscureText: false,
              perfixIcon: IconButton(
                icon: const Icon(
                  Icons.check_circle_outline,
                  color: AppColor.onBoardingTwoColor,
                ),
                onPressed: () {},
              ),
            ),
            const SizedBox(
              height: 15,
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
              height: 40,
            ),
            CustomButton(
              color: AppColor.btnColor1,
              text: AppStrings.login,
              onPressed: () {},
            ),
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: Text(
                AppStrings.orLoginWith,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  Assets.assetsImagesPhoto20231128130503,
                  width: AppSize.getWidth(
                    120,
                  ),
                  height: AppSize.getHeight(
                    60,
                  ),
                ),
                Spacer(),
                Image.asset(
                  Assets.assetsImagesPhoto20231128130505,
                  width: AppSize.getWidth(
                    120,
                  ),
                  height: AppSize.getHeight(
                    60,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: AppSize.getHeight(
                50,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                   onTap: () => navigationWithReplace(
                    context,
                    "/login",
                  ),
                  child: Text(
                    AppStrings.loginBtnName,
                    style: TextStyle(
                      fontSize: AppSize.getFontSize(
                        15,
                      ),
                    ),
                  ),
                )
                ,Spacer(),
                Text(
                  AppStrings.alreadyHaveAccount,
                  style: TextStyle(
                    fontSize: AppSize.getFontSize(
                      15,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ): Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(
              height: 10,
            ),
            const CustomAppBar(),
            const SizedBox(
              height: 20,
            ),
            const Text(
              AppStrings.newAccount,
              style: TextStyle(
                fontSize: 28,
                color: AppColor.appTextColor2
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              AppStrings.enterYourData,
              style: TextStyle(
                fontSize: 17,
                color: AppColor.appTextColor,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              lable: AppStrings.name,
              obscureText: false,
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextField(
              lable: AppStrings.emailAddress,
              obscureText: false,
              perfixIcon: IconButton(
                icon: const Icon(
                  Icons.check_circle_outline,
                  color: AppColor.onBoardingTwoColor,
                ),
                onPressed: () {},
              ),
            ),
            const SizedBox(
              height: 15,
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
              height: 30,
            ),
            CustomButton(
              color: AppColor.btnColor1,
              text: AppStrings.login,
              onPressed: () {},
            ),
            const SizedBox(
              height:20,
            ),
            Center(
              child: Text(
                AppStrings.orLoginWith,
                style:isPortrait(context)? const TextStyle(
                  fontSize: 18,
                ):const TextStyle(
                  fontSize: 22,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  Assets.assetsImagesPhoto20231128130503,
                  width: AppSize.getWidth(
                    95,
                  ),
                  height: AppSize.getHeight(
                    60,
                  ),
                ),
                Spacer(),
                Image.asset(
                  Assets.assetsImagesPhoto20231128130505,
                  width: AppSize.getWidth(
                    95,
                  ),
                  height: AppSize.getHeight(
                    60,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: AppSize.getHeight(
                50,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                   onTap: () => navigationWithReplace(
                    context,
                    "/login",
                  ),
                  child: Text(
                    AppStrings.loginBtnName,
                    style: TextStyle(
                      fontSize: AppSize.getFontSize(
                        10,
                      ),
                    ),
                  ),
                )
                ,Spacer(),
                Text(
                  AppStrings.alreadyHaveAccount,
                  style: TextStyle(
                    fontSize: AppSize.getFontSize(
                      10,
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
