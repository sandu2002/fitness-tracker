import 'package:fitness_tracker/models/side_menu_model.dart';
import 'package:flutter/material.dart';

class SideMenuData {
  final sideMenu = <SideMenuModel>[
    SideMenuModel(icon: Icons.home, title: 'Dashboard'),
    SideMenuModel(icon: Icons.person, title: 'Profile'),
    SideMenuModel(icon: Icons.run_circle, title: 'Exersice'),
    SideMenuModel(icon: Icons.settings, title: 'Settings'),
    SideMenuModel(icon: Icons.history, title: 'History'),
    SideMenuModel(icon: Icons.logout, title: 'SignOut'),
  ];
}