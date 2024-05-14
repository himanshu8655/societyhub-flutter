import 'package:ambica/screens/bottom_navbar/bottomNavController.dart';
import 'package:ambica/utilities/colors.dart';
import 'package:ambica/utilities/dimens.dart';
import 'package:ambica/utilities/strings.dart';
import 'package:ambica/utilities/styles.dart';
import 'package:ambica/widgets/container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ambica/utilities/extensions.dart';

class CvDialogBox extends GetView<BottomNavController> {
  @override
  Widget build(BuildContext context) {
    return ContainerBorderedCurved(

      child: Padding(
          padding: const EdgeInsets.fromLTRB(Dimens.paddingX3, Dimens.paddingX3,
              Dimens.paddingX3, Dimens.paddingX1),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              ListView(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: [
                  Dimens.gapX3.height,
                  Text(
                    AppStrings.name,
                    style: Styles.tsROpenSansBlack1Bold20,
                    textAlign: TextAlign.center,
                  ),
                  Dimens.gapX15.height,
                  Text(
                    AppStrings.dialogBoxSub,
                    textAlign: TextAlign.center,
                    style: Styles.tsROpenSansBlackSemiBold12,
                  ),
                  Dimens.gapX15.height,
                  GridView.builder(
                      itemCount: 3,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate:
                          new SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2),
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                          child: Obx(
                            () => InkWell(
                              onTap: (){
                                controller.onButtonPress(index);
                                controller.setDialogBox(AppStrings.HIDE_DIALOG);
                                controller.navigationIsEnabled(true);
                              },
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: index == controller.selectedButton
                                          ? AppColors.lightGreen
                                          : AppColors.white,
                                      border: Border.all(
                                        color: index == controller.selectedButton
                                            ? AppColors.green
                                            : AppColors.grey,
                                      ),
                                      borderRadius:
                                          BorderRadius.circular(Dimens.radiusX2)),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: index == controller.selectedButton
                                                    ? AppColors.green
                                                    : AppColors.grey,
                                                shape: BoxShape.circle),
                                            child: Icon(Icons.check,
                                                color: AppColors.white, size: 14),
                                          ).paddingAll(5),
                                        ),
                                      ),
                                      Dimens.gapXHalf.height,
                                      Text(
                                        AppStrings.bldg_name1,
                                        style: Styles.tsROpenSansBlack1Bold12,
                                        textAlign: TextAlign.center,
                                      ),
                                      Dimens.gapXHalf.height,
                                      Text(
                                        AppStrings.residence,
                                        style: Styles.tsROpenSansBlack1SemiBold10,
                                      ),
                                      Dimens.gapXHalf.height,
                                      Text(
                                        AppStrings.residence_no1,
                                        style: Styles.tsROpenSansBlack1Bold12,
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                        );
                      }),
                ],
              ),
              Positioned(
                top: -50,
                left: 0.0,
                right: 0.0,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 2, color: AppColors.black1),
                  ),
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        AppImages.icHome,
                        height: 70.0,
                        width: 70.0,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
    ).paddingSymmetric(horizontal: Dimens.paddingX5);
  }
}
