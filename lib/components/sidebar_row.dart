import 'package:flutter_design/constants.dart';
import 'package:flutter_design/model/sidebar_items.dart';
import 'package:flutter/material.dart';

class SidebarRow extends StatelessWidget {
  SidebarRow({required this.item});

  final SidebarItem item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 42.0,
          height: 42.0,
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14.0),
            gradient: item.background,
          ),
          child: item.icon,
        ),
        const SizedBox(
          width: 12,
        ),
        Container(
          child: Text(
            item.title,
            style: kCalloutLabelStyle
          ),
        ),
      ],
    );
  }
}
