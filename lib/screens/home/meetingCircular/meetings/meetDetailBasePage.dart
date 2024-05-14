import 'package:ambica/screens/home/meetingCircular/announcements/announceDetail.dart';
import 'package:ambica/screens/home/meetingCircular/meetings/meetingDetail.dart';
import 'package:ambica/widgets/basePage/appBasePage.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

class MeetDetailBasePage extends StatelessWidget {
  final bool meetDetail;
  MeetDetailBasePage({required this.meetDetail});
  @override
  Widget build(BuildContext context) {
    return AppBasePage(
      title: Text(
        meetDetail ? AppStrings.meetDetail : AppStrings.announcements,
        style: Styles.tsRalewayWhiteSemiBold15,
      ),
      body: [
        meetDetail ? MeetingDetail() : AnnounceDetail(),
      ],
    );
  }
}
