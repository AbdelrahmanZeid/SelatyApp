import 'package:flutter/material.dart';

import '../widgets/check_phone_number_view_body.dart';

class CheckPhoneNumberView extends StatelessWidget {
  const CheckPhoneNumberView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: CheckPhoneNumberViewBody(),
      ),
    );
  }
}
