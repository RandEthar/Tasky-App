import 'package:flutter/widgets.dart';

void scrollToTodayDate({
  required ScrollController controller,
  required int todayDate,
}) {
  const double itemWidth = 40 + 18;

  final double scrollOffset = (todayDate - 1) * itemWidth;

  controller.animateTo(
    scrollOffset,
    duration: const Duration(milliseconds: 300), 
    curve: Curves.bounceInOut,
  );
}
