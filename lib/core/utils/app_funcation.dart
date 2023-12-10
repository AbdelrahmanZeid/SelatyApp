import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
 import 'app_size.dart';

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

//home view function
Widget getLeading(IconData icon,context) => Container(
      width:isPortrait(context)? AppSize.getWidth(
        40,
      ):AppSize.getWidth(
        20,
      ),
      height:isPortrait(context)? AppSize.getHeight(
        40,
      ): AppSize.getHeight(
        40,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          15,
        ),
        color: Colors.white,
      ),
      child: Icon(
        icon,
      ),
    );

getOrientation(context) {
  return MediaQuery.of(context).orientation;
}

bool isPortrait(context) {
  if (getOrientation(context) == Orientation.portrait) {
    return true;
  } else {
    return false;
  }
}

getScreenHeight(context) => MediaQuery.of(context).size.height;
getScreenWidth(context) => MediaQuery.of(context).size.height;


Widget addSpace([
  double height=0,
  double width=0,
]) {
  return SizedBox(
    height: AppSize.getHeight(
      height,
    ),
    width: AppSize.getWidth(
      width,
    ),
  );
}