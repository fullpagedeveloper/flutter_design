import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: RecentCourseCard(),
          ),
        ),
      ),
    );
  }
}

class RecentCourseCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}