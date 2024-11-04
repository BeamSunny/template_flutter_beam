import 'package:flutter/material.dart';

//For App Bar
class FindPath {
  String pathname;
  String heading;
  String? parentPath;
  String? description;

  FindPath(
      {required this.pathname,
      required this.heading,
      this.parentPath,
      this.description});
}

List<FindPath> pathList = [FindPath(pathname: '/', heading: 'Demo')];

//For Side Bar
class MenuChild {
  final String title;
  final void Function() onTap;

  MenuChild({
    required this.title,
    required this.onTap,
  });
}

class MenuItem {
  final String title;
  final IconData icon;
  final List<MenuChild> children;

  MenuItem({required this.title, required this.icon, required this.children});
}
