import 'package:flutter/material.dart';
import 'package:template_flutter_beam/main.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      color: Theme.of(context).appColors.primaryMain,
      alignment: Alignment.center,
      child: Text(
        "Version 0.1.1",
        style: Theme.of(context).appTexts.body.copyWith(
              color: Theme.of(context).appColors.white,
            ),
      ),
    );
  }
}
