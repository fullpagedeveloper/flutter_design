import 'package:flutter/material.dart';
import 'package:flutter_design/model/course.dart';

import 'components/card/recent_course_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: RecentCourseCard(
              course: recentCourse[0],
            ),
          ),
        ),
      ),
    );
  }
}
