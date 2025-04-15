import 'package:fitness_dashboard/util/responsive.dart';
import 'package:fitness_dashboard/widgets/HeaderWidget.dart';
import 'package:fitness_dashboard/widgets/activity_detailsCards.dart';
import 'package:fitness_dashboard/widgets/barGraph_Widget.dart';
import 'package:fitness_dashboard/widgets/lineChart_card.dart';
import 'package:fitness_dashboard/widgets/summary_widget.dart';
import 'package:flutter/material.dart';

class DashBoardWidget extends StatelessWidget {
  const DashBoardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: ListView(
        children: [
          SizedBox(height: 18),
          const hearderWidget(),
          SizedBox(height: 18),
          const activityDetailsCard(),
          SizedBox(height: 18),
          const lineChartCard(),
          SizedBox(height: 18),
          const barGraphCard(),
          SizedBox(height: 18),
          // se for no tablet screen passa esta widget
          if (Responsive.isTable(context)) const SummaryWidget(),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
