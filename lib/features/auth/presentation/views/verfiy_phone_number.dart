import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:selaty/core/utils/app_funcation.dart';
import 'package:selaty/core/utils/app_size.dart';
import 'package:selaty/core/utils/app_strings.dart';
import 'package:selaty/features/auth/presentation/widgets/custom_check_phone_number_app_bar.dart';

class VerifyPhoneNumberView extends StatelessWidget {
  const VerifyPhoneNumberView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: VerifyPhoneNumberViewBody(),
      ),
    );
  }
}

class VerifyPhoneNumberViewBody extends StatelessWidget {
  const VerifyPhoneNumberViewBody({super.key});

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
                  color: Colors.grey.shade400,
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
                color: Colors.grey.shade600,
              ),
            ),
            Text(
              AppStrings.resendCode,
              style: TextStyle(
                fontSize: AppSize.getFontSize(
                  15,
                ),
                color: Colors.red.shade500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
