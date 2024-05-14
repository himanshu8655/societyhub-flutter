import 'package:ambica/screens/home/cardView/cvMeeting.dart';
import 'package:ambica/screens/home/cardView/cvDialogBox.dart';
import 'package:ambica/screens/home/meetingCircular/controllers/meetingCircularController.dart';
import 'package:ambica/utilities/storage.dart';
import 'package:ambica/widgets/basePage/appBasePage.dart';
import 'package:ambica/widgets/timeText.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

class MeetingDetail extends GetView<MeetingCircularController> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Dimens.gapX2.height,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  AppStrings.dummy_title,
                  style: Styles.tsROpenSansBlack1Bold14,
                  softWrap: true,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SvgPicture.asset(AppImages.icDate),
                  Dimens.gapXHalf.width,
                  Text(AppStrings.dummyText,
                      style: Styles.tsROpenSansBlack1SemiBold10),
                ],
              ).paddingOnly(left: Dimens.paddingX4),
            ],
          ),
          Dimens.gapX1.height,
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
             TimeText(text: AppStrings.dummyText),
              Spacer(),
              Storage.getMemberType()==AppStrings.member?SizedBox():InkWell(
                onTap: (){
                  controller.onMeetCircularPageChange(AppStrings.VIEW_ATTENDANCE_PAGE);
                  controller.onTitleChange(AppStrings.view_attendance);
                },
                child: Container(
                  height: 25,
                  width: 105,
                  decoration: BoxDecoration(
                    color: AppColors.pink1,
                    borderRadius: BorderRadius.circular(Dimens.radiusX3),                ),
                  child: Center(
                    child: Text(
                      AppStrings.view_attendance,style: Styles.tsROpenSansWhiteSemiBold10,
                    ),
                  ),
                ),
              )
            ],
          ),
          Dimens.gapX2.height,
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              AppStrings.point_discussed,
              style: Styles.tsROpenSansBlack1Bold12,
            ),
          ),
          Dimens.gapX1.height,
          Text(
            AppStrings.loremIpsum,
            style: Styles.tsROpenSansBlack110,
          ),
          Dimens.gapX3.height,
          InkWell(
            onTap: () {},
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimens.radiusX1),
                    color: AppColors.pinkPDF),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(AppImages.icWord),
                        Dimens.gapX1.width,
                        Text(AppStrings.dummyText,
                            style: Styles.tsROpenSansBlack1SemiBold12)
                      ],
                    ),
                    Text(
                      AppStrings.open,
                      style: Styles.tsROpenSansPink1SemiBold12,
                    )
                  ],
                ).paddingSymmetric(
                    horizontal: Dimens.paddingX3,
                    vertical: Dimens.paddingX2)),
          ),
        ],
      ).paddingSymmetric(horizontal: Dimens.appPadding),
    );
  }
}
