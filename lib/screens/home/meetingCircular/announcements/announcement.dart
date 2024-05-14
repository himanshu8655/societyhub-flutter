import 'package:ambica/routes/routes.dart';
import 'package:ambica/screens/home/meetingCircular/controllers/meetingCircularController.dart';
import 'package:ambica/widgets/basePage/appBasePage.dart';
import 'package:ambica/widgets/dateText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

import '../meetings/meetDetailBasePage.dart';

class Announcement extends GetView<MeetingCircularController> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (context, index) => Divider(
        color: AppColors.blackLV,
      ),
      itemCount: 3,
      itemBuilder: (context, index) => InkWell(
        onTap: () {
          controller.onMeetCircularPageChange(AppStrings.ANNOUNCEMENT_DETAIL_PAGE);
          controller.onTitleChange(AppStrings.announcements);

        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: Dimens.screenWidth / 2,
              child: Text(
                AppStrings.loremIpsum,
                style: Styles.tsROpenSansBlack1Bold14,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            DateText(text: AppStrings.dummyText)
          ],
        ).paddingSymmetric(horizontal: Dimens.appPadding),
      ),
    );
  }
}
