import 'package:flutter/material.dart';
import 'package:template_flutter_beam/main.dart';

class InputPassword extends StatefulWidget {
  final String? label;
  final String? placeholder;

  final TextEditingController controller;
  final TextInputType inputType;
  final String? Function(String?) validator;

  const InputPassword({
    super.key,
    this.label,
    this.placeholder,
    required this.controller,
    required this.inputType,
    required this.validator,
  });

  @override
  State<InputPassword> createState() => _InputPasswordState();
}

class _InputPasswordState extends State<InputPassword> {
  bool _passwordVisible = false;

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
          obscureText: !_passwordVisible,
          controller: widget.controller,
          keyboardType: widget.inputType,
          style: Theme.of(context)
              .appTexts
              .subtitle
              .copyWith(fontWeight: FontWeight.normal),
          decoration: InputDecoration(
              suffixIcon: GestureDetector(
                  child: Icon(_passwordVisible
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined),
                  onTap: () {
                    setState(() {
                      _passwordVisible = !_passwordVisible;
                    });
                  }),
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
