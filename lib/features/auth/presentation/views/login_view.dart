import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_assets.dart';
import 'package:selaty/core/utils/app_funcation.dart';
import 'package:selaty/core/utils/app_size.dart';
import 'package:selaty/core/utils/app_strings.dart';
import 'package:selaty/features/auth/presentation/widgets/custom_button.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginViewBody(),
    );
  }
}

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        getGreyFruitImage(),
        Column(
          children: [
            const SizedBox(
              height: 150,
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
            const SizedBox(
              height: 15,
            ),
            CustomButton(
              text: AppStrings.loginBtnName,
              color: Colors.green,
              
            ),
            const SizedBox(
              height: 15,
            ),
            CustomButton(
              text: AppStrings.registerName,
              color: Colors.red,
            ),
          ],
        ),
      ],
    );
  }
}
