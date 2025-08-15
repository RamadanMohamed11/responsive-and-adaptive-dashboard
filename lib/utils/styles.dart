import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Styles {
  static TextStyle styleRegular16(context) {
    return GoogleFonts.montserrat(
      color: const Color(0xFF064060),
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleBold16(BuildContext context) {
    return GoogleFonts.montserrat(
      color: const Color(0xFF4EB7F2),
      fontSize: 16.sp,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleMedium16(BuildContext context) {
    return GoogleFonts.montserrat(
      color: const Color(0xFF064061),
      fontSize: 16.sp,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMedium20(BuildContext context) {
    return GoogleFonts.montserrat(
      color: const Color(0xFFFFFFFF),
      fontSize: 20.sp,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold16(BuildContext context) {
    return GoogleFonts.montserrat(
      color: const Color(0xFF064061),
      fontSize: 16.sp,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold20(BuildContext context) {
    return GoogleFonts.montserrat(
      color: const Color(0xFF064061),
      fontSize: 20.sp,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular12(BuildContext context) {
    return GoogleFonts.montserrat(
      color: const Color(0xFFAAAAAA),
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold24(BuildContext context) {
    return GoogleFonts.montserrat(
      color: const Color(0xFF4EB7F2),
      fontSize: 24.sp,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular14(BuildContext context) {
    return GoogleFonts.montserrat(
      color: const Color(0xFFAAAAAA),
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold18(BuildContext context) {
    return GoogleFonts.montserrat(
      color: const Color(0xFFFFFFFF),
      fontSize: 18.sp,
      fontWeight: FontWeight.w600,
    );
  }
}
