import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ThemeManager {
 static  ThemeData getAppTheme(context) => ThemeData(
        appBarTheme: AppBarTheme(
          
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Theme.of(context).scaffoldBackgroundColor,
            
          ),
        ),
      );
}
