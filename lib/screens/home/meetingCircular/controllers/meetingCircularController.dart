import 'package:ambica/screens/home/meetingCircular/billingInstruction/bill_Instruction.dart';
import 'package:ambica/utilities/imports.dart';
import 'package:ambica/utilities/storage.dart';
import 'package:flutter/material.dart';
import '../announcements/announcement.dart';
import '../meetings/meeting.dart';

class MeetingCircularController extends GetxController
    with SingleGetTickerProviderMixin {
  late TabController tabController;
  int currentIndex = 1;
  RxString _title = RxString(AppStrings.meetCircular);
  String get title => _title.value;

  RxString _meetCircularPage = RxString(AppStrings.MEETING_CIRCULAR_PAGE);
  RxBool _actionContainer = RxBool(Storage.getMemberType()==AppStrings.member?false:true);
  bool get actionContainer => _actionContainer.value;
  final List<Tab> tabs = [
    Tab(text: AppStrings.meets),
    Tab(text: AppStrings.announcements),
    if (Storage.getMemberType() == AppStrings.committee_member)
      Tab(
        child: Text(
          AppStrings.billInstruction,
          textAlign: TextAlign.center,
        ),
      )
  ];
  final List<Widget> tabsView = [
    Meeting(),
    Announcement(),
    if (Storage.getMemberType() == AppStrings.committee_member)
      BillInstruction()
  ];
  String get meetCircularPage => _meetCircularPage.value;

  void onMeetCircularPageChange(String meetCircularPage) {
    _meetCircularPage.value = meetCircularPage;
  }

  void showActionContainer(actionContainer) {
    _actionContainer.value = actionContainer;
  }
  void onTitleChange(title) {
    _title.value = title;
  }

  @override
  void onInit() {
    tabController =
        TabController(vsync: this, length: tabs.length, initialIndex: 1)
          ..addListener(() {
            currentIndex = tabController.index;
          });
    super.onInit();
  }


}
