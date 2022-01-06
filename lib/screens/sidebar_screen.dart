import 'package:flutter/material.dart';
import 'package:flutter_design/components/sidebar_row.dart';
import 'package:flutter_design/model/sidebar_items.dart';

import '../constants.dart';

class SidebarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: kSidebarBackgroundColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(34.0),
        ),
      ),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.85,
      padding: const EdgeInsets.symmetric(
        vertical: 35.0,
        horizontal: 20.0,
      ),
      child: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profile.png'),
                  radius: 21.0,
                ),
                const SizedBox(
                  width: 15.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "FullSteak Developer",
                      style: kHeadlineLabelStyle,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      "License ends on 5 January 2022",
                      style: kSearchPlaceholderStyle,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            SidebarRow(
              item: sidebarItem[0],
            ),
            const SizedBox(
              height: 32.0,
            ),
            SidebarRow(
              item: sidebarItem[1],
            ),
            const SizedBox(
              height: 32.0,
            ),
            SidebarRow(
              item: sidebarItem[2],
            ),
            const SizedBox(
              height: 32.0,
            ),
            SidebarRow(
              item: sidebarItem[3],
            ),
            const SizedBox(
              height: 32.0,
            ),
            const Spacer(),
            Row(
              children: [
                Image.asset(
                  'assets/icons/icon-logout.png',
                  width: 17.0,
                ),
                const SizedBox(
                  width: 12.0,
                ),
                Text(
                  "Log out",
                  style: kSecondaryCalloutLabelStyle,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
