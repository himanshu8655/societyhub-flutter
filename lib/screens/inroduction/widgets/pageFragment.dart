import 'package:ambica/routes/routes.dart';
import 'package:ambica/screens/inroduction/controllers/controller.dart';
import 'package:ambica/utilities/colors.dart';
import 'package:ambica/utilities/dimens.dart';
import 'package:ambica/utilities/strings.dart';
import 'package:ambica/utilities/styles.dart';
import 'package:ambica/widgets/paint_wave.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ambica/utilities/extensions.dart';

class PageFragment extends GetView<IntroductionController> {
  final String image;
  final String title;
  final String subText;
  final int activePage;

  PageFragment({
    required this.image,
    required this.title,
    required this.subText,
    required this.activePage,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Column(
            children: [
              Dimens.gapX2.height,
              this.activePage == 0
                  ? Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: () {
                          Get.offAllNamed(Routes.SIGN_IN);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            AppStrings.skip,
                            style: Styles.tsOpenSansPrimary15,
                          ),
                        ),
                      ),
                    ).paddingSymmetric(horizontal: 15.0)
                  : Dimens.gapX5.height,
              Dimens.gapX1.height,
              Image.asset(
                this.image,
                height: Dimens.screenWidth/1.7,
                fit: BoxFit.cover,
              ),
              // Dimens.gapX4.height,
            ],
          ),
          PaintWave(
            height: Dimens.screenHeightXHalf,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  this.title,
                  style: Styles.tsRalewayWhiteBold27,
                ),
                Dimens.gapX2.height,
                Text(
                  this.subText,
                  textAlign: TextAlign.center,
                  style: Styles.tsROpenSansWhiteBold15,
                ),
                Dimens.gapX4.height,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //Center Row contents horizontally,
                  children: [
                    Icon(
                      Icons.circle,
                      color: activePage == 0 ? Colors.white : Color(0xFFFFC7CC),
                      size: activePage == 0 ? 13.0 : 8.0,
                    ),
                    2.0.width,
                    Icon(
                      Icons.circle,
                      color: activePage == 1 ? Colors.white : Color(0xFFFFC7CC),
                      size: activePage == 1 ? 13.0 : 8.0,
                    )
                  ],
                ),
              ],
            ),
            nextButton: MaterialButton(
              color: AppColors.white,
              shape: CircleBorder(),
              onPressed: () {
                if (this.activePage == 0) {
                  controller.pageController.nextPage(
                      duration: Duration(milliseconds: 700),
                      curve: Curves.ease);
                } else {
                  Get.offAndToNamed(Routes.SIGN_IN);
                }
              },
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                color: AppColors.primaryColor,
                size: 14,
              ),
            ),
          )
        ],
      ),
    );
  }
}
