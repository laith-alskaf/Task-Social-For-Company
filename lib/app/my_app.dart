import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:social_app_test/ui/views/main_view/main_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(540, 960),
      ensureScreenSize: true,
      minTextAdapt: true,
      splitScreenMode: false,
      child: GetMaterialApp(
        defaultTransition: GetPlatform.isAndroid
            ? Transition.leftToRight
            : Transition.cupertino,
        transitionDuration: const Duration(microseconds: 300),
        debugShowCheckedModeBanner: false,
        title: 'Task-Social',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:const  MainView(),
      ),
    );
  }
}
