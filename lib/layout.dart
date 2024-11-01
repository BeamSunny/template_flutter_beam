import 'package:flutter/material.dart';
import 'package:template_flutter_beam/component/shared/app_top_bar.dart';

class Layout extends StatelessWidget {
  final Widget child;

  const Layout({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: const PreferredSize(
      //     preferredSize: Size.fromHeight(100.0), // here the desired height
      //     child: AppTopBar(
      //       title: '1111111',
      //     )),
      body: SafeArea(child: child),

      // bottomSheet: const Footer(),
    );
  }
}
