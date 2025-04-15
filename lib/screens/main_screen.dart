import 'package:fitness_dashboard/util/responsive.dart';
import 'package:fitness_dashboard/widgets/dashboard_widget.dart';
import 'package:fitness_dashboard/widgets/side_menu_widget.dart';
import 'package:fitness_dashboard/widgets/summary_widget.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDesketop = Responsive.isDesktop(context);
    return Scaffold(
      //criar um sidemenu que so sera visivel se clicarmos num icon que esta no HeaderWidget
      //verica se nao for um Desktop Screen entao vai aparecer o side menu, se for flaso enao null.
      drawer: !isDesketop
          ? const SizedBox(width: 250, child: sideMenuWidget())
          : null,
      endDrawer: Responsive.isMobile(context)
          ? SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: SummaryWidget())
          : null,
      body: SafeArea(
        //para que o UI este Horizontalmente
        child: Row(
          children: [
            // so vai estar visivel se for Desketop Screen
            if (isDesketop)
              //vai ajudar acom seja responsivo
              Expanded(
                flex: 2,
                child: SizedBox(
                  child: sideMenuWidget(),
                ),
              ),
            Expanded(
              flex: 7,
              child: DashBoardWidget(),
            ),
            if (isDesketop)
              Expanded(
                flex: 3,
                child: SummaryWidget(),
              ),
          ],
        ),
      ),
    );
  }
}
