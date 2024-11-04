import 'package:flutter/material.dart';
import 'package:template_flutter_beam/layout.dart';

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: const Layout(
          child: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [Text("Test")],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
