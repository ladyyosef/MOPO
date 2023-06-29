import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/ui/Screens/nav_pages/price_point.dart';

class LineChartWidgetWithTitle extends StatelessWidget {
  final List<PricePoint> points;
  final double width;
  final double height;
  final Color lineColor;
  final double lineWidth;
  final String horizontalTitle;
  final String verticalTitle;

  const LineChartWidgetWithTitle({
    Key? key,
    required this.points,
    this.width = 250,
    this.height = 150,
    this.lineColor = Colors.blue,
    this.lineWidth = 4,
    this.horizontalTitle = '',
    this.verticalTitle = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          horizontalTitle,
          textAlign: TextAlign.center,
        ),
        Expanded(
          child: Stack(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      verticalTitle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    child: CustomPaint(
                      size: Size(width, height),
                      painter: LineChartPainter(
                        points: points,
                        lineColor: lineColor,
                        lineWidth: lineWidth,
                      ),
                    ),
                  ),
                ],
              ),
              ...points.map((p) {
                final xScale = width / (points.length - 1);
                final yScale = height / points.map((p) => p.y).reduce((a, b) => a > b ? a : b);
                final x = p.x * xScale;
                final y = height - p.y * yScale;
                return Positioned(
                  left: x,
                  top: y,
                  child: Text('${p.y}'),
                );
              }).toList(),
            ],
          ), 
        ),
      ],
    );
  }
}

class LineChartPainter extends CustomPainter {
  final List<PricePoint> points;
  final Color lineColor;
  final double lineWidth;

  LineChartPainter({
    required this.points,
    this.lineColor = Colors.blue,
    this.lineWidth = 4,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = lineColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = lineWidth;

    final xScale = size.width / (points.length - 1);
    final yScale = size.height / points.map((p) => p.y).reduce((a, b) => a > b ? a : b);

    final path = Path();

    for (var i = 0; i < points.length; i++) {
      final x = i * xScale;
      final y = size.height - points[i].y * yScale;
      if (i == 0) {
        path.moveTo(x, y);
      } else {
        path.lineTo(x, y);
      }
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}