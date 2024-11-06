import 'package:flutter/material.dart';
import 'package:template_flutter_beam/layout.dart';
import 'package:template_flutter_beam/main.dart';

class Launchpad extends StatefulWidget {
  const Launchpad({super.key});

  @override
  State<Launchpad> createState() => _LaunchpadState();
}

class _LaunchpadState extends State<Launchpad> {
  @override
  Widget build(BuildContext context) {
    return Layout(
        child: Container(
      decoration: BoxDecoration(color: Theme.of(context).appColors.gray3),
      width: double.infinity,
      child: Text("Launchpad"),
    ));
  }
}
