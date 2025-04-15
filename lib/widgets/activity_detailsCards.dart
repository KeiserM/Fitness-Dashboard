import 'package:fitness_dashboard/util/responsive.dart';
import 'package:fitness_dashboard/widgets/customCard_Widget.dart';
import 'package:flutter/material.dart';
import '../data/health_details.dart';

class activityDetailsCard extends StatelessWidget {
  const activityDetailsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final healthDetails = HealthDetails();

    return GridView.builder(
      itemCount: healthDetails.healthData.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          // so para tornar a grid responsiva.
          crossAxisCount: Responsive.isMobile(context) ? 2 : 4,
          crossAxisSpacing: Responsive.isMobile(context) ? 12 : 15,
          mainAxisSpacing: 12),
      itemBuilder: (context, index) => customCard(
          child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(healthDetails.healthData[index].icon,
                width: 30, height: 30),
            Padding(
              padding: EdgeInsets.only(top: 15, bottom: 4),
              child: Text(
                healthDetails.healthData[index].value,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Text(
              healthDetails.healthData[index].title,
              style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                  fontWeight: FontWeight.normal),
            ),
          ],
        ),
      )),
    );
  }
}
