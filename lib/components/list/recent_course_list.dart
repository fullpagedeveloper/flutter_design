import 'package:flutter/cupertino.dart';
import 'package:flutter_design/components/card/recent_course_card.dart';
import 'package:flutter_design/model/course.dart';
import 'package:flutter/material.dart';

class RecentCourseList extends StatefulWidget {
  @override
  _RecentCourseListState createState() => _RecentCourseListState();
}

class _RecentCourseListState extends State<RecentCourseList> {
  List<Container> indicators = [];
  int currentPage = 0;

  Widget updateIndicators() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: recentCourse.map(
              (course) {
            var index = recentCourse.indexOf(course);
            return Container(
              width: 7.0,
              height: 7.0,
              margin: EdgeInsets.symmetric(horizontal: 6.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: currentPage == index
                    ? Color(0xFF0971FE)
                    : Color(0xFFA6AEBD),
              ),
            );
          },
        ).toList());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 320,
          width: double.infinity,
          child: PageView.builder(
              itemBuilder: (context, index) {
                return Opacity(
                  opacity: currentPage == index ? 1.0 : 0.5,
                  child: RecentCourseCard(
                    course: recentCourse[index],
                  ),
                );
              },
              itemCount: recentCourse.length,
              controller:
              PageController(initialPage: 0, viewportFraction: 0.63),
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              }),
        ),
        updateIndicators(),
      ],
    );
  }
}