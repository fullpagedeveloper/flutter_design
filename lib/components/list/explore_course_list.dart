import 'package:flutter/material.dart';
import 'package:flutter_design/components/card/explore_course_card.dart';
import 'package:flutter_design/model/course.dart';

class ExploreCourseList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: exploreCourse.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(left: index == 0 ? 20.0 : 0.0),
              child: ExploreCourseCard(course: exploreCourse[index]),
            );
          }),
    );
  }
}