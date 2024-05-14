import 'package:ambica/screens/bottom_navbar/bottomNavController.dart';
import 'package:ambica/screens/home/meetingCircular/announcements/addAnnouncement.dart';
import 'package:ambica/screens/home/meetingCircular/announcements/announceDetail.dart';
import 'package:ambica/screens/home/meetingCircular/billingInstruction/bill_Instruction.dart';
import 'package:ambica/screens/home/meetingCircular/billingInstruction/bill_InstructionDetail.dart';
import 'package:ambica/screens/home/meetingCircular/controllers/meetingCircularController.dart';
import 'package:ambica/screens/home/meetingCircular/meetings/createMeet.dart';
import 'package:ambica/screens/home/meetingCircular/meetings/meetingDetail.dart';
import 'package:ambica/screens/home/meetingCircular/announcements/viewAttendance.dart';
import 'package:ambica/utilities/storage.dart';
import 'package:ambica/widgets/actionContainer.dart';
import 'package:ambica/widgets/basePage/appBasePage.dart';
import 'package:ambica/widgets/titleBtn.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

class MeetingCircular extends GetView<MeetingCircularController> {
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => MeetingCircularController());
    return Obx(
      () => WillPopScope(
        onWillPop: () async {
          onBackPressed();
          return Future.value(false);
        },
        child: AppBasePage(
          actions: Obx(
            () => InkWell(
                onTap: () {
                  controller.showActionContainer(false);
                  if (controller.currentIndex == 0) {
                    controller.onTitleChange(AppStrings.create_meet);
                    controller.onMeetCircularPageChange(
                        AppStrings.CREATE_MEETING_PAGE);
                  } else if (controller.currentIndex == 1) {
                    controller.onTitleChange(AppStrings.addAnnouncements);
                    controller.onMeetCircularPageChange(
                        AppStrings.ADD_ANNOUNCEMENTS_PAGE);
                  } else if (controller.currentIndex == 2) {
                    controller.onTitleChange(AppStrings.addBillInstructions);
                    controller.onMeetCircularPageChange(
                        AppStrings.ADD_BILLING_INSTRUCTION_PAGE);
                  }
                },
                child: Storage.getMemberType() == AppStrings.committee_member &&
                        controller.meetCircularPage ==
                            AppStrings.MEETING_DETAIL_PAGE
                    ? ActionContainer(
                        iconData: Icons.edit,
                      )
                    : (controller.actionContainer &&
                            Storage.getMemberType() ==
                                AppStrings.committee_member
                        ? ActionContainer()
                        : SizedBox())),
          ),
          title: InkWell(
            onTap: () {
              onBackPressed();
            },
            child: Obx(
              () => TitleBtn(
                text: controller.title,
              ),
            ),
          ),
          bodyPadding: EdgeInsets.zero,
          tabBar: controller.meetCircularPage ==
                  AppStrings.MEETING_CIRCULAR_PAGE
              ? ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(19)),
                  child: Container(
                    color: AppColors.pink_dark,
                    child: ClipRRect(
                      child: Container(
                        child: TabBar(
                          controller: controller.tabController,
                          tabs: controller.tabs,
                          indicatorSize: TabBarIndicatorSize.label,
                          indicatorColor: AppColors.white,
                          labelStyle: Styles.tsROpenSansWhiteSemiBold13,
                        ).paddingSymmetric(horizontal: Dimens.paddingX2),
                      ),
                    ),
                  ),
                )
              : SizedBox(),
          tabBarView: controller.meetCircularPage ==
                  AppStrings.MEETING_CIRCULAR_PAGE
              ? TabBarView(
                  controller: controller.tabController,
                  children: controller.tabsView,
                )
              : (controller.meetCircularPage == AppStrings.MEETING_DETAIL_PAGE
                  ? MeetingDetail()
                  : (controller.meetCircularPage ==
                          AppStrings.ADD_ANNOUNCEMENTS_PAGE)
                      ? AddAnnouncement()
                      : (controller.meetCircularPage ==
                              AppStrings.CREATE_MEETING_PAGE
                          ? CreateMeet()
                          : (controller.meetCircularPage ==
                                  AppStrings.VIEW_ATTENDANCE_PAGE
                              ? ViewAttendance()
                              : (controller.meetCircularPage ==
                                      AppStrings.ANNOUNCEMENT_DETAIL_PAGE
                                  ? AnnounceDetail()
                                  : (controller.meetCircularPage ==
                                          AppStrings.BILLING_INSTRUCTION_PAGE
                                      ? BillInstruction()
                                      : BillInstructionDetail()))))),
        ),
      ),
    );
  }

  void onBackPressed() {
    BottomNavController navController = Get.find();
    if (controller.meetCircularPage == AppStrings.MEETING_CIRCULAR_PAGE) {
      navController.onTabChange(0);
    } else if (controller.meetCircularPage == AppStrings.VIEW_ATTENDANCE_PAGE) {
      controller.onMeetCircularPageChange(AppStrings.MEETING_DETAIL_PAGE);
      controller.onTitleChange(AppStrings.meetDetail);
    } else {
      controller.onTitleChange(AppStrings.meetCircular);
      controller.onMeetCircularPageChange(AppStrings.MEETING_CIRCULAR_PAGE);
      if (Storage.getMemberType() == AppStrings.committee_member) {
        controller.showActionContainer(true);
      }
    }
  }
}
