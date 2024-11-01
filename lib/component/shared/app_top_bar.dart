import 'package:flutter/material.dart';
import 'package:template_flutter_beam/main.dart';

class AppTopBar extends StatelessWidget {
  final String title;
  const AppTopBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).appColors.primaryMain,
      title: Text(title),
      automaticallyImplyLeading: false,
      flexibleSpace: Container(),
      elevation: 0,
      shape: const Border(
        bottom: BorderSide(width: 1, color: Colors.black12),
      ),
    );
  }
}
