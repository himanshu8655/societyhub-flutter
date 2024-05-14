import 'package:ambica/screens/home/mySociety/controllers/mySocietyController.dart';
import 'package:ambica/widgets/container.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';
import 'package:flutter_switch/flutter_switch.dart';

class CvNominee extends GetView<MySocietyController> {
  void toggleSwitch(bool value) {}
  @override
  Widget build(BuildContext context) {
    return ContainerBorderedCurved(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, Dimens.paddingX3),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //1st row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppStrings.nominee,
                  style: Styles.tsROpenSansBlack1Bold12,
                ),
                Obx(()=>
                FlutterSwitch(
                    padding: 0,
                      value: controller.switchEnabled,
                      toggleSize: 16,
                      inactiveColor: AppColors.pink1.withOpacity(0.2),
                      inactiveToggleColor: AppColors.pink1,
                      activeToggleColor: AppColors.pink1,
                      activeColor: AppColors.pink1.withOpacity(0.2),
                      width: 25,
                      height: 14,
                      onToggle: (val) {
                     val?controller.setEnabled(true):controller.setEnabled(false);
                      }),
                )
              ],
            ).paddingSymmetric(horizontal: Dimens.paddingX3,vertical: Dimens.paddingX2),
            Divider(
              color: AppColors.blackLV,
              height: 0,
            ),
            Dimens.gapX2.height,
            //2nd row
            Row(
              children: [
                Text(
                  AppStrings.joint_member,
                  style: Styles.tsROpenSansBlack1SemiBold12,
                ),
                Dimens.gapXHalf.width,
                Text(
                  AppStrings.name,
                  style: Styles.tsROpenSansGrey1SemiBold12,
                ),
              ],
            ).paddingSymmetric(horizontal: Dimens.paddingX3),
            Dimens.gapX1.height,
            //3rd row
            Row(
              children: [
                Text(
                  AppStrings.asso_member,
                  style: Styles.tsROpenSansBlack1SemiBold12,
                ),
                Dimens.gapXHalf.width,
                Text(
                  AppStrings.name,
                  style: Styles.tsROpenSansGrey1SemiBold12,
                ),
              ],
            ).paddingSymmetric(horizontal: Dimens.paddingX3),
          ],
        ),
      ),
    );
  }
}
