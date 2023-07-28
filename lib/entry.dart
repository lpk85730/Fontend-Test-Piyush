import 'package:demo_project/core/constants/string_constants.dart';
import 'package:demo_project/core/constants/theme_constants.dart';
import 'package:demo_project/core/domain/method/methods.dart';
import 'package:demo_project/core/utils/no_scroll_glow.dart';
import 'package:demo_project/feature/post_details/presentation/pages/post_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    preLoadImages(context);
    return GetMaterialApp(
      title: StringConstants.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppTheme().appBarTheme(),
        scaffoldBackgroundColor: ThemeColors.clrWhite,
        fontFamily: ThemeFonts.notoSans,
      ),
      builder: (_, child) {
        /// To remove the glowing effect of the Listview and Gridview
        return ScrollConfiguration(
          behavior: NoGlowScrollBehavior(),
          child: child!,
        );
      },
      home: PostDetailPage(),
    );
  }
}
