
import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_assets.dart';
import 'package:selaty/core/utils/app_color.dart';
import 'package:selaty/core/utils/app_funcation.dart';
import 'package:selaty/core/utils/app_size.dart';
import 'package:selaty/core/utils/app_strings.dart';
import 'package:selaty/features/auth/presentation/widgets/custom_app_bar.dart';
import 'package:selaty/features/auth/presentation/widgets/custom_button.dart';
import 'package:selaty/features/auth/presentation/widgets/custom_text_field.dart';

class RegisterLandScape extends StatelessWidget {
  const RegisterLandScape({
    super.key,
  });

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
              height: 5,
            ),
            const CustomAppBar(),
            const SizedBox(
              height: 3,
            ),
            const Text(
              AppStrings.newAccount,
              style: TextStyle(
                fontSize: 25,
                color: AppColor.appTextColor2
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            const Text(
              AppStrings.enterYourData,
              style: TextStyle(
                fontSize: 17,
                color: AppColor.appTextColor,
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            CustomTextField(
              lable: AppStrings.name,
              obscureText: false,
            ),
            const SizedBox(
              height: 5,
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
              height: 5,
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
              height: 10,
            ),
            CustomButton(
              color: AppColor.btnColor1,
              text: AppStrings.login,
              onPressed: () {},
            ),
            const SizedBox(
              height:10,
            ),
            Center(
              child: Text(
                AppStrings.orLoginWith,
                style:isPortrait(context)? const TextStyle(
                  fontSize: 18,
                ):const TextStyle(
                  fontSize: 18,
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
                    45,
                  ),
                ),
                Spacer(),
                Image.asset(
                  Assets.assetsImagesPhoto20231128130505,
                  width: AppSize.getWidth(
                    95,
                  ),
                  height: AppSize.getHeight(
                    45,
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
                       8,
                      ),
                    ),
                  ),
                )
                ,Spacer(),
                Text(
                  AppStrings.alreadyHaveAccount,
                  style: TextStyle(
                    fontSize: AppSize.getFontSize(
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
