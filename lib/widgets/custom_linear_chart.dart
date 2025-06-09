import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomLinearChart extends StatelessWidget {
  const CustomLinearChart({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: LineChart(
        LineChartData(
          // ✅ لإخفاء الخطوط المربعة والإطار
          gridData: FlGridData(show: false),
          borderData: FlBorderData(show: false),

          // ✅ Tooltip
          lineTouchData: LineTouchData(
            handleBuiltInTouches: true,
            getTouchedSpotIndicator:
                (barData, indicators) => indicators.map((index) {
              return TouchedSpotIndicatorData(
                FlLine(color: Colors.transparent),
                FlDotData(show: false),
              );
            }).toList(),
            touchTooltipData: LineTouchTooltipData(
              tooltipBgColor: Colors.white,
              getTooltipItems: (touchedSpots) {
                return touchedSpots.map((spot) {
                  return LineTooltipItem(
                    '${spot.y.toInt()} Task',
                    const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                }).toList();
              },
            ),
          ),

          // ✅ عناوين المحاور
          titlesData: FlTitlesData(
            show: true,
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 32,
                getTitlesWidget: (value, meta) {
                  const days = ['S', 'M', 'T', 'W', 'Th', 'F', 'Sa'];
                  return Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      days[value.toInt()],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  );
                },
              ),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 30,
                interval: 1,
                getTitlesWidget: (value, meta) {
                  return Text(
                    value.toInt().toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  );
                },
              ),
            ),
            topTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            rightTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
          ),

          // ✅ بيانات الخطين
          lineBarsData: [
            // الخط الخلفي الغامق
            LineChartBarData(
              isCurved: true,
              spots: [
                FlSpot(0, 1),
                FlSpot(1, 2),
                FlSpot(2, 1.5),
                FlSpot(3, 2.5),
                FlSpot(4, 1),
                FlSpot(5, 1.7),
                FlSpot(6, 2),
              ],
              color: Colors.black.withOpacity(0.3),
              barWidth: 8,
              isStrokeCapRound: true,
              dotData: FlDotData(show: false),
            ),

            // الخط الأمامي الأبيض
            LineChartBarData(
              isCurved: true,
              spots: [
                FlSpot(0, 1),
                FlSpot(1, 2),
                FlSpot(2, 1.5),
                FlSpot(3, 2.5),
                FlSpot(4, 1),
                FlSpot(5, 1.7),
                FlSpot(6, 2),
              ],
              color: Colors.white,
              barWidth: 3,
              isStrokeCapRound: true,
              dotData: FlDotData(
                show: true,
                checkToShowDot: (spot, barData) => spot.x == 1, // النقطة الزرقا على يوم الاثنين
                getDotPainter: (spot, percent, barData, index) =>
                    FlDotCirclePainter(
                  radius: 6,
                  color: Colors.blue,
                  strokeWidth: 2,
                  strokeColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

