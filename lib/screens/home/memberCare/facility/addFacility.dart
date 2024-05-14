import 'package:ambica/screens/home/memberCare/controllers/memberCareController.dart';
import 'package:ambica/widgets/addCanButtons.dart';
import 'package:ambica/widgets/basePage/appBasePage.dart';
import 'package:ambica/widgets/squareDropList.dart';
import 'package:ambica/widgets/squareTextField.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

class AddFacility extends GetView<MemberCareController> {

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async {

        return true;
      },
      child: Column(
        children: [
          Dimens.gapX2.height,
          SquareTextField(text: AppStrings.facility_name),
          Dimens.gapX15.height,
          Row(
            children: [
              Expanded(flex:1,child: SquareTextField(text: AppStrings.ent_amt)),
              Dimens.gapX2.width,
              Expanded(flex:1,child: SquareDropList(text: "",)),
            ],
          ),
          Dimens.gapX4.height,
          AddCanButtons(text: AppStrings.add),
        ],
      ).paddingSymmetric(horizontal: Dimens.paddingX3),
    );
  }
}
