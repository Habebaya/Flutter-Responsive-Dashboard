import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/view/widget/course_info_card.dart';

import '../../constants.dart';
import 'chart.dart';

class MyAttendance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "My Attendance ",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: defaultPadding),
          const Chart(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    color: Colors.green[500],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text("Attend"),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    color: const Color(0xFFEE2727),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text("Didn't Attend"),
                ],
              ),
            ],
          ),
          const CourseInfoCard(
            title: "Course 1",
            numOfLecture: 18,
          ),
          const CourseInfoCard(
            title: "Course 2 ",
            numOfLecture: 18,
          ),
          const CourseInfoCard(
            title: "Course 3 ",
            numOfLecture: 18,
          ),
        ],
      ),
    );
  }
}
