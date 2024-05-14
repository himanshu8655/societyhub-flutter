import 'package:ambica/screens/home/mySociety/localServiceProvider.dart';
import 'package:ambica/screens/home/mySociety/memberList.dart';
import 'package:ambica/utilities/imports.dart';
import 'package:flutter/material.dart';

class MySocietyController extends GetxController
    with SingleGetTickerProviderMixin {
  late TabController tabController;
  RxInt _currentIndex=RxInt(0);
  int get currentIndex => _currentIndex.value;
  RxBool _mySocietyPage=RxBool(true);
  bool get mySocietyPage => _mySocietyPage.value;


  final List<Tab> tabs = [
    Tab(text: AppStrings.member_list),
    Tab(text: AppStrings.lsp),
  ];
  RxBool _switchEnabled=RxBool(true);
  bool get switchEnabled => _switchEnabled.value;
  final List<Widget> tabsView = [
    MemberList(),
    LocalServiceProvider(),
  ];

  void onIndexChange(int currentIndex){
    _currentIndex.value=currentIndex;
  }
  void showMySocietyPage(bool mySocietyPage){
    _mySocietyPage.value=mySocietyPage;
  }
  @override
  void onInit() {
    tabController = TabController(vsync: this, length: tabs.length)
    ..addListener(() {
      onIndexChange(tabController.index);
    });
    super.onInit();
  }

  setEnabled(bool switchEnabled) {
    _switchEnabled.value=switchEnabled;

  }
}
