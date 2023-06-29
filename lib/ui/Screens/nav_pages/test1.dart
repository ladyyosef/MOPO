import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_application_2/ui/Screens/nav_pages/price_point.dart';

import 'line.dart';
class ff extends StatelessWidget {
  const ff({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 150,
      child: LineChartWidget( points: [ PricePoint(x: 0, y: 10),
    PricePoint(x: 1, y: 20),
    PricePoint(x: 2, y: 50),
    PricePoint(x: 3, y: 4),
    PricePoint(x: 4, y: 6),], width: 250, height: 100, lineWidth: 5,),
    );
  }
}
