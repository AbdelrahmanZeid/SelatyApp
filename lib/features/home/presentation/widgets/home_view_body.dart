
import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_funcation.dart';

import 'package:selaty/features/home/presentation/widgets/home_landscape.dart';
import 'package:selaty/features/home/presentation/widgets/home_portait.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return isPortrait(context)?const HomePortait():const HomeLandScape();
  }
}
