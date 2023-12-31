import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/routes/app_route.dart';
import 'core/utils/theme_manager.dart';

class Selaty extends StatelessWidget {
  const Selaty({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(
        360,
        690,
      ),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (
        _,
        child,
      ) =>
          MaterialApp.router(
            
        debugShowCheckedModeBanner: false,
        routerConfig: router,
        
        theme: ThemeManager.getAppTheme(
          context,
        ),
      ),
    );
  }
}
