import 'package:flutter/material.dart';
import 'package:template_flutter_beam/main.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      color: Theme.of(context).appColors.primaryMain,
      alignment: Alignment.center,
      child: Text(
        'Footer',
        style: Theme.of(context).appTexts.bodySm.copyWith(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).appColors.white,
            ),
      ),
    );
  }
}
