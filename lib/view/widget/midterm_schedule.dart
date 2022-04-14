
import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/models/midterm_schedule.dart';
import 'package:flutter_responsive_dashboard/view/widget/midterm_schedule_card.dart';

import '../../Responsive.dart';
import '../../constants.dart';

class MidtermSchedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Midterm Schedule ",
              style: Theme.of(context).textTheme.subtitle1,
            ),

          ],
        ),
        SizedBox(height: defaultPadding),
        Responsive(
          mobile: FileInfoCardGridView(
            crossAxisCount: _size.width < 650 ? 1 : 1,
            childAspectRatio: _size.width < 650 && _size.width > 350 ? 6 : 6,
          ),
          tablet: FileInfoCardGridView(
          ),
          desktop: FileInfoCardGridView(
            crossAxisCount: _size.width < 1400  ? 2 : 2,
            childAspectRatio: _size.width < 1400 ? 5 : 5 ,
          ),
        ),
      ],
    );
  }
}

class FileInfoCardGridView extends StatelessWidget {
  const FileInfoCardGridView({
    Key? key,
    this.crossAxisCount = 1,
    this.childAspectRatio = 8,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoMyFiles.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) => AnnouncementCard(info: demoMyFiles[index]),
    );
  }

}
