import 'package:flutter/material.dart';
import 'package:quiz_app_vs_code/screans/welcome_Screan_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,

          // You can use the library anywhere in the app even in theme

          home: child,
        );
      },
      child: WelcomeScrean(),
    );
  }
}
