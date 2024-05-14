import 'package:ambica/screens/bottom_navbar/bottomNavController.dart';
import 'package:ambica/screens/home/memberCare/facility/cardView/cvFacilityEdit.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

import 'cardView/cvFacility.dart';

class Facility extends GetView<BottomNavController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Dimens.gapX15.height,
        controller.post==AppStrings.member?SizedBox():CvFacilityEdit(),
        Dimens.gapX1.height,
        CvFacility(paymentIsPending: true,post: controller.post==AppStrings.member?AppStrings.member:AppStrings.committee_member,),
        Divider(
          color: AppColors.blackLV,
        ),
        CvFacility(paymentIsPending: false,post: controller.post==AppStrings.member?AppStrings.member:AppStrings.committee_member,),
        Divider(
          color: AppColors.blackLV,
        ),
      ],
    ).paddingSymmetric(horizontal: Dimens.appPadding);
  }
}
