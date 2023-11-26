import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_assets.dart';
import 'package:selaty/core/utils/app_funcation.dart';
import 'package:selaty/core/utils/app_size.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        getGreyFruitImage(),
        Column(
          children: [
            SizedBox(
              height: AppSize.getHeight(
                15,
              ),
            ),
            Center(
              child: Image.asset(
                Assets.assetsImagesSplash,
              ),
            ),
            SizedBox(
              height: AppSize.getHeight(
                45,
              ),
            ),
            SizedBox(
              height: 50,
              width: 50,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  Colors.green.shade400,
                ),
                strokeWidth: 5.5,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
