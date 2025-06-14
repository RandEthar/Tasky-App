import 'package:flutter/material.dart';
import 'package:tasky_app/core/utils/app_color.dart';
import 'package:tasky_app/core/utils/app_styles.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double _currentValue = 75;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text("Progress", style: TextStyles.medium16(context)),
            const Spacer(),
            Text("${_currentValue.round()}%",
                style: TextStyles.medium16(context).copyWith(color: AppColor.secondary)),
          ],
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            trackHeight: 6,
            activeTrackColor: AppColor.secondary,
            inactiveTrackColor: const Color(0xffBAC8FF),
            thumbShape: _CustomThumbShape(),
            overlayColor: Colors.transparent,
          ),
          child: Slider(
            value: _currentValue,
            min: 0,
            max: 100,
            onChanged: (value) {
              setState(() {
                _currentValue = value;
              });
            },
          ),
        ),
      ],
    );
  }
}

class _CustomThumbShape extends SliderComponentShape {
  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) => const Size(24, 24);

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter? labelPainter,
    required RenderBox? parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    final Canvas canvas = context.canvas;

    final outerPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final innerPaint = Paint()
      ..color = AppColor.secondary
      ..style = PaintingStyle.fill;

    canvas.drawCircle(center, 8, outerPaint);
    canvas.drawCircle(center, 6, innerPaint);
  }
}
