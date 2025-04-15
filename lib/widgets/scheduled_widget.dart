import 'package:fitness_dashboard/data/schedule_task_data.dart';
import 'package:fitness_dashboard/widgets/customCard_Widget.dart';
import 'package:flutter/material.dart';

class Scheduled extends StatelessWidget {
  const Scheduled({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = ScheduleTaskData();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Scheduled",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 12),
          for (var index = 0; index < data.scheduled.length; index++)
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: customCard(
                color: Colors.black,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data.scheduled[index].title,
                              style: const TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 2),
                            Text(
                              data.scheduled[index].data,
                              style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        const Icon(Icons.more),
                      ],
                    )
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
