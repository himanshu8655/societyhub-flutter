import 'package:ambica/screens/home/memberCare/controllers/memberCareController.dart';
import 'package:ambica/widgets/addCanButtons.dart';
import 'package:ambica/widgets/basePage/appBasePage.dart';
import 'package:ambica/widgets/quill/quillTextBox.dart';
import 'package:ambica/widgets/squareDropList.dart';
import 'package:ambica/widgets/squareTextField.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

class AddQuery extends GetView<MemberCareController> {

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async {
        controller.onTitleChange(AppStrings.mem_care);
        controller.onQueryIndexChange(0);
        controller.changeActionContainerVisibility(true);
        controller.enableScrollPhysics(true);
        return false;
      },
      child: Column(
        children: [
          Dimens.gapX2.height,
          SquareTextField(text: AppStrings.date),
          SquareDropList(),
          QuillTextBox(),
          Dimens.gapX4.height,
          AddCanButtons(text: AppStrings.send)
        ],
      ).paddingSymmetric(horizontal: Dimens.appPadding),
    );
  }
}
