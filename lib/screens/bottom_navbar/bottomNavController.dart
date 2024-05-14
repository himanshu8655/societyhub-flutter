import 'package:ambica/screens/home/billPayment/billPayment.dart';
import 'package:ambica/screens/home/billPayment/bills.dart';
import 'package:ambica/screens/home/billPayment/receipt.dart';
import 'package:ambica/screens/home/home_page.dart';
import 'package:ambica/screens/home/meetingCircular/meetingCircular.dart';
import 'package:ambica/screens/home/memberCare/memberCare.dart';
import 'package:ambica/screens/home/mySociety/mySociety.dart';
import 'package:ambica/screens/home/notifications.dart';
import 'package:ambica/utilities/imports.dart';
import 'package:flutter/material.dart';

class
BottomNavController extends GetxController {
  RxInt _selectedIndex = RxInt(0);
  int get selectedIndex => _selectedIndex.value;
  RxInt _selectedButton=RxInt(0);
  int get selectedButton => _selectedButton.value;
  RxString _dialogBox=RxString(AppStrings.HOME_DIALOG);
  String get dialogBox => _dialogBox.value;
  RxBool _enableNavigation=RxBool(false);
  bool get enableNavigation => _enableNavigation.value;
  RxString _title=RxString(AppStrings.mem_care);
  String get title=>_title.value;
  String post=AppStrings.committee_member;


  final List<Widget> fragment = [
    HomePage(),
    MeetingCircular(),
    Notifications(),
    MemberCare(),
    BillPayment(),
    Bills(),
    Receipt(),
    MySociety(),
  ];

  void navigationIsEnabled(enableNavigation){
    _enableNavigation.value=enableNavigation;
  }


  void onTabChange(selectedIndex) {
    _selectedIndex.value=selectedIndex;
  }
  void onTitleChange(title) {
    _title.value=title;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  void onButtonPress(int index) {
    _selectedButton.value=index;

  }

  void setDialogBox(String dialogBox) {
    _dialogBox.value=dialogBox;
  }
}


