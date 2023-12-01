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

Widget getGreyFruitImage() {
  return Positioned(
    bottom: 0,
    right: 0,
    child: Image.asset(
      Assets.assetsImagesGreyFruitImage,
      width: AppSize.getWidth(
        170,
      ),
      height: AppSize.getHeight(
        170,
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
