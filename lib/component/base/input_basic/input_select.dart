import 'package:flutter/material.dart';
import 'package:template_flutter_beam/main.dart';

class SelectOption {
  final String value;
  final String label;

  SelectOption({required this.value, required this.label});
}

class InputSelect extends StatelessWidget {
  final String? label;
  final String? placeholder;

  final SelectOption? selectedValue;
  final FormFieldValidator<SelectOption>? validator;
  final ValueChanged<SelectOption?>? onChanged;

  final List<SelectOption> optionList;
  const InputSelect(
      {super.key,
      required this.optionList,
      this.label,
      this.placeholder,
      this.validator,
      this.onChanged,
      this.selectedValue});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label!,
          style: Theme.of(context).appTexts.subtitle,
        ),
        const SizedBox(
          height: 8,
        ),
        DropdownButtonFormField(
          icon: const Icon(Icons.keyboard_arrow_down),
          decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.never,
              labelText: placeholder,
              labelStyle: Theme.of(context)
                  .appTexts
                  .subtitle
                  .copyWith(fontWeight: FontWeight.normal),
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
          // value: ,
          value: selectedValue,
          items: optionList.map((option) {
            final bool isSelected = option.value == selectedValue?.value;
            return DropdownMenuItem(
              value: option,
              child: Text(
                option.label,
                style: Theme.of(context).appTexts.subtitle.copyWith(
                    fontWeight:
                        isSelected ? FontWeight.bold : FontWeight.normal,
                    color: isSelected
                        ? Theme.of(context).appColors.primaryMain
                        : Theme.of(context).appColors.text),
              ),
            );
          }).toList(),
          selectedItemBuilder: (con) {
            return optionList.map((val) {
              return Text(
                val.label,
                style: Theme.of(context).appTexts.body,
              );
            }).toList();
          },
          onChanged: onChanged,
          validator: validator,
        ),
      ],
    );
    ;
  }
}
