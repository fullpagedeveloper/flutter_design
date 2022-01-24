import 'package:flutter/material.dart';
import 'package:flutter_design/components/searchfield_widget.dart';
import 'package:flutter_design/components/sidebar_button.dart';

import '../constants.dart';

class HomeScreenNavBar extends StatelessWidget {
  HomeScreenNavBar({required this.trigerAnimation});

  final Function()? trigerAnimation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SidebarButton(
            trigerAnimation: trigerAnimation,
          ),
          SearchFieldWidget(),
          Icon(
            Icons.notifications,
            color: kPrimaryLabelColor,
          ),
          SizedBox(
            width: 16.0,
          ),
          CircleAvatar(
            radius: 18.0,
            backgroundImage: AssetImage('assets/images/profile.png'),
          )
        ],
      ),
    );
  }
}
