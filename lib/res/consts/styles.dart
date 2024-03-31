import 'package:bnews/res/consts/consts.dart';

class AppStyles {
  static TextStyle regular(
      {Color? color,
      String? fontfamily = AppFonts.regular,
      double? size = 14.0,
      FontWeight? fontWeight = FontWeight.normal}) {
    return TextStyle(
      color: color,
      fontFamily: fontfamily,
      fontSize: size,
      fontWeight: fontWeight,
    );
  }

  static TextStyle semibold(
      {Color? color,
      String? fontfamily = AppFonts.semibold,
      double? size = 14.0,
      FontWeight? fontWeight}) {
    return TextStyle(
      color: color,
      fontFamily: fontfamily,
      fontSize: size,
      fontWeight: fontWeight,
    );
  }

  static TextStyle bold(
      {Color? color,
      String? fontfamily = AppFonts.bold,
      double? size = 14.0,
      FontWeight? fontWeight}) {
    return TextStyle(
      color: color,
      fontFamily: fontfamily,
      fontSize: size,
      fontWeight: fontWeight,
    );
  }
}
