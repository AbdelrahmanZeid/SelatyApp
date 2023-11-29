import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_color.dart';
import 'package:selaty/features/auth/presentation/widgets/change_pass_success_view_body.dart';

class ChangePassSuccessView extends StatelessWidget {
  const ChangePassSuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.btnColor1,
        body: ChangePassSuccessViewBody(),
      ),
    );
  }
}
