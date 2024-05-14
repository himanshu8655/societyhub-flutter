import 'package:ambica/screens/bottom_navbar/bottomNavController.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

class BottomNav extends GetView<BottomNavController> {
  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: Obx(() => Container(
            decoration: BoxDecoration(color: AppColors.white, boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 1.0), //(x,y)
                blurRadius: 6.0,
              )
            ]),
            //height: Dimens.gapX6,
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Row(
              children: [
                bottomNavTile(
                    index: 0,
                    icon: AppImages.icNavHome,
                    title: AppStrings.home),
                bottomNavTile(
                    index: 1,
                    icon: AppImages.icNavAnnounce,
                    title: AppStrings.announcements),
                bottomNavTile(
                    index: 2,
                    icon: AppImages.icNavNotify,
                    title: AppStrings.notification),
                bottomNavTile(
                    index: 3,
                    icon: AppImages.icNavMemberCare,
                    title: AppStrings.mem_care),
              ],
            ),
          )),
    );
  }

  Widget bottomNavTile(
          {required int index, required String title, required String icon}) =>
      controller.selectedIndex == index
          ? GestureDetector(
              onTap: () => controller.enableNavigation?controller.onTabChange(index):null,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimens.radiusX2),
                  color: AppColors.pink1,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      icon,
                      semanticsLabel: AppStrings.home,
                      color: AppColors.white,
                      height: 18,
                      width: 18,
                    ),
                    Dimens.gapXHalf.width,
                    Text(
                      title,
                      style: Styles.tsROpenSansWhite12,
                    )
                  ],
                ).paddingAll(Dimens.paddingX2),
              ))
          : Expanded(
              child: GestureDetector(
                  onTap: () => controller.enableNavigation?controller.onTabChange(index):null,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: SvgPicture.asset(icon,height: 18,
                      width: 18,color: AppColors.black1,),
                  )));
}
