import 'package:ambica/routes/routes.dart';
import 'package:ambica/widgets/basePage/IntroBasePage.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

class Introduction2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IntroBasePage(
        flex1: 50,
        flex2: 50,
        leftSwipe: Routes.SIGN_IN,
        rightSwipe: Routes.INTRODUCTION1,
        headerChildren: [
          SizedBox(
            height: Dimens.screenHeight / 8,
          ),
          Image.asset(
            AppImages.icIntro2,
            width: Dimens.screenWidth / 1.3,
            fit: BoxFit.cover,
          ),
          Divider(
            color: Colors.black,
            height: 0.0,
          )
        ],
        bodyChild: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  AppStrings.billsPayment,
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
                        color: Color(0xFFFFC7CC),
                        size: 8.0,
                      ),
                      Icon(
                        Icons.circle,
                        color: Colors.white,
                        size: 13.0,
                      ),
                      2.0.width,
                    ],
                  ),
                ),
                Dimens.gapX1.height,
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 16, 20),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: MaterialButton(
                      color: AppColors.white,
                      shape: CircleBorder(),
                      onPressed: () {
                        Get.toNamed(Routes.SIGN_IN);
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
