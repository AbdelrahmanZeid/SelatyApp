import 'package:flutter/material.dart';

import 'package:selaty/features/auth/presentation/widgets/verify_phone_number_view_body.dart';

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
