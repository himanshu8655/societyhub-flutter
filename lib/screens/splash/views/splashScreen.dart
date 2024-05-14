import 'package:ambica/screens/splash/controllers/controller.dart';
import 'package:ambica/utilities/dimens.dart';
import 'package:ambica/utilities/strings.dart';
import 'package:ambica/utilities/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ambica/utilities/extensions.dart';

class SplashScreen extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    this.controller;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              AppImages.icAppLogo,
              height: Dimens.screenWidthXHalf,
              width: Dimens.screenWidthXHalf,
            ),
            Dimens.gapX2.height,
            Text(
              AppStrings.loremIpsum,
              textAlign: TextAlign.center,
              style: Styles.tsOpenSansGrey15,
            )
          ],
        ).paddingAll(Dimens.scaleX3),
      ),
    );
  }
}
