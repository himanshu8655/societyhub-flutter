import 'package:ambica/routes/routes.dart';
import 'package:ambica/utilities/colors.dart';
import 'package:ambica/utilities/dimens.dart';
import 'package:ambica/utilities/strings.dart';
import 'package:ambica/utilities/styles.dart';
import 'package:ambica/widgets/basePage/IntroBasePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/extensions.dart';
import 'package:get/get.dart';

class SignInView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IntroBasePage(
      flex1: 44,
      flex2: 56,
      headerChildren: [
        SizedBox(
          height: Dimens.screenHeight / 15,
        ),
        Image.asset(AppImages.icAppLogo,
            height: Dimens.screenWidthXThird, fit: BoxFit.cover),
        Dimens.gapX1.height,
        Text(
          AppStrings.signIn,
          textAlign: TextAlign.center,
          style: Styles.tsRalewayBlackBold30,
        ).paddingAll(Dimens.paddingX2),
        Dimens.gapX1.height,
        Expanded(
          child: Text(
            AppStrings.loremIpsum,
            textAlign: TextAlign.center,
            style: Styles.tsROpenSansBlack115,
          ).paddingSymmetric(horizontal: 40),
        )
      ],
      bodyChild: Column(
        children: [
          Center(
              child: Text(
            AppStrings.reg_number,
            textAlign: TextAlign.center,
            style: Styles.tsROpenSansWhite15,
          )),
          Dimens.gapX3.height,
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimens.radiusX5),
                border: Border.all(
                    width: 2, color: Colors.white, style: BorderStyle.solid)),
            child: TextField(

              style: Styles.tsROpenSansWhiteBold15,
              maxLength: 10,
              maxLines: 1,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  counterText: "",
                  hintText: AppStrings.enter_no,
                  hintStyle: TextStyle(fontSize: 15,color: AppColors.white.withOpacity(0.63)),
                  // contentPadding: EdgeInsets.all(12),
                  border: InputBorder.none),
              onChanged: (value) {},
            ),
          ).paddingSymmetric(horizontal: 25),
          Dimens.gapX5.height,
          InkWell(
            onTap: (){Get.toNamed(Routes.OTP);},
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(Dimens.radiusX5)
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(
                    44, Dimens.paddingX3, 44, Dimens.paddingX3),
                child: Text(AppStrings.send_otp,
                    style: Styles.tsROpenSansPrimaryBold15),
              ),
            ),
          ),
        ],
      ).paddingOnly(top: Dimens.screenHeight / 6.3),
    );
  }
}
