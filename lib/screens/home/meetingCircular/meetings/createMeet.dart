import 'package:ambica/widgets/addCanButtons.dart';
import 'package:ambica/widgets/basePage/appBasePage.dart';
import 'package:ambica/widgets/squareTextField.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

class CreateMeet extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Dimens.gapX2.height,
        SquareTextField(text: AppStrings.date_meet),
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
        SquareTextField(text: AppStrings.plc_meet),
        Dimens.gapX3.height,
        AddCanButtons(text: AppStrings.send)
      ],
    ).paddingSymmetric(horizontal: Dimens.paddingX5);
  }
}
