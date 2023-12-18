import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/app_funcation.dart';
import '../../../../core/utils/app_size.dart';
import '../../../../core/utils/app_strings.dart';
import 'custom_button.dart';
import 'custom_check_phone_number_app_bar.dart';

class CheckPhoneNumberViewBody extends StatefulWidget {
  const CheckPhoneNumberViewBody({super.key});

  @override
  State<CheckPhoneNumberViewBody> createState() =>
      _CheckPhoneNumberViewBodyState();
}

class _CheckPhoneNumberViewBodyState extends State<CheckPhoneNumberViewBody> {
  @override
  final controller = TextEditingController();
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 5,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: AppSize.getHeight(
                  15,
                ),
              ),
              CustomCheckPhoneNumberAppBar(
                text: AppStrings.checkPhoneNumber,
              ),
              SizedBox(
                height: AppSize.getHeight(
                  5,
                ),
              ),
              Text(
                AppStrings.weSendCode,
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: AppColor.appTextColor,
                  fontSize: isPortrait(context)
                      ? AppSize.getFontSize(
                          18,
                        )
                      : AppSize.getFontSize(
                          12,
                        ),
                ),
              ),
              SizedBox(
                height: AppSize.getHeight(
                  20,
                ),
              ),
              IntlPhoneField(
                languageCode: "ar",
                initialCountryCode: 'EG',
                disableLengthCheck: true,
                keyboardType: TextInputType.phone,
                controller: controller,
                textAlign: TextAlign.left,
                dropdownIconPosition: IconPosition.leading,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  suffixIcon: Icon(
                    Icons.highlight_remove_sharp,
                    color: Colors.green,
                  ),
                  hintTextDirection: TextDirection.rtl,
                ),
              ),
              SizedBox(
                height: AppSize.getHeight(
                  10,
                ),
              ),
              CustomButton(
                color: AppColor.btnColor1,
                text: AppStrings.confirm,
                onPressed: () => navigation(
                  context,
                  "/verifyphonenumber",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
