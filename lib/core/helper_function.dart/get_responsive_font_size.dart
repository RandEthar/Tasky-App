import 'package:flutter/material.dart';
import 'package:tasky_app/core/utils/size_config.dart';

/// Returns a responsive font size based on screen width.
/// Keeps the result within [min, max] limits to avoid extreme scaling.
double getResponsiveFontSize({
  required double fontSize,
  required BuildContext context,
}) {
  final scaleFactor = _getScaleFactor(context: context);
  final responsiveFontSize = fontSize * scaleFactor;

  final minFontSize = fontSize * 0.8;
  final maxFontSize = fontSize * 1.2;

  return responsiveFontSize.clamp(minFontSize, maxFontSize).toDouble();
}

/// Returns a scale factor depending on the screen width.
/// Adjusts font scaling based on device type (mobile, tablet, desktop).
double _getScaleFactor({required BuildContext context}) {
  final width = MediaQuery.sizeOf(context).width;

  if (width < SizeConfig.taplet) {
    return width / 500; // Mobile
  } else if (width < SizeConfig.taplet) {
    return width / 1000; // Tablet
  } else {
    return width / 1400; // Desktop
  }
}
