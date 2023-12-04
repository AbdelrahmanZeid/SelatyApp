import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_funcation.dart';
import 'package:selaty/features/auth/presentation/widgets/register_landscape.dart';
import 'package:selaty/features/auth/presentation/widgets/register_portrait.dart';


class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  isPortrait(context)?const RegisterPortrait():const RegisterLandScape();
  }
}

