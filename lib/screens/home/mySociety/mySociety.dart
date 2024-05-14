import 'package:ambica/screens/bottom_navbar/bottomNavController.dart';
import 'package:ambica/screens/home/mySociety/addLSP.dart';
import 'package:ambica/screens/home/mySociety/controllers/mySocietyController.dart';
import 'package:ambica/widgets/actionContainer.dart';
import 'package:ambica/widgets/basePage/appBasePage.dart';
import 'package:ambica/widgets/titleBtn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

class MySociety extends GetView<MySocietyController> {
  @override
  Widget build(BuildContext context) {
    BottomNavController navController = Get.find();
    Get.lazyPut(() => MySocietyController());
    return WillPopScope(
      onWillPop: () async {
        onBackPressed();
        return false;
      },
      child: Obx(
        () => AppBasePage(
          actions: Obx(() => controller.currentIndex == 1 &&
                  navController.post == AppStrings.committee_member
              ? InkWell(
                  onTap: () {
                    controller.showMySocietyPage(false);
                    controller.onIndexChange(2);
                  },
                  child: ActionContainer())
              : SizedBox()),
          title: InkWell(
            onTap: () {
              onBackPressed();
            },
            child: Obx(
              () => TitleBtn(
                  text: controller.currentIndex == 0
                      ? AppStrings.mySociety
                      : (controller.currentIndex==1?AppStrings.lsp:AppStrings.addLSP)),
            ),
          ),
          bodyPadding: EdgeInsets.zero,
          tabBar: controller.mySocietyPage
              ? ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(19)),
                  child: Container(
                    color: AppColors.pink_dark,
                    child: ClipRRect(
                      child: Container(
                        child: TabBar(
                          controller: controller.tabController,
                          tabs: controller.tabs,
                          indicatorColor: AppColors.white,
                          labelStyle: Styles.tsROpenSansWhiteSemiBold13,
                        ).paddingSymmetric(horizontal: Dimens.paddingX2),
                      ),
                    ),
                  ),
                )
              : SizedBox(),
          tabBarView: controller.mySocietyPage
              ? TabBarView(
                  controller: controller.tabController,
                  children: controller.tabsView,
                )
              : AddLSP(),
        ),
      ),
    );
  }

  void onBackPressed() {
    if(controller.mySocietyPage) {
      BottomNavController navController = Get.find();
      navController.onTabChange(0);
    }
    else{
      controller.showMySocietyPage(true);
      controller.onIndexChange(1);
    }
  }
}
