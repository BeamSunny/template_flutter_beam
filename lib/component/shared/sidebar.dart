import 'package:flutter/material.dart';
import 'package:template_flutter_beam/main.dart';
import 'package:template_flutter_beam/models/menu.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        elevation: 1.5,
        backgroundColor: Theme.of(context).appColors.white,
        child: Column(children: [
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
          ),
          Expanded(
              child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Expanded(
                  child: Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      width: double.infinity,
                      child: Text(
                        "OVERVIEW",
                        style: Theme.of(context).appTexts.subtitle.copyWith(
                              color: Theme.of(context).appColors.gray1,
                            ),
                      ),
                    ),
                    ...menuList.map((data) {
                      return ExpansionTile(
                        shape: const Border(),
                        trailing: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Theme.of(context).appColors.gray1,
                        ),
                        title: Row(
                          children: [
                            Icon(
                              data.icon,
                              size: 24,
                              color: Theme.of(context).appColors.gray1,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              data.title,
                              style: Theme.of(context).appTexts.subtitle,
                            ),
                          ],
                        ),
                        children: [
                          ...data.children.map((child) {
                            return Builder(
                              builder: (BuildContext context) {
                                return ListTile(
                                  contentPadding:
                                      const EdgeInsets.only(left: 45),
                                  dense: true,
                                  onTap: child.onTap,
                                  title: Text(
                                    child.title,
                                    style: Theme.of(context)
                                        .appTexts
                                        .subtitle
                                        .copyWith(
                                            fontWeight: FontWeight.normal),
                                  ),
                                );
                              },
                            );
                          })
                        ],
                      );
                    }),
                  ],
                ),
              )),
            ],
          )),
          SizedBox(
            width: double.infinity,
            child: SafeArea(
                top: false,
                child: Column(
                  children: [
                    Divider(
                      thickness: 1,
                      color: Theme.of(context).appColors.gray3,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "SETTING",
                            style: Theme.of(context).appTexts.subtitle.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).appColors.gray1),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              print("setting page");
                            },
                            child: Row(
                              children: [
                                Icon(
                                  Icons.settings_outlined,
                                  size: 24,
                                  color: Theme.of(context).appColors.gray1,
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  "Setting",
                                  style: Theme.of(context).appTexts.subtitle,
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              print("Logout");
                            },
                            child: Row(
                              children: [
                                Icon(
                                  Icons.logout,
                                  size: 24,
                                  color: Theme.of(context).appColors.stateError,
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  "Logout",
                                  style: Theme.of(context)
                                      .appTexts
                                      .subtitle
                                      .copyWith(
                                          color: Theme.of(context)
                                              .appColors
                                              .stateError),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: Theme.of(context).appColors.gray3,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "APP VERSION",
                            style: Theme.of(context).appTexts.subtitle.copyWith(
                                  color: Theme.of(context).appColors.gray1,
                                ),
                          ),
                          Text(
                            "1.0.1",
                            style: Theme.of(context).appTexts.subtitle.copyWith(
                                  color: Theme.of(context).appColors.gray1,
                                ),
                          ),
                        ],
                      ),
                    )
                  ],
                )),
          ),
        ]));
  }
}
