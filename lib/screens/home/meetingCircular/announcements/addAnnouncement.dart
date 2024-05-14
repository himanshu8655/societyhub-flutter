import 'package:ambica/widgets/addCanButtons.dart';
import 'package:ambica/widgets/basePage/appBasePage.dart';
import 'package:ambica/widgets/squareTextField.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

class AddAnnouncement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Dimens.gapX2.height,
        SquareTextField(
          text: AppStrings.dateFormat,
          endWidget: SvgPicture.asset(AppImages.icCalendar,color: AppColors.black1,),
          widgetHeight: 10,
          widgetWidth: 10,
        ),
        SquareTextField(text: AppStrings.subject),
        Dimens.gapX3.height,
        AddCanButtons(text: AppStrings.send)
      ],
    );
  }
}
