import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_assets.dart';
import 'package:selaty/core/utils/app_color.dart';
import 'package:selaty/core/utils/app_funcation.dart';
import 'package:selaty/core/utils/app_size.dart';
import 'package:selaty/core/utils/app_strings.dart';
import 'package:selaty/features/auth/presentation/widgets/custom_app_bar.dart';
import 'package:selaty/features/auth/presentation/widgets/custom_button.dart';
import 'package:selaty/features/auth/presentation/widgets/custom_text_field.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              height: 22,
            ),
            CustomButton(
              color: AppColor.btnColor1,
              text: AppStrings.loginBtnName,
              onPressed: () {},
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: AppSize.getHeight(
                85,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppStrings.loginBtnName,
                  style: TextStyle(
                    fontSize: AppSize.getFontSize(
                      15,
                    ),
                  ),
                ),
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
    );
  }
}
