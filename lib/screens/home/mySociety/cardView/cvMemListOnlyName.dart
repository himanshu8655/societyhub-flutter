import 'package:ambica/widgets/container.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

class CvMemListOnlyName extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ContainerBorderedCurved(child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: AppColors.white, shape: BoxShape.circle),
              child: Image.asset(AppImages.icPerson),
            ),
            Dimens.gapXHalf.width,
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.name,
                  style: Styles.tsRalewayBlack1Bold15,
                ),
                Dimens.gapXHalf.height,
                Text(
                  AppStrings.dummyText,
                  style: Styles.tsROpenSansGrey1SemiBold12,
                )
              ],
            )
          ],
        ),
        Text(
          "A-505",
          style: Styles.tsROpenSansPink1Bold16,
        )
      ],
    ).paddingAll(Dimens.paddingX3),);
  }
}
