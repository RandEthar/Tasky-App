


 import 'package:flutter/widgets.dart';

void scrollRight({required ScrollController scrollController}) {
    scrollController.animateTo(
      scrollController.offset + 200,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void scrollLeft({required ScrollController scrollController}) {
    scrollController.animateTo(
      scrollController.offset - 200,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }