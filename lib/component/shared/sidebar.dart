import 'package:flutter/material.dart';
import 'package:template_flutter_beam/main.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 160,
            color: Theme.of(context).appColors.primaryMain,
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
            child: SafeArea(
                bottom: false,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.account_circle,
                          size: 35,
                          color: Theme.of(context).appColors.white,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "พว.วรรณา ศิริพฤกพงค์",
                              style: Theme.of(context).appTexts.h5.copyWith(
                                    color: Theme.of(context).appColors.white,
                                  ),
                            ),
                            Text(
                              "วันที่ 23/11/2022 เวลา 10.13 น.",
                              style: Theme.of(context).appTexts.bodySm.copyWith(
                                    color: Theme.of(context).appColors.white,
                                  ),
                            )
                          ],
                        )
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Scaffold.of(context).closeDrawer();
                      },
                      child: Icon(
                        Icons.close,
                        size: 30,
                        color: Theme.of(context).appColors.white,
                      ),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
