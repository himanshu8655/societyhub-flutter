import 'package:ambica/screens/home/memberCare/controllers/memberCareController.dart';
import 'package:ambica/widgets/addCanButtons.dart';
import 'package:ambica/widgets/basePage/appBasePage.dart';
import 'package:ambica/widgets/squareDropList.dart';
import 'package:ambica/widgets/squareTextField.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

class ReqNOC extends GetView<MemberCareController> {

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        Dimens.gapX2.height,
        SquareTextField(text: AppStrings.date),
        SquareDropList(text: "NOC For",),
        Dimens.gapX5.height,
        AddCanButtons(text: AppStrings.send)
      ],
    ).paddingSymmetric(horizontal: Dimens.appPadding);
  }
}
