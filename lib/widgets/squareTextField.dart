import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

class SquareTextField extends StatelessWidget {
  final String text;
  final Widget? endWidget;
  final double? widgetHeight;
  final double? widgetWidth;

  SquareTextField(
      {required this.text,
      this.endWidget,
      this.widgetHeight,
      this.widgetWidth});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 40,
            decoration: new BoxDecoration(
                border: new Border.all(
                  color: AppColors.greyTextFieldBorder,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(Dimens.radiusX2)),
            child: Center(
              child: TextField(
                style: Styles.tsROpenSansGreyHintText12,
                textAlign: TextAlign.left,
                decoration: new InputDecoration(
                  suffixIcon: endWidget,
                  hintText: this.text,
                  hintStyle: Styles.tsROpenSansGreyHintText12,
                  border: InputBorder.none,
                ),
              ).paddingSymmetric(horizontal: Dimens.paddingX3),
            )),
        Dimens.gapX15.height,
      ],
    );
  }
}
