import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../constants.dart';

class ContinuewWatchingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      backdropEnabled: true,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(43.0),
      ),
      boxShadow: [
        BoxShadow(
            color: kShadowColor, offset: Offset(0, -12), blurRadius: 32.0),
      ],
      minHeight: 85.0,
      maxHeight: MediaQuery.of(context).size.height * 0.75,
      color: kCardPopupBackgroundColor,
      panel: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 12.0, bottom: 16.0),
              child: Container(
                height: 4.0,
                width: 42.0,
                decoration: BoxDecoration(
                  color: Color(0xFFC5CBD6),
                  borderRadius: BorderRadius.circular(2.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.0),
            child: Text("Continue Watching", style: kTitle2Style,),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.0),
            child: Text("Certiificates", style: kTitle2Style,),
          ),
        ],
      ),
    );
  }
}
