import 'package:flutter/material.dart';
import 'package:template_flutter_beam/models/other.dart';

List<MenuItem> menuList = [
  MenuItem(
      title: 'Home',
      icon: Icons.home_outlined,
      children: [MenuChild(title: 'Launchpad', onTap: () {})]),
  MenuItem(title: 'Overview Dashboard', icon: Icons.dashboard, children: [
    MenuChild(title: 'Dashboard', onTap: () {}),
    MenuChild(title: 'Medication Cart Monitoring', onTap: () {})
  ]),
  MenuItem(title: 'IoT Management', icon: Icons.wifi, children: [
    MenuChild(title: 'Medication Cart & Location', onTap: () {}),
  ]),
  MenuItem(title: 'Master Data Management', icon: Icons.home, children: [
    MenuChild(title: 'Location', onTap: () {}),
    MenuChild(title: 'Medication Cart', onTap: () {}),
  ]),
  MenuItem(
      title: 'User Management',
      icon: Icons.account_circle_outlined,
      children: [
        MenuChild(title: 'User List', onTap: () {}),
        MenuChild(title: 'User Permissions', onTap: () {}),
      ]),
  MenuItem(title: 'Reports', icon: Icons.home, children: [
    MenuChild(title: 'Patient History', onTap: () {}),
    MenuChild(title: 'Activity Logs', onTap: () {}),
  ]),
];
