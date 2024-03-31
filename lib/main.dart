import 'package:bnews/res/consts/colors.dart';
import 'package:bnews/res/consts/fonts.dart';
import 'package:bnews/res/consts/strings.dart';
import 'package:bnews/res/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appname,
      theme: ThemeData(
          appBarTheme:
              AppBarTheme(iconTheme: IconThemeData(color: AppColors.icon)),
          fontFamily: AppFonts.regular,
          scaffoldBackgroundColor: AppColors.background,
          iconTheme: IconThemeData(
            color: AppColors.icon,
          )),
      getPages: AppRoutes.getRoutes(),
    );
  }
}
