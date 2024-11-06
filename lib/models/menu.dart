import 'package:flutter/material.dart';
import 'package:template_flutter_beam/models/other.dart';

List<MenuItem> menuList = [
  MenuItem(title: 'Home', icon: Icons.home_outlined, children: [
    MenuChild(title: 'Launchpad', onTap: () {}, path: '/launchpad')
  ]),
  MenuItem(title: 'Overview Dashboard', icon: Icons.dashboard, children: [
    MenuChild(title: 'Dashboard', onTap: () {}, path: ''),
    MenuChild(title: 'Medication Cart Monitoring', onTap: () {}, path: '')
  ]),
  MenuItem(title: 'IoT Management', icon: Icons.wifi, children: [
    MenuChild(title: 'Medication Cart & Location', onTap: () {}, path: ''),
  ]),
  MenuItem(title: 'Master Data Management', icon: Icons.home, children: [
    MenuChild(title: 'Location', onTap: () {}, path: ''),
    MenuChild(title: 'Medication Cart', onTap: () {}, path: ''),
  ]),
  MenuItem(
      title: 'User Management',
      icon: Icons.account_circle_outlined,
      children: [
        MenuChild(title: 'User List', onTap: () {}, path: ""),
        MenuChild(title: 'User Permissions', onTap: () {}, path: ''),
      ]),
  MenuItem(title: 'Reports', icon: Icons.home, children: [
    MenuChild(title: 'Patient History', onTap: () {}, path: ''),
    MenuChild(title: 'Activity Logs', onTap: () {}, path: ''),
  ]),
];
