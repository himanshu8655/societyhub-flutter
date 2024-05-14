import 'dart:ui';
import 'package:ambica/screens/bottom_navbar/bottomNavController.dart';
import 'package:ambica/screens/bottom_navbar/bottom_nav.dart';
import 'package:ambica/utilities/imports.dart';
import 'package:ambica/widgets/navDrawerText.dart';
import 'package:flutter/material.dart';

class NavigationDrawer extends GetView<BottomNavController> {
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => BottomNavController());
    return BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: 35.0,
        sigmaY: 35.0,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(27.0),
            bottomRight: Radius.circular(27.0)),
        child: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Dimens.gapX4.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 2, color: AppColors.black1),
                    ),
                    child: Center
                      (
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Center(
                          child: Image.asset(
                            AppImages.icHome,
                            height: 70.0,
                            width: 70.0,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Dimens.gapX1.width,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Dimens.gapX1.height,
                      Text(
                        AppStrings.name,
                        style: Styles.tsROpenSansBlack1Bold20,
                      ),
                      Dimens.gapXHalf.height,
                      Text(
                        AppStrings.member,
                        style: Styles.tsROpenSansBlack1SemiBold12,
                      ),
                      Dimens.gapXHalf.height,
                      InkWell(
                        onTap: () {
                          controller.setDialogBox(AppStrings.HOME_DIALOG);
                          Get.back();
                          controller.navigationIsEnabled(false);
                        },
                        child: Row(
                          children: [
                            Text(
                              AppStrings.dummyText,
                              style: Styles.tsROpenSansPink1SemiBold12,
                            ),
                            Dimens.gapXHalf.width,
                            Icon(
                              Icons.chevron_right,
                              color: AppColors.pink1,
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Dimens.gapX4.height,
              GestureDetector(
                onTap: (){
                  Get.back();
                },
                child: NavDrawerText(
                    imageName: AppImages.icNavHome,
                    text: AppStrings.home,),
              ),
              Divider(
                height: 20,
                color: AppColors.blackNavDivider,
              ),
              GestureDetector(
                onTap: () {
                  Get.back();
                  controller.onTabChange(7);
                },
                child: NavDrawerText(
                    imageName: AppImages.icNavSociety,
                    text: AppStrings.mySociety,),
              ),
              Divider(
                height: 20,
                color: AppColors.blackNavDivider,
              ),
              GestureDetector(
                onTap: () {
                  Get.back();
                  controller.onTabChange(4);
                },
                child: NavDrawerText(
                    imageName: AppImages.icNavBill,
                    text: AppStrings.billsPayment,
                    ),
              ),
              Divider(
                height: 20,
                color: AppColors.blackNavDivider,
              ),
              GestureDetector(
                onTap: () {
                  Get.back();
                  controller.onTabChange(1);
                },
                child: NavDrawerText(
                    imageName: AppImages.icNavMeet,
                    text: AppStrings.meetCircular,
                   ),
              ),
              Divider(
                height: 20,
                color: AppColors.blackNavDivider,
              ),
              GestureDetector(
                onTap: () {
                  Get.back();
                  controller.onTabChange(3);

                            },
                child: NavDrawerText(
                    imageName: AppImages.icNavMemberCare,
                    text: AppStrings.mem_Care,
                    ),
              ),
              Divider(
                height: 20,
                color: AppColors.blackNavDivider,
              ),
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: NavDrawerText(
                    imageName: AppImages.icNavLogout,
                    text: AppStrings.logout,
                   ),
              ),
            ],
          ).paddingSymmetric(horizontal: Dimens.paddingX3),
        ),
      ),
    );
  }
}
