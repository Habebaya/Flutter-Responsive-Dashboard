import 'package:flutter/material.dart';

import '../constants.dart';

class MidtermScheduleInfo {
  final String?  title;
  final Color? color;

  MidtermScheduleInfo({
    this.title,
    this.color,
  });
}

List demoMyFiles = [
  MidtermScheduleInfo(
    title: "Business Administration",
    color: primaryColor,
  ),
  MidtermScheduleInfo(
    title: "Business Information Technology",
    color: primaryColor,
  ),
  MidtermScheduleInfo(
    title: "Engineering",
    color: primaryColor,
  ),
  MidtermScheduleInfo(
    title: "Mass Communication",
    color: Color(0xFFFFA113),
  ),
  MidtermScheduleInfo(
    title: "Computer science ",

  ),

];
