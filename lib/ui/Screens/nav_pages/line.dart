import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_application_2/ui/Screens/nav_pages/price_point.dart';

class LineChartWidget extends StatelessWidget {
  final List<PricePoint> points;
  final Color lineColor;
  final Color backgroundColor; // إضافة خاصية لون الخلفية

  const LineChartWidget({
    required this.points,
    this.lineColor = Colors.blue,
    this.backgroundColor = Colors.white, // تعيين اللون الأبيض كلون افتراضي
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2,
      child: LineChart(
        LineChartData(
          lineBarsData: [
            LineChartBarData(
              spots: points
                  .map((point) => FlSpot(point.x, point.y))
                  .toList(),
              isCurved: false,
              dotData: FlDotData(show: true),
              color: lineColor,
            ),
          ],
          backgroundColor: backgroundColor, // تحديد لون الخلفية هنا
        ),
      ),
    );
  }
}