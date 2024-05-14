import 'dart:async';

import 'package:ambica/routes/routes.dart';
import 'package:ambica/screens/bottom_navbar/bottomNavController.dart';
import 'package:ambica/widgets/basePage/appBasePage.dart';
import 'package:ambica/widgets/dateText.dart';
import 'package:ambica/widgets/titleBtn.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

class BillPayment extends GetView<BottomNavController> {
  final li=[AppStrings.payNow,AppStrings.getReceipt];
  final route=[5,6];
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        onBackPressed();
        return Future.value(false);
      },
      child: AppBasePage(
        title: InkWell(
          onTap: (){
            onBackPressed();
          },
          child: TitleBtn(
            text: AppStrings.billsPayment,
          ),
        ),
        body: [
          InkWell(
            onTap: () {
              controller.onTabChange(5);
            },
            child: ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) => Divider(
                color: AppColors.blackLV,
              ),
              itemCount: 2,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.fromLTRB(Dimens.appPadding,8,Dimens.appPadding,8),
                child: Column(
                  children: [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(AppStrings.maintainence,
                            style: Styles.tsROpenSansBlackBold10),
                        Text(
                          AppStrings.amt,
                          style: Styles.tsROpenSansBlackSemiBold12,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DateText(text: AppStrings.dummyText),
                        Text(
                          AppStrings.rupeeSymbol + AppStrings.dummyNo,
                          style: Styles.tsROpenSansPink1Bold16,
                        ),
                      ],
                    ),
                    Dimens.gapX1.height,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              AppStrings.bal,
                              style: Styles.tsROpenSansBlackBold10,
                            ),
                            Text(
                              AppStrings.rupeeSymbol + AppStrings.dummyNo,
                              style: Styles.tsROpenSansPink1Bold14,
                            )
                          ],
                        ),
                        InkWell(
                          onTap: (){controller.onTabChange(route[index]);},
                          child: Container(
                            width: 85,
                            height: 28,
                            decoration: BoxDecoration(
                                color: AppColors.pink1,
                                borderRadius: BorderRadius.circular(Dimens.radiusX4)

                            ),
                            child: Center(
                              child: Text(li[index],
                                  style: Styles.tsROpenSansWhiteSemiBold10),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
        cta: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
                        (Color) => AppColors.pink_dark),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(Dimens.radiusX1),
                    ))),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(AppImages.icPdf),
                    Dimens.gapX1.width,
                    Text(AppStrings.downLedger,
                        style: Styles.tsROpenSansWhiteSemiBold15)
                  ],
                ).paddingAll(11)
        ).paddingSymmetric(horizontal: Dimens.appPadding),
        ctaHeight: 70,
      ),
    );
  }

  void onBackPressed() {
    BottomNavController navController=Get.find();
    navController.onTabChange(0);
  }
}
