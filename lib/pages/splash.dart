import 'dart:async';

import 'package:flutter/material.dart';
import 'package:template_flutter_beam/main.dart';
import 'package:go_router/go_router.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  double boxSize = 150;
  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 500), () async {
      // context.go('/');
      // setState(() {
      //   // boxSize = 300;
      //   _isExpanded = !_isExpanded;
      // });
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Theme.of(context).appColors.primaryMain,
              Theme.of(context).appColors.stateInfo
            ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _isExpanded = !_isExpanded;
                    });
                  },
                  child: AnimatedContainer(
                    width: _isExpanded ? 250 : 150,
                    height: _isExpanded ? 250 : 150,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage(
                            'assets/images/commons/logo.png',
                          ),
                          alignment: Alignment.center),
                      color: Theme.of(context).appColors.white,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut, // Smooths the transition
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "HealthCraft",
                  style: Theme.of(context).appTexts.h1.copyWith(
                      color: Theme.of(context).appColors.white, height: 0.8),
                ),
                Text(
                  "Medication Cart Monitoring",
                  style: Theme.of(context).appTexts.h4.copyWith(
                      fontWeight: FontWeight.normal,
                      color: Theme.of(context).appColors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
    // return Scaffold(
    //   body: Stack(children: [
    // Container(
    //   width: double.infinity,
    //   decoration: BoxDecoration(
    //       gradient: LinearGradient(colors: [
    //     Theme.of(context).appColors.primaryMain,
    //     Theme.of(context).appColors.stateInfo
    //   ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
    // ),
    //     Center(
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           AnimatedContainer(
    //             duration: const Duration(microseconds: 500),
    //             curve: Curves.easeInOut,
    //             child: Container(
    //                 alignment: Alignment.center,
    //                 width: _isExpanded ? 200 : 150,
    //                 height: _isExpanded ? 200 : 150,
    //                 decoration: BoxDecoration(
    //                   image: const DecorationImage(
    //                       image: AssetImage('assets/images/commons/logo.png'),
    //                       alignment: Alignment.center),
    //                   color: Theme.of(context).appColors.white,
    //                   borderRadius: BorderRadius.circular(40),
    //                 )),
    //           ),
    // const SizedBox(
    //   height: 20,
    // ),
    // Text(
    //   "HealthCraft",
    //   style: Theme.of(context).appTexts.h1.copyWith(
    //       color: Theme.of(context).appColors.white, height: 0.8),
    // ),
    // Text(
    //   "Medication Cart Monitoring",
    //   style: Theme.of(context).appTexts.h4.copyWith(
    //       fontWeight: FontWeight.normal,
    //       color: Theme.of(context).appColors.white),
    // ),
    //         ],
    //       ),
    //     )
    //   ]),
    // );
  }
}
