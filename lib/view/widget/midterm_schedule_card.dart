import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/models/midterm_schedule.dart';

import '../../../constants.dart';

class AnnouncementCard extends StatelessWidget {
  const AnnouncementCard({
    Key? key,
    required this.info,
  }) : super(key: key);

  final MidtermScheduleInfo info;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                info.title!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),

              Icon(Icons.more_vert, color: Colors.white54)
            ],
          ),


        ],
      ),
    );
  }
}

