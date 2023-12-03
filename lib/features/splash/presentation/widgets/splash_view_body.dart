import 'package:flutter/material.dart';
import 'package:selaty/core/utils/app_assets.dart';
import 'package:selaty/core/utils/app_color.dart';
import 'package:selaty/core/utils/app_funcation.dart';
import 'package:selaty/core/utils/app_size.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        getGreyFruitImage(context),
        SingleChildScrollView(
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
                  45,
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
        ),
      ],
    );
  }
}
