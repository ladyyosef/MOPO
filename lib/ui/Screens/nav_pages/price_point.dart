import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class PricePoint {
  final double y;
  final double x;
  PricePoint({ required this.x,required this.y});
}
List<PricePoint> get pricePoints{
  final data = <double> [2,6,5,11,3,4];
  return data.mapIndexed((index, element) => PricePoint(
    x: index.toDouble(), y:element)).
    toList();
}