import 'package:fitness_dashboard/const/constant.dart';
import 'package:fitness_dashboard/widgets/pieChart_Widget.dart';
import 'package:fitness_dashboard/widgets/scheduled_widget.dart';
import 'package:fitness_dashboard/widgets/summaryDetails_widget.dart';
import 'package:flutter/material.dart';

class SummaryWidget extends StatelessWidget {
  const SummaryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: cardBackgroundColor,
      ),
      child: Column(
        children: [
          SizedBox(height: 40),
          Chart(),
          Padding(padding: EdgeInsets.all(20), child: SummaryDetails()),
          SizedBox(height: 40),
          Scheduled(),
        ],
      ),
    );
  }
}
