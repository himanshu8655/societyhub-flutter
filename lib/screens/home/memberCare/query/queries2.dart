import 'package:ambica/screens/bottom_navbar/bottomNavController.dart';
import 'package:ambica/screens/home/memberCare/controllers/memberCareController.dart';
import 'package:ambica/utilities/storage.dart';
import 'package:ambica/widgets/addCanButtons.dart';
import 'package:ambica/widgets/basePage/appBasePage.dart';
import 'package:ambica/widgets/dateText.dart';
import 'package:ambica/widgets/quill/quillTextBox.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';
import 'package:flutter/widgets.dart';

class MemberCareQuery2 extends GetView<MemberCareController> {
  @override
  Widget build(BuildContext context) {
    BottomNavController navController = Get.find();
    return WillPopScope(
      onWillPop: ()async {
        controller.onQueryIndexChange(0);
        return false;
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Dimens.gapX2.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppStrings.name,
                style: Styles.tsROpenSansBlack1Bold14,
              ),
              Text(
                AppStrings.resolve_on,
                style: Styles.tsROpenSansGreenBold12,
              ),
            ],
          ),
          Dimens.gapX1.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "E-202",
                style: Styles.tsROpenSansPink1SemiBold14,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(AppImages.icDate),
                  Dimens.gapXHalf.width,
                  Text(AppStrings.dummyText,
                      style: Styles.tsROpenSansBlack1SemiBold10),
                ],
              ),
            ],
          ),
          Dimens.gapX1.height,
          DateText(text: AppStrings.dummyText),
          Dimens.gapX2.height,
          Text(
            AppStrings.loremIpsum + AppStrings.loremIpsum,
            style: Styles.tsROpenSansBlack110,
          ),
          Dimens.gapX2.height,
          navController.post==AppStrings.member?
          Text(
            AppStrings.resolution,
            style: Styles.tsROpenSansBlack1Bold14,
          ):SizedBox(),
          Dimens.gapXHalf.height,
          Storage.getMemberType()==AppStrings.member? Text(
            AppStrings.loremIpsum + AppStrings.loremIpsum,
            style: Styles.tsROpenSansBlack110,
          ):QuillTextBox(),
          Dimens.gapX3.height,
          Storage.getMemberType()==AppStrings.member?SizedBox():AddCanButtons(text: AppStrings.send)
        ],
      ).paddingSymmetric(horizontal: Dimens.appPadding),
    );
  }
}
