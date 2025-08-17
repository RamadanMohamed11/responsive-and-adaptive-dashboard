import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_adaptive_design/utils/size_config.dart';

abstract class Styles {
  static const double percent = 0.1;
  static TextStyle styleRegular16(BuildContext context) {
    return GoogleFonts.montserrat(
      color: const Color(0xFF064060),
      fontSize: 16 + percent * MediaQuery.sizeOf(context).width / 100,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleBold16(BuildContext context) {
    return GoogleFonts.montserrat(
      color: const Color(0xFF4EB7F2),
      fontSize: 16 + percent * MediaQuery.sizeOf(context).width / 100,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleMedium16(BuildContext context) {
    return GoogleFonts.montserrat(
      color: const Color(0xFF064061),
      fontSize: 16 + percent * MediaQuery.sizeOf(context).width / 100,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMedium20(BuildContext context) {
    return GoogleFonts.montserrat(
      color: const Color(0xFFFFFFFF),
      fontSize: 20 + percent * MediaQuery.sizeOf(context).width / 100,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold16(BuildContext context) {
    return GoogleFonts.montserrat(
      color: const Color(0xFF064061),
      fontSize: 16 + percent * MediaQuery.sizeOf(context).width / 100,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold20(BuildContext context) {
    return GoogleFonts.montserrat(
      color: const Color(0xFF064061),
      fontSize: 20 + percent * MediaQuery.sizeOf(context).width / 100,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular12(BuildContext context) {
    return GoogleFonts.montserrat(
      color: const Color(0xFFAAAAAA),
      fontSize: 12 + percent * MediaQuery.sizeOf(context).width / 100,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold24(BuildContext context) {
    return GoogleFonts.montserrat(
      color: const Color(0xFF4EB7F2),
      fontSize: 24 + percent * MediaQuery.sizeOf(context).width / 100,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular14(BuildContext context) {
    return GoogleFonts.montserrat(
      color: const Color(0xFFAAAAAA),
      fontSize: 14 + percent * MediaQuery.sizeOf(context).width / 100,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold18(BuildContext context) {
    return GoogleFonts.montserrat(
      color: const Color(0xFFFFFFFF),
      fontSize: 18 + percent * MediaQuery.sizeOf(context).width / 100,
      fontWeight: FontWeight.w600,
    );
  }
}

// sacleFactor
// responsive font size
// (min , max) fontsize
double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
