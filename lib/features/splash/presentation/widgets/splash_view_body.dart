import 'package:flutter/material.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/app_funcation.dart';
import '../../../../core/utils/app_size.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: AppSize.getHeight(
              15,
            ),
          ),
       getOrientation(context)==Orientation.portrait?   Center(
            child: Image.asset(
              Assets.assetsImagesSplash,
            ),
          ):Center(
            child: Image.asset(
              Assets.assetsImagesSplash,
              width: AppSize.getWidth(100,),
              height: AppSize.getHeight(250,),
            ),
          ),
          SizedBox(
            height: AppSize.getHeight(
              70,
            ),
          ),
          SizedBox(
            height: AppSize.getHeight(50,),
            width: AppSize.getWidth(50,),
            child:const Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  AppColor.circleIndacatorColor,
                ),
                strokeWidth: 5.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
