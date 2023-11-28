import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_funcation.dart';
import 'package:selaty/core/utils/app_size.dart';
import 'package:selaty/core/utils/app_strings.dart';
import 'package:selaty/features/auth/presentation/widgets/custom_button.dart';
import 'package:selaty/features/auth/presentation/widgets/custom_check_phone_number_app_bar.dart';
import 'package:selaty/features/auth/presentation/widgets/custom_check_phone_number_text_field.dart';

class CheckPhoneNumberViewBody extends StatelessWidget {
  const CheckPhoneNumberViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: AppSize.getHeight(
                15,
              ),
            ),
          CustomCheckPhoneNumberAppBar(text: AppStrings.checkPhoneNumber,),
            SizedBox(
              height: AppSize.getHeight(
                5,
              ),
            ),
            Text(
              AppStrings.weSendCode,
              textAlign: TextAlign.right,
              style: TextStyle(
                //fontWeight: FontWeight.bold,
                color: Colors.grey.shade700,
                fontSize: AppSize.getFontSize(
                  18,
                ),
              ),
            ),
            SizedBox(
              height: AppSize.getHeight(
                40,
              ),
            ),
            CustomCheckPhoneNumberTextField(
              lable: "",
              obscureText: false,
              perfix: Row(
                children: [
                  Icon(
                    Icons.abc,
                  ),
                  Text(
                    "+20",
                  ),
                ],
              ),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.cancel_outlined,
                  color: Colors.redAccent,
                ),
              ),
            ),
            SizedBox(
              height: AppSize.getHeight(
                20,
              ),
            ),
            CustomButton(
              color: Colors.greenAccent,
              text: AppStrings.confirm,
              onPressed: () => navigation(
                context,
                "/verifyphonenumber",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
