import 'package:flutter/material.dart';
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
        horizontal: 5,
        vertical: 10,
      ),
      child: Column(
        children: [
          CustomCheckPhoneNumberAppBar(
            text: AppStrings.checkPhone,
          ),
        ],
      ),
    );
  }
}
