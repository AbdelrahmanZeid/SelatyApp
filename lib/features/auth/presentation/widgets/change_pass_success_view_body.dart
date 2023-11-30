import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_assets.dart';
import 'package:selaty/core/utils/app_color.dart';
import 'package:selaty/core/utils/app_funcation.dart';
import 'package:selaty/core/utils/app_size.dart';
import 'package:selaty/core/utils/app_strings.dart';
import 'package:selaty/features/auth/presentation/widgets/custom_button.dart';

class ChangePassSuccessViewBody extends StatelessWidget {
  const ChangePassSuccessViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 65,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            Assets.assetsImagesPhoto20231129232735,
          ),
          SizedBox(
            height: AppSize.getHeight(
              25,
            ),
          ),
          Text(
            AppStrings.yourpassHere,
            style: TextStyle(
              color: Colors.white,
              fontSize: AppSize.getFontSize(
                18,
              ),
            ),
          ),
          SizedBox(
            height: AppSize.getHeight(
              25,
            ),
          ),
          CustomButton(
            color: Colors.white,
            text: AppStrings.done,
            txtColor: AppColor.onBoardingOneColor,
            onPressed: () => navigationWithReplace(
              context,
              "/login",
            ),
          ),
        ],
      ),
    );
  }
}
