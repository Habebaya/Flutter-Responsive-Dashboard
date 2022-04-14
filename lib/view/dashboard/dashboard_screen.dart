import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/Responsive.dart';
import 'package:flutter_responsive_dashboard/view/widget/my_attendance.dart';
import 'package:flutter_responsive_dashboard/view/widget/important_announcement.dart';
import 'package:flutter_responsive_dashboard/view/widget/midterm_schedule.dart';
import 'package:flutter_responsive_dashboard/view/widget/header.dart';

import '../../constants.dart';

class DashBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,

        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            const Header(),
            const SizedBox(height: defaultPadding),

            Divider(thickness: 2,color: Colors.white54,),
            const SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("Important Announcement",
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                          ],
                        ),
                        const SizedBox(height: defaultPadding),

                        ImportantAnnouncement(),
                        const SizedBox(height: defaultPadding),

                        MidtermSchedule(),
                        const SizedBox(height: defaultPadding),
                        if (Responsive.isMobile(context)) 
                          MyAttendance(),

                      ],
                    )),
                if (!Responsive.isMobile(context))
                  const SizedBox(height: defaultPadding),
                if (!Responsive.isMobile(context))
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MyAttendance(),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
