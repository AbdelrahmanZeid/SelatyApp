import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/core/utils/app_assets.dart';
import 'package:selaty/core/utils/app_size.dart';

void navigation(BuildContext context, String path) {
  GoRouter.of(context).push(
    path,
  );
}
void navigationWithReplace(BuildContext context, String path) {
  GoRouter.of(context).push(
    path,
  );
}

Widget getGreyFruitImage() {
  return Positioned(
    bottom: 0,
    right: 0,
    child: Image.asset(
      Assets.assetsImagesGreyFruit,
      width: AppSize.getWidth(
        170,
      ),
      height: AppSize.getHeight(
        170,
      ),
    ),
  );
}


