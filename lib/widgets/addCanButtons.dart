import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

class AddCanButtons extends StatelessWidget {
  final String text;
  final VoidCallback? primaryOnTap;
  final VoidCallback? secondaryOnTap;
  AddCanButtons({required this.text, this.primaryOnTap, this.secondaryOnTap,});

  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(
                Dimens.paddingX3, 0, Dimens.paddingX3, 0),
            child: Text(this.text,
                style: Styles.tsROpenSansWhiteSemiBold12),
          ),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith(
                      (Color) => AppColors.pink1),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Dimens.radiusX4),
                  ))),
          onPressed: () =>primaryOnTap!(),
        ),
        Dimens.gapX2.width,
        InkWell(
          child: Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],
                color: AppColors.white,
                border: Border.all(
                  color: AppColors.pink1,
                ),
                borderRadius: BorderRadius.circular(Dimens.radiusX4)),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(Dimens.paddingX4,
                  Dimens.paddingX2, Dimens.paddingX4, Dimens.paddingX2),
              child: Text(
                AppStrings.cancel,
                style: Styles.tsROpenSansPink1SemiBold12,
              ),
            ),
          ),
        )
      ],
    );
  }
}
