import 'package:flutter/material.dart';
import 'package:template_flutter_beam/component/base/button.dart';
import 'package:template_flutter_beam/component/base/input_basic/input_base.dart';
import 'package:template_flutter_beam/component/base/input_basic/input_password.dart';
import 'package:template_flutter_beam/component/base/input_basic/input_select.dart';
import 'package:template_flutter_beam/layout.dart';
import 'package:template_flutter_beam/main.dart';

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override

  //Input State
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> onTap() async {
    print("Tab");
    if (_formKey.currentState!.validate()) {
      print("Test");
    }
  }

  List<SelectOption> options = [
    SelectOption(value: '1', label: 'Option 1'),
    SelectOption(value: '2', label: 'Option 2'),
    SelectOption(value: '3', label: 'Option 3'),
  ];

  SelectOption? _selectedOption;

  Widget build(BuildContext context) {
    return Layout(
        child: Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Button",
              style: Theme.of(context).appTexts.h5,
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Button(
                  name: "History",
                  width: 80,
                  color: Theme.of(context).appColors.stateError,
                  onTap: () {
                    print("test");
                  },
                ),
                const SizedBox(
                  width: 5,
                ),
                Button(
                  name: "History",
                  width: 80,
                  onTap: () {
                    print("test");
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Button(
                name: "History",
                color: Theme.of(context).appColors.gray6,
                onTap: onTap),
            const SizedBox(
              height: 5,
            ),
            Divider(
              thickness: 1,
              color: Theme.of(context).appColors.gray2,
            ),
            Text(
              "Input",
              style: Theme.of(context).appTexts.h5,
            ),
            const SizedBox(
              height: 5,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  InputBase(
                    controller: nameController,
                    inputType: TextInputType.text,
                    label: 'Name',
                    placeholder: "Input Name Here",
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'กรอกข้อมูล';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InputBase(
                    enabled: false,
                    controller: nameController,
                    inputType: TextInputType.text,
                    label: 'Name',
                    placeholder: "Input Name Here",
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'กรอกข้อมูล';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InputSelect(
                    optionList: options,
                    label: "Select Option",
                    placeholder: "Please Select",
                    selectedValue: _selectedOption,
                    onChanged: (value) {
                      setState(() {
                        _selectedOption = value;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InputPassword(
                    controller: passwordController,
                    inputType: TextInputType.text,
                    label: 'Password',
                    placeholder: "Password",
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'กรอกข้อมูล';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Button(
                      name: "Submit",
                      color: Theme.of(context).appColors.primaryMain,
                      onTap: onTap),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
