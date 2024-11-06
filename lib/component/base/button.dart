import 'package:flutter/material.dart';
import 'package:template_flutter_beam/main.dart';

class Button extends StatelessWidget {
  final String name;
  final Color? color;
  final Color? textColor;
  final void Function() onTap;
  final double? width;

  const Button(
      {super.key,
      required this.name,
      this.color,
      this.textColor,
      required this.onTap,
      this.width});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: width ?? double.infinity,
        decoration: BoxDecoration(
            color: color ?? Theme.of(context).appColors.primaryMain,
            borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
        child: Text(
          name,
          style: Theme.of(context)
              .appTexts
              .subtitle
              .copyWith(color: textColor ?? Theme.of(context).appColors.white),
        ),
      ),
    );
  }
}
