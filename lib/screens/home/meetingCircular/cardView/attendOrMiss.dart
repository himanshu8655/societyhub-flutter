import 'package:ambica/screens/home/meetingCircular/controllers/meetingCircularController.dart';
import 'package:ambica/widgets/dateText.dart';
import 'package:ambica/widgets/timeText.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

class AttendMiss extends GetView<MeetingCircularController> {
  final int attended;
  AttendMiss({required this.attended});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.onMeetCircularPageChange(AppStrings.MEETING_DETAIL_PAGE);
        controller.onTitleChange(AppStrings.meetDetail);
        controller.showActionContainer(false);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings.loremIpsum,
                      style: Styles.tsROpenSansBlack1Bold14,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Dimens.gapX1.height,
                    attended != 0 && attended != 1
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              DateText(text: AppStrings.dummyText),
                              Dimens.gapX1.height,
                              TimeText(text: AppStrings.dummyText)
                            ],
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              DateText(text: AppStrings.dummyText),
                              Dimens.gapX2.width,
                              TimeText(text: AppStrings.dummyText)
                            ],
                          ),
                  ],
                ),
              ),
              if (attended == 0)
                Text(
                  AppStrings.missed,
                  style: Styles.tsROpenSansPink1SemiBold10,
                ).paddingOnly(left: Dimens.paddingX6)
              else if (attended == 1)
                Text(
                  AppStrings.attended,
                  style: Styles.tsROpenSansGreenSemiBold10,
                ).paddingOnly(left: Dimens.paddingX6)
              else
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      AppStrings.attended,
                      style: Styles.tsROpenSansBlack1SemiBold10,
                    ),
                    Dimens.gapX1.height,
                    Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 26,
                            width: 26,
                            decoration: BoxDecoration(
                                color: AppColors.green, shape: BoxShape.circle),
                            child: Icon(
                              Icons.check,
                              color: AppColors.white,
                              size: 14,
                            ),
                          ),
                        ),
                        Dimens.gapX1.width,
                        InkWell(
                          onTap: (){},
                          child: Container(
                            height: 26,
                            width: 26,
                            decoration: BoxDecoration(
                                color: AppColors.pink1, shape: BoxShape.circle),
                            child: Icon(Icons.clear,
                                color: AppColors.white, size: 14),
                          ),
                        ),
                      ],
                    )
                  ],
                ).paddingOnly(left: Dimens.paddingX6)
            ],
          ),
          Dimens.gapX1.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Text(AppStrings.loremIpsum,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      softWrap: true)),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.chevron_right,
                    color: AppColors.pink1,
                  )).paddingOnly(left: Dimens.paddingX3),
            ],
          )
        ],
      ),
    );
  }
}
