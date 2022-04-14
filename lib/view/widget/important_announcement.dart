import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/Responsive.dart';
import 'package:flutter_responsive_dashboard/models/announcement.dart';

import '../../constants.dart';

class ImportantAnnouncement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
          itemCount: dummyAnnouncement.length,
          itemBuilder: (ctx, index) {
            return ImportantAnnouncementCard(dummyAnnouncement[index]);
          }


      ),
    );
  }
}

class ImportantAnnouncementCard extends StatelessWidget {
  final AnnouncementInfo info;


  ImportantAnnouncementCard(this.info);

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
            Center(child: Text(
              info.title!, style: const TextStyle(fontSize: 18, color: Colors.red),)),
            const SizedBox(height: defaultPadding,),

            Center(child: Text(info.subTitle!,
              style: const TextStyle(fontSize: 18, color: Colors.red),)),

            const SizedBox(height: defaultPadding,),

            Text(info.body!
              , maxLines: 3,)
          ],
        ));
  }
}
