import 'package:flutter/material.dart';

import '../constants.dart';

class AnnouncementInfo {
  final String?  title,subTitle,body;

  AnnouncementInfo({
    this.title,
    this.subTitle,
    this.body
  });
}

List dummyAnnouncement = [
  AnnouncementInfo(
    title: "Important",
    subTitle: "",
    body:"s simply dummy text of the printing and typesetting industry. Lorem Ipsum "
        "has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type "
        "and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap "
        "into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s "
        "with the release of Letraset sheets containing Lorem Ipsum passages,"
        " and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
  ),
  AnnouncementInfo(
      title: "Dear Student",
      subTitle: "",
      body:"s simply dummy text of the printing and typesetting industry. Lorem Ipsum "
          "has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type "
          "and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap "
          "into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s "
          "with the release of Letraset sheets containing Lorem Ipsum passages,"
          " and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
  ),
  AnnouncementInfo(
      title: "New Comers Fall 2022",
      subTitle: "",
      body: "s simply dummy text of the printing and typesetting industry. Lorem Ipsum "
          "has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type "
          "and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap "
          "into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s "
          "with the release of Letraset sheets containing Lorem Ipsum passages,"
          " and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
  ),

];
