import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/app_funcation.dart';
import '../../../../core/utils/app_size.dart';
import '../../../../core/utils/app_strings.dart';
import 'custom_check_phone_number_app_bar.dart';

class VerifyPhoneNumberViewBody extends StatelessWidget {
  const VerifyPhoneNumberViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: AppSize.getHeight(
                10,
              ),
            ),
            CustomCheckPhoneNumberAppBar(
              text: AppStrings.checkPhone,
            ),
            SizedBox(
              height: AppSize.getHeight(
                15,
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                AppStrings.enterOtpCode,
                style: TextStyle(
                  fontSize: AppSize.getFontSize(
                    18,
                  ),
                  fontWeight: FontWeight.bold,
                  color: AppColor.appTextColor,
                ),
              ),
            ),
            SizedBox(
              height: AppSize.getHeight(
                60,
              ),
            ),
            PinCodeTextField(
              keyboardType: TextInputType.number,
              keyboardAppearance: Brightness.dark,
            // backgroundColor: Colors.redAccent,
              appContext: context,
              length: 4,
              onChanged: (value) {},
              onCompleted: (value) {
                navigation(
                  context,
                  "/changepassword",
                );
                print("Completed: $value");
              },
              // Add any additional customization options
            ),
            SizedBox(
              height: AppSize.getHeight(
                15,
              ),
            ),
            Text(
              AppStrings.dontReciveTheCode,
              style: TextStyle(
                fontSize: AppSize.getFontSize(
                  20,
                ),
                color: AppColor.appTextColor,
              ),
            ),
            Text(
              AppStrings.resendCode,
              style: TextStyle(
                fontSize: AppSize.getFontSize(
                  18,
                ),
                color: AppColor.onBoardingOneColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
