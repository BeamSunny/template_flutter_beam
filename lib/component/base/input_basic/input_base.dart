import 'package:flutter/material.dart';
import 'package:template_flutter_beam/main.dart';

class InputBase extends StatefulWidget {
  final String? label;
  final String? placeholder;

  final TextEditingController controller;
  final TextInputType inputType;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final String? Function(String?) validator;
  final bool? enabled;

  const InputBase(
      {super.key,
      this.label,
      this.placeholder,
      required this.controller,
      required this.inputType,
      required this.validator,
      this.prefixIcon,
      this.suffixIcon,
      this.enabled});

  @override
  State<InputBase> createState() => _InputBaseState();
}

class _InputBaseState extends State<InputBase> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label!,
          style: Theme.of(context).appTexts.subtitle,
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          enabled: widget.enabled,
          controller: widget.controller,
          keyboardType: widget.inputType,
          style: Theme.of(context)
              .appTexts
              .subtitle
              .copyWith(fontWeight: FontWeight.normal),
          decoration: InputDecoration(
              prefixIcon: widget.prefixIcon,
              suffixIcon: widget.suffixIcon,
              hintText: widget.placeholder,
              floatingLabelBehavior: FloatingLabelBehavior.never,
              border: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Theme.of(context).appColors.gray3),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Theme.of(context).appColors.primaryMain),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Theme.of(context).appColors.stateError, width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              errorStyle: Theme.of(context).appTexts.body),
          validator: widget.validator,
        ),
      ],
    );
  }
}
