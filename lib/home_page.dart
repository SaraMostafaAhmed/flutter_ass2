import 'package:flutter/material.dart';
import 'package:flutter_ass2/core/colors.dart';
import 'package:flutter_ass2/course_details.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: AppColor.primary ,fontFamily: "HelveticaNeue"),
      home: CourseDetails(),

    );
  }
}
