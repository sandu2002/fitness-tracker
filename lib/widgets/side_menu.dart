import 'package:fitness_tracker/constants/colors.dart';
import 'package:fitness_tracker/data/side_menu_data.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  @override
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  //index tracker
  int selectedindex = 0;
  final sideMenuData = SideMenuData();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 80),
      child: Container(
        color: backgroundColor,
        child: ListView.builder(
          itemCount: sideMenuData.sideMenu.length,
          itemBuilder: (context, index) {
            return sideMenuList(sideMenuData, index);
          },
        ),
      ),
    );
  }

  Widget sideMenuList(SideMenuData sideMenuData, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedindex = index;
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6), color: selectedindex == index? selectionColor : Colors.transparent),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(
                sideMenuData.sideMenu[index].icon,
                color:selectedindex == index? backgroundColor : greyColor ,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                sideMenuData.sideMenu[index].title,
                style: TextStyle(color:selectedindex == index? backgroundColor : greyColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
