import 'package:flutter/material.dart';
import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/app_funcation.dart';
import '../../../../core/utils/app_size.dart';
import '../../../../core/utils/app_strings.dart';
import 'custom_button.dart';
import 'custom_change_password_app_bar.dart';
import 'custom_check_phone_number_text_field.dart';

class ChangePasswordViewBody extends StatelessWidget {
  const ChangePasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: AppSize.getHeight(
                10,
              ),
            ),
            CustomChangePasswordAppBar(
              text: AppStrings.changePassword,
            ),
            SizedBox(
              height: AppSize.getHeight(
                15,
              ),
            ),
            Text(
              AppStrings.enterNewPass,
              style: TextStyle(
                color: AppColor.appTextColor,
                fontSize: AppSize.getFontSize(
                  20,
                ),
              ),
            ),
            SizedBox(
              height: AppSize.getHeight(
                45,
              ),
            ),
            CustomCheckPhoneNumberTextField(
              lable: AppStrings.currentPass,
              obscureText: true,
              textInputType: TextInputType.phone,
              perfix: const Icon(Icons.visibility_off),
            ),
            SizedBox(
              height: AppSize.getHeight(
                20,
              ),
            ),
            CustomCheckPhoneNumberTextField(
              lable: AppStrings.newPass,
              obscureText: true,
              textInputType: TextInputType.phone,
              perfix: const Icon(Icons.visibility_off),
            ),
            SizedBox(
              height: AppSize.getHeight(
                15,
              ),
            ),
            CustomButton(
              color: Colors.greenAccent,
              text: AppStrings.change,
              onPressed: () => navigation(
                context,
                "/changepasssuccess",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
