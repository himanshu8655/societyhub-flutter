import 'package:ambica/screens/bottom_navbar/bottomNavController.dart';
import 'package:ambica/widgets/addCanButtons.dart';
import 'package:ambica/widgets/container.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

class CvShowContact extends GetView<BottomNavController> {
  @override
  Widget build(BuildContext context) {
    return ContainerBorderedCurved(
            height: 200,
            child: Column(
              children: [
                Dimens.gapX1.height,
                Text(
                  AppStrings.show_contact,
                  style: Styles.tsROpenSansBlack1Bold18,
                  textAlign: TextAlign.center,
                ),
                Dimens.gapX1.height,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(AppStrings.yes,
                        style: Styles.tsROpenSansPink1SemiBold18),
                    Text(
                      AppStrings.no,
                      style: Styles.tsROpenSansBlack1SemiBold18,
                    ),
                  ],
                ),
                Dimens.gapX2.height,
                InkWell(
                    onTap: () {
                      controller.setDialogBox(AppStrings.HIDE_DIALOG);
                      controller.navigationIsEnabled(true);
                    },
                    child: AddCanButtons(text: AppStrings.done))
              ],
            ).paddingAll(Dimens.paddingX3))
        .paddingSymmetric(horizontal: Dimens.paddingX5);
  }
}
