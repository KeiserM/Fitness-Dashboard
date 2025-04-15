import 'package:fitness_dashboard/const/constant.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/animation.dart';

class ChartData {
  final pieChartSectionDatas = [
    PieChartSectionData(
      color: primaryColor,
      value: 25,
      showTitle: false,
      radius: 25,
    ),
    PieChartSectionData(
      color: Color(0xFF26E5FF),
      value: 20,
      showTitle: true,
      radius: 22,
    ),
    PieChartSectionData(
      color: Color(0xffa926ff),
      value: 10,
      showTitle: false,
      radius: 24,
    ),
    PieChartSectionData(
      color: Color(0xFFFF9b27),
      value: 15,
      showTitle: false,
      radius: 16,
    ),
    PieChartSectionData(
      color: primaryColor.withOpacity(0.1),
      value: 25,
      showTitle: false,
      radius: 20,
    ),
  ];
}
