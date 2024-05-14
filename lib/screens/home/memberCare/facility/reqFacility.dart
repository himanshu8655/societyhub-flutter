import 'package:ambica/screens/bottom_navbar/bottomNavController.dart';
import 'package:ambica/screens/home/memberCare/controllers/memberCareController.dart';
import 'package:ambica/screens/home/memberCare/facility/cardView/cvFacilityEdit.dart';
import 'package:ambica/widgets/addCanButtons.dart';
import 'package:ambica/widgets/basePage/appBasePage.dart';
import 'package:ambica/widgets/quill/quillTextBox.dart';
import 'package:ambica/widgets/squareDropList.dart';
import 'package:ambica/widgets/squareTextField.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

class RequestFacility extends GetView<MemberCareController> {

  @override
  Widget build(BuildContext context) {
    BottomNavController navController = Get.find();
    return   Column(
      children: [
        Dimens.gapX15.height,
        navController.post==AppStrings.member?SizedBox():CvFacilityEdit(),
        Dimens.gapX1.height,
        SquareDropList(),
        InkWell(child: SquareTextField(text: AppStrings.date_event)),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: SquareTextField(text: AppStrings.startTime,),
            ),
            Dimens.gapX1.width,
            Expanded(
              flex: 1,
              child: SquareTextField(text: AppStrings.endTime,),
            ),
          ],
        ),
        Dimens.gapX3.height,
        Align(
            alignment: Alignment.topRight,
            child: Text(
              AppStrings.amt_paid,
              style: Styles.tsROpenSansBlack1SemiBold12,
            )),
        Dimens.gapXHalf.height,
        Align(
          alignment: Alignment.topRight,
          child: Text(
            AppStrings.rupeeSymbol + "5802",
            style: Styles.tsROpenSansPink1Bold16,
          ),
        ),
        //HtmlEditor(),
        Dimens.gapX4.height,
        AddCanButtons(text: AppStrings.pay)
      ],
    ).paddingSymmetric(horizontal: Dimens.appPadding);
  }
}
