import 'package:flutter/material.dart';
import 'package:template_flutter_beam/main.dart';

class AppTopBar extends StatelessWidget {
  final String title;
  final String description;
  const AppTopBar({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(100.0),
      child: AppBar(
        toolbarHeight: 100,
        backgroundColor: Theme.of(context).appColors.primaryMain,
        title: Column(
          children: [
            Text(
              title,
              style: Theme.of(context)
                  .appTexts
                  .h4
                  .copyWith(color: Theme.of(context).appColors.white),
            ),
            Text(
              description,
              style: Theme.of(context)
                  .appTexts
                  .body
                  .copyWith(color: Theme.of(context).appColors.white),
            ),
          ],
        ),
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/commons/bg.png'),
                  fit: BoxFit.fitHeight,
                  alignment: Alignment.bottomRight)),
        ),
        elevation: 0,
        leading: GestureDetector(
          child: IconButton(
            iconSize: 30,
            color: Theme.of(context).appColors.white,
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(Icons.menu),
          ),
        ),
        shape: const Border(
          bottom: BorderSide(width: 1, color: Colors.black12),
        ),
      ),
    );
  }
}
