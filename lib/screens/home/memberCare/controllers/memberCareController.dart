import 'package:ambica/screens/home/memberCare/noc/memberCareNOC.dart';
import 'package:ambica/screens/home/memberCare/query/query.dart';
import 'package:ambica/utilities/imports.dart';
import 'package:flutter/material.dart';
import '../facility/memberCarefacility.dart';

class MemberCareController extends GetxController
    with SingleGetTickerProviderMixin {
  late TabController tabController;
  int currentIndex = 1;

  RxInt _queryIndex = RxInt(0);
  RxInt _nocIndex = RxInt(0);
  RxInt _facilityIndex = RxInt(0);
  RxBool _actionContainer = RxBool(true);
  RxString _title = RxString(AppStrings.mem_care);
  RxBool _scrollPhysics = RxBool(true);
  RxString _memberCarePage = RxString(AppStrings.MEMBER_CARE_PAGE);

  int get queryIndex => _queryIndex.value;
  int get nocIndex => _nocIndex.value;
  int get facilityIndex => _facilityIndex.value;
  bool get actionContainer => _actionContainer.value;
  bool get scrollPhysics => _scrollPhysics.value;
  String get title => _title.value;
  String get memberCarePage => _memberCarePage.value;

  final List<Widget> tabsView = [
    MemberCareNOC(),
    MemberCareFacility(),
    MemberCareQuery(),
  ];

  final List<Tab> tabs = [
    Tab(text: AppStrings.noc),
    Tab(text: AppStrings.facility),
    Tab(text: AppStrings.queries),
  ];
  void enableScrollPhysics(scrollPhysics) {
    _scrollPhysics.value = scrollPhysics;
  }

  void onQueryIndexChange(queryIndex) {
    _queryIndex.value = queryIndex;
  }

  void onNOCIndexChange(nocIndex) {
    _nocIndex.value = nocIndex;
  }

  void onFacilityIndexChange(facilityIndex) {
    _facilityIndex.value = facilityIndex;
  }

  void changeActionContainerVisibility(actionContainer) {
    _actionContainer.value = actionContainer;
  }

  void onTitleChange(title) {
    _title.value = title;
  }

  void changeMemberCarePage(String memberCarePage) {
    _memberCarePage.value = memberCarePage;
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
