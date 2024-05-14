import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

class SquareDropList extends StatelessWidget {
  int _value = 1;
  String? text;
  SquareDropList({ this.text});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          width: double.infinity,
          height: 40,
          decoration: new BoxDecoration(
              border: new Border.all(
                color: AppColors.greyTextFieldBorder,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(Dimens.radiusX2)),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              value: _value,
              items: [
                DropdownMenuItem(
                  child: Text(AppStrings.sel_facility,style: Styles.tsROpenSansGreyHintText12,),
                  value: 1,
                ),
                DropdownMenuItem(
                  child: Text("Second Item"),
                  value: 2,
                ),
                DropdownMenuItem(child: Text("Third Item"), value: 3),
                DropdownMenuItem(child: Text("Fourth Item"), value: 4)
              ],
            ),
          ).paddingSymmetric(horizontal: Dimens.paddingX3),
        ),
        Dimens.gapX15.height,

      ],
    );
  }
}
