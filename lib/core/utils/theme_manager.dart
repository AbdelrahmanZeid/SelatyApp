import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:selaty/core/utils/app_color.dart';

class ThemeManager {
 static  ThemeData getAppTheme(context) => ThemeData(
  scaffoldBackgroundColor: AppColor.scaffoldColor,
        appBarTheme: AppBarTheme(
          backgroundColor: AppColor.scaffoldColor,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Theme.of(context).scaffoldBackgroundColor,
            statusBarIconBrightness: Brightness.dark,
            statusBarBrightness: Brightness.dark,
          ),
        ),
        fontFamily: 'Pacifico'
      );
}
