import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_design/constants.dart';
import 'package:flutter_design/model/course.dart';
import 'components/home_screen_navbar.dart';
import 'components/list/recent_course_list.dart';
import 'components/searchfield_widget.dart';
import 'components/sidebar_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          color: kBackgroundColor,
          child: SafeArea(
            child: Column(
              children: [
                HomeScreenNavBar(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Recents",
                        style: kLargeTitleStyle,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "23 course, more coming",
                        style: kSubtitleStyle,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                RecentCourseList(),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.0,
                    right: 20.0,
                    top: 25.0,
                    bottom: 16.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Explore",
                        style: kTitle1Style,
                      ),
                    ],
                  ),
                ),
                ExploreCourseList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

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

class ExploreCourseCard extends StatelessWidget {
  ExploreCourseCard({required this.course});

  final Course course;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(41.0),
        child: Container(
          height: 120.0,
          width: 280.0,
          decoration: BoxDecoration(gradient: course.background),
          child: Padding(
            padding: EdgeInsets.only(left: 32.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        course.courseSubtitle,
                        style: kCardSubtitleStyle,
                      ),
                      SizedBox(
                        height: 6.0,
                      ),
                      Text(course.courseTitle),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/illustrations/${course.illustration}',
                      fit: BoxFit.cover,
                      height: 100.0,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
