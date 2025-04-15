import 'package:fitness_dashboard/const/constant.dart';
import 'package:fitness_dashboard/data/side_menu_data.dart';
import 'package:flutter/material.dart';

class sideMenuWidget extends StatefulWidget {
  const sideMenuWidget({Key? key}) : super(key: key);

  @override
  State<sideMenuWidget> createState() => _sideMenuWidgetState();
}

class _sideMenuWidgetState extends State<sideMenuWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final data = SideMenuData();

    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
      ),
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      child: ListView.builder(
        itemCount: data.menu.length,
        itemBuilder: (context, index) => buildMenuEntry(data, index),
      ),
    );
  }

  Widget buildMenuEntry(SideMenuData data, int index) {
    bool isSelected = selectedIndex == index;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: isSelected ? selectionColor : Colors.transparent,
      ),
      child: InkWell(
        onTap: () => setState(() {
          selectedIndex = index;
        }),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
              child: Icon(
                data.menu[index].icon,
                color: isSelected ? Colors.black : Colors.grey,
              ),
            ),
            Text(
              data.menu[index].title,
              style: TextStyle(
                  fontSize: 16,
                  color: isSelected ? Colors.black : Colors.grey,
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal),
            )
          ],
        ),
      ),
    );
  }

  // Widget para o Switch do Dark/Light Mode
  Widget buildSwitch() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Icon(Icons.brightness_6),
          Switch(
            value: Theme.of(context).brightness == Brightness.light,
            onChanged: (bool value) {
              //widget.onModeChanged(value);
            },
            activeColor: Colors.blue,
            inactiveThumbColor: Colors.grey,
          ),
          Icon(Icons.nightlight_round),
        ],
      ),
    );
  }
}
