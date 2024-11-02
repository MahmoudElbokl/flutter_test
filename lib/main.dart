import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_flutter/core/app_theme.dart';

import 'features/home/presentation/pages/home_view.dart';
import 'gen/assets.gen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          title: 'Flutter Test',
          builder: BotToastInit(),
          navigatorObservers: [
            BotToastNavigatorObserver(),
          ],debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
            useMaterial3: true,
            scaffoldBackgroundColor: whiteColor,
            textTheme: appTextTheme,
            fontFamily: "Inter",
          ),
          home: const HomeView(),
        );
      },
    );
  }
}
