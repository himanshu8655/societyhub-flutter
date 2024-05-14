import 'package:ambica/routes/routes.dart';
import 'package:ambica/widgets/basePage/IntroBasePage.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

class Introduction1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IntroBasePage(
        flex1: 50,
        flex2: 50,
        leftSwipe: Routes.INTRODUCTION2,
        rightSwipe: Routes.INTRODUCTION1,
        headerChildren: [
          Dimens.gapX2.height,
          Align(
            alignment: Alignment.topRight,
            child: InkWell(
              onTap: () {
               Get.toNamed(Routes.SIGN_IN);
              },
              child: Text(
                AppStrings.skip,
                style: Styles.tsOpenSansPrimary15,
              ),
            ),
          ).paddingAll(Dimens.paddingX4),
          Dimens.gapX1.height,
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              AppImages.icIntro1,
              height: Dimens.screenHeight / 3.2,
              width: Dimens.screenHeight / 3.2,
              fit: BoxFit.cover,
            )
          )
        ],
        bodyChild: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  AppStrings.easyManagement,
                  style: Styles.tsRalewayWhiteBold27,
                  textAlign: TextAlign.center,
                ),
                Dimens.gapX2.height,
                Text(
                  AppStrings.loremIpsum,
                  style: Styles.tsROpenSansWhite15,
                  textAlign: TextAlign.center,
                ).paddingSymmetric(horizontal: 50),
              ],
            ),
            Column(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //Center Row contents horizontally,
                    children: [
                      Icon(
                        Icons.circle,
                        color: Colors.white,
                        size: 13.0,
                      ),
                      2.0.width,
                      Icon(
                        Icons.circle,
                        color: Color(0xFFFFC7CC),
                        size: 8.0,
                      )
                    ],
                  ),
                ),
                Dimens.gapX1.height,
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,0,16,20),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: MaterialButton(
                      color: AppColors.white,
                      shape: CircleBorder(),
                      onPressed: () {
                        Get.toNamed(Routes.INTRODUCTION2);
                      },
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: AppColors.primaryColor,
                        size: 14,
                      ),
                    ),
                  ),
                ),
              ],
            ),

          ],
        ).paddingOnly(top: Dimens.screenHeight / 7));
  }
}
