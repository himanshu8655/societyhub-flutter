import 'package:ambica/routes/routes.dart';
import 'package:ambica/utilities/colors.dart';
import 'package:ambica/utilities/dimens.dart';
import 'package:ambica/utilities/strings.dart';
import 'package:ambica/utilities/styles.dart';
import 'package:ambica/widgets/basePage/IntroBasePage.dart';
import 'package:ambica/widgets/basePage/onboardBase.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/extensions.dart';
import 'package:flutter/services.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OTP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IntroBasePage(
      flex1: 34,
      flex2: 66,
      headerChildren: [
        SizedBox(
          height: Dimens.screenHeight / 13,
        ),
        Text(AppStrings.enter_otp,
            textAlign: TextAlign.center, style: Styles.tsRalewayBlackBold27),
        Dimens.gapX1.height,
        Image.asset(
          AppImages.icOTP,
          width: Dimens.screenWidth/1.2,
          fit: BoxFit.cover,
        )
      ],
      bodyChild: Container(
        width: Dimens.screenWidth / 1.55,
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              AppStrings.enter4DigitOTP,
              textAlign: TextAlign.center,
              style: Styles.tsROpenSansWhite15,
            ),
            Dimens.gapX3.height,
            PinCodeTextField(
              appContext: context,
              length: 4,
              onChanged: (string) {},
              cursorColor: AppColors.white,
              enableActiveFill: true,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: TextInputType.number,
              textStyle: Styles.tsROpenSansWhite15,
              pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(10.0),
                  fieldWidth: 50,
                  activeFillColor: Colors.transparent,
                  inactiveFillColor: Colors.transparent,
                  selectedFillColor: Colors.transparent,
                  selectedColor: Colors.white,
                  inactiveColor: Colors.white,
                  activeColor: AppColors.white),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                AppStrings.resendOTP,
                textAlign: TextAlign.right,
                style: Styles.tsROpenSansWhite12,
              ),
            ),
            Dimens.gapX3.height,
            InkWell(
              onTap: (){Get.offAllNamed(Routes.APP_FRAGMENT);},
              child: Container(
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(Dimens.radiusX5)
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(
                      55, Dimens.paddingX3,55, Dimens.paddingX3),
                  child: Text(AppStrings.verify,
                      style: Styles.tsROpenSansPrimaryBold15),
                ),
              ),
            ),
          ],
        ).paddingOnly(top: Dimens.screenHeight / 5),
      ),
    );
  }
}
