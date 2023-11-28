
import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_assets.dart';
import 'package:selaty/core/utils/app_size.dart';
import 'package:selaty/core/utils/app_strings.dart';
import 'package:selaty/features/auth/presentation/widgets/custom_app_bar.dart';
import 'package:selaty/features/auth/presentation/widgets/custom_button.dart';
import 'package:selaty/features/auth/presentation/widgets/custom_text_field.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

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
            const Text(
              AppStrings.newAccount,
              style: TextStyle(
                fontSize: 28,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              AppStrings.enterYourData,
              style: TextStyle(
                fontSize: 17,
                color: Colors.grey,
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
                  color: Colors.greenAccent,
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
              color: Colors.greenAccent,
              text: AppStrings.login,
              onPressed: (){
                
              },
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
                    140,
                  ),
                  height: AppSize.getHeight(
                    60,
                  ),
                ),
                Image.asset(
                  Assets.assetsImagesPhoto20231128130505,
                  width: AppSize.getWidth(
                    140,
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
