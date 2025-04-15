import 'package:fitness_dashboard/widgets/customCard_Widget.dart';
import 'package:flutter/material.dart';

class SummaryDetails extends StatelessWidget {
  const SummaryDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return customCard(
        color: const Color(0xFF2F353E),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildDetails("Cal", "305"),
            buildDetails("Steps", "10983"),
            buildDetails("Distance", "7km"),
            buildDetails("Sleep", "7hr"),
          ],
        ));
  }

  Widget buildDetails(String key, String value) {
    return Column(
      children: [
        Text(key, style: const TextStyle(fontSize: 11, color: Colors.grey)),
        SizedBox(height: 2),
        Text(value, style: const TextStyle(fontSize: 14)),
      ],
    );
  }
}
