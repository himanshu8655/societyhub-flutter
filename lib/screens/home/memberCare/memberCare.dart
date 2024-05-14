import 'package:ambica/screens/bottom_navbar/bottomNavController.dart';
import 'package:ambica/screens/home/memberCare/controllers/memberCareController.dart';
import 'package:ambica/screens/home/memberCare/facility/addFacility.dart';
import 'package:ambica/screens/home/memberCare/facility/editFacility.dart';
import 'package:ambica/widgets/actionContainer.dart';
import 'package:ambica/widgets/basePage/appBasePage.dart';
import 'package:ambica/widgets/titleBtn.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

class MemberCare extends GetView<MemberCareController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        onBackPressed();
        return Future.value(false);
      },
      child: AppBasePage(
        title: Obx(
          () => InkWell(
            onTap: () {
              onBackPressed();
            },
            child: TitleBtn(
              text: controller.title,
            ),
          ),
        ),
        actions: Obx(
          () => InkWell(
              onTap: () {
                if (controller.currentIndex == 0) {
                  controller.onNOCIndexChange(1);
                  controller.onTitleChange(AppStrings.req_NOC);
                  controller.changeActionContainerVisibility(false);
                  controller.enableScrollPhysics(false);
                } else if (controller.currentIndex == 1) {
                  controller.onFacilityIndexChange(1);
                  controller.onTitleChange(AppStrings.req_facility);
                  controller.changeActionContainerVisibility(false);
                  controller.enableScrollPhysics(false);
                } else if (controller.currentIndex == 2) {
                  controller.onQueryIndexChange(2);
                  controller.onTitleChange(AppStrings.addQuery);
                  controller.changeActionContainerVisibility(false);
                  controller.enableScrollPhysics(false);
                }
              },
              child:
                  controller.actionContainer ? ActionContainer() : SizedBox()),
        ),
        bodyPadding: EdgeInsets.zero,
        tabBar: Obx(
          () => controller.memberCarePage == AppStrings.MEMBER_CARE_PAGE
              ? ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(19)),
                  child: Container(
                    color: AppColors.pink_dark,
                    child: ClipRRect(
                      child: Container(
                        child: IgnorePointer(
                          ignoring: controller.actionContainer?false:true,
                          child: TabBar(
                            controller: controller.tabController,
                            tabs: controller.tabs,
                            indicatorColor: AppColors.white,
                            labelStyle: Styles.tsROpenSansWhiteSemiBold13,
                          ).paddingSymmetric(horizontal: Dimens.paddingX2),
                        ),
                      ),
                    ),
                  ),
                )
              : SizedBox(),
        ),
        tabBarView: Obx(
          () => controller.memberCarePage == AppStrings.MEMBER_CARE_PAGE
              ? TabBarView(
                  physics: controller.scrollPhysics
                      ? null
                      : NeverScrollableScrollPhysics(),
                  controller: controller.tabController,
                  children: controller.tabsView,
                )
              : (controller.memberCarePage == AppStrings.ADD_FACILITY_PAGE
                  ? AddFacility()
                  : EditFacility()),
        ),
      ),
    );
  }

  void onBackPressed() {
    BottomNavController navController = Get.find();
    if (controller.memberCarePage != AppStrings.MEMBER_CARE_PAGE) {
      controller.changeMemberCarePage(AppStrings.MEMBER_CARE_PAGE);
      controller.onTitleChange(AppStrings.mem_care);
      controller.changeActionContainerVisibility(true);
    } else {
      if (controller.currentIndex == 0) {
        if (controller.nocIndex == 0) {
          navController.onTabChange(0);
        } else {
          controller.onNOCIndexChange(0);
          controller.onTitleChange(AppStrings.mem_care);
          controller.changeActionContainerVisibility(true);
          controller.enableScrollPhysics(true);
        }
      } else if (controller.currentIndex == 1) {
        if (controller.facilityIndex == 0) {
          navController.onTabChange(0);
        } else {
          controller.onFacilityIndexChange(0);
          controller.onTitleChange(AppStrings.mem_care);
          controller.changeActionContainerVisibility(true);
          controller.enableScrollPhysics(true);
        }
      } else if (controller.currentIndex == 2) {
        if (controller.queryIndex == 0)
          navController.onTabChange(0);
        else {
          controller.onTitleChange(AppStrings.mem_care);
          controller.onQueryIndexChange(0);
          controller.changeActionContainerVisibility(true);
          controller.enableScrollPhysics(true);
        }
      }
    }
  }
}
