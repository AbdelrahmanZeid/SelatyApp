import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/core/utils/app_assets.dart';
import 'package:selaty/core/utils/app_size.dart';

void navigation(context, String path) {
  GoRouter.of(context).push(
    path,
  );
}

void goBack(context) {
  GoRouter.of(context).pop();
}

void navigationWithReplace(context, String path) {
  GoRouter.of(context).pushReplacement(
    path,
  );
}

Widget getGreyFruitImage(context) {
  return getOrientation(context) == Orientation.portrait
      ? Positioned(
        bottom: -275,
          right: 0,
          child: Center(
            child: Image.asset(
              Assets.assetsImagesGreyFruitImage,
              width: AppSize.getWidth(
                170,
              ),
              height: AppSize.getHeight(
                170,
              ),
            ),
          ),
        )
      : Positioned(
          bottom: -27,
          right: -70,
          child: Image.asset(
            Assets.assetsImagesGreyFruitImage,
            width: AppSize.getWidth(
              120,
            ),
            height: AppSize.getHeight(
              120,
            ),
          ),
        );
}

//home view function
Widget getLeading(IconData icon) => Padding(
      padding: const EdgeInsets.only(
        left: 8,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            10,
          ),
          color: Colors.white,
        ),
        child: Icon(
          icon,
        ),
      ),
    );

getOrientation(context) {
  return MediaQuery.of(context).orientation;
}
