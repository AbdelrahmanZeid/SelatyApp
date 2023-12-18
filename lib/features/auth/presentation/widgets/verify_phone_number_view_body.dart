import 'package:flutter/material.dart';
import 'package:selaty/features/auth/presentation/widgets/custom_pin.dart';
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
                  fontSize: isPortrait(context)
                      ? AppSize.getFontSize(
                          18,
                        )
                      : AppSize.getFontSize(
                          10,
                        ),
                  fontWeight: FontWeight.bold,
                  color: AppColor.appTextColor,
                ),
              ),
            ),
            isPortrait(context)
                ? SizedBox(
                    height: AppSize.getHeight(
                      60,
                    ),
                  )
                : SizedBox(
                    height: AppSize.getHeight(
                      30,
                    ),
                  ),
            Row(
              mainAxisAlignment: isPortrait(context)
                  ? MainAxisAlignment.spaceBetween
                  : MainAxisAlignment.spaceEvenly,
              children: const [
                CustomPin(
                  color: Color(
                    0xffEF3F4C,
                  ),
                  number: "8",
                ),
                CustomPin(
                  color: Colors.white,
                  number: "",
                ),
                CustomPin(
                  color: Colors.white,
                  number: "",
                ),
                CustomPin(
                  color: Colors.white,
                  number: "",
                ),
              ],
            ),
            SizedBox(
              height: AppSize.getHeight(
                15,
              ),
            ),
            Text(
              AppStrings.dontReciveTheCode,
              style: TextStyle(
                fontSize: isPortrait(context)
                    ? AppSize.getFontSize(
                        20,
                      )
                    : AppSize.getFontSize(
                        10,
                      ),
                color: AppColor.appTextColor,
              ),
            ),
            Text(
              AppStrings.resendCode,
              style: TextStyle(
                fontSize: isPortrait(context)
                    ? AppSize.getFontSize(
                        18,
                      )
                    : AppSize.getFontSize(
                        10,
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
