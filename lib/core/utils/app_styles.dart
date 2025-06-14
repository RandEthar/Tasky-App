import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasky_app/core/helper_function.dart/get_responsive_font_size.dart';

class TextStyles {
  static TextStyle medium24(BuildContext context) {
    return GoogleFonts.plusJakartaSans(
      fontWeight: FontWeight.w500,
      fontSize: getResponsiveFontSize(context: context, fontSize: 24),
    );
  }

  static TextStyle medium18(BuildContext context) {
    return GoogleFonts.plusJakartaSans(
      fontWeight: FontWeight.w500,
      fontSize: getResponsiveFontSize(context: context, fontSize: 18),
    );
  }

  static TextStyle medium14(BuildContext context) {
    return GoogleFonts.plusJakartaSans(
      fontWeight: FontWeight.w500,
      fontSize: getResponsiveFontSize(context: context, fontSize: 14),
    );
  }

  static TextStyle medium16(BuildContext context) {
    return GoogleFonts.plusJakartaSans(
      fontWeight: FontWeight.w500,
      fontSize: getResponsiveFontSize(context: context, fontSize: 16),
    );
  }

  static TextStyle semiBold24(BuildContext context) {
    return GoogleFonts.plusJakartaSans(
      fontWeight: FontWeight.w600,
      fontSize: getResponsiveFontSize(context: context, fontSize: 24),
    );
  }

  static TextStyle semiBold14(BuildContext context) {
    return GoogleFonts.plusJakartaSans(
      fontWeight: FontWeight.w600,
      fontSize: getResponsiveFontSize(context: context, fontSize: 14),
    );
  }

  static TextStyle semiBold12(BuildContext context) {
    return GoogleFonts.plusJakartaSans(
      fontWeight: FontWeight.w600,
      fontSize: getResponsiveFontSize(context: context, fontSize: 12),
    );
  }

  static TextStyle medium12(BuildContext context) {
    return GoogleFonts.plusJakartaSans(
      fontWeight: FontWeight.w500,
      fontSize: getResponsiveFontSize(context: context, fontSize: 12),
    );
  }

  static TextStyle semiBold16(BuildContext context) {
    return GoogleFonts.plusJakartaSans(
      fontWeight: FontWeight.w600,
      fontSize: getResponsiveFontSize(context: context, fontSize: 16),
    );
  }

  static TextStyle semiBold32(BuildContext context) {
    return GoogleFonts.plusJakartaSans(
      fontWeight: FontWeight.w600,
      fontSize: getResponsiveFontSize(context: context, fontSize: 32),
    );
  }

  static TextStyle semiBold20(BuildContext context) {
    return GoogleFonts.plusJakartaSans(
      fontWeight: FontWeight.w600,
      fontSize: getResponsiveFontSize(context: context, fontSize: 20),
    );
  }
}
