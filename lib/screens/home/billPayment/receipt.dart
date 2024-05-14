import 'package:ambica/screens/bottom_navbar/bottomNavController.dart';
import 'package:ambica/widgets/basePage/appBasePage.dart';
import 'package:ambica/widgets/titleBtn.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

class Receipt extends GetView<BottomNavController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async {
        controller.onTabChange(4);
        return Future.value(false);
      },
      child: AppBasePage(title: InkWell(
        onTap: (){
          controller.onTabChange(4);
        },
        child: TitleBtn(
          text: AppStrings.receipt,
        ),
      ), body: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Dimens.gapX2.height,
            Text(
              AppStrings.rec_thnx,
              textAlign: TextAlign.left,
              style: Styles.tsROpenSansPink1Bold20,
            ),
            Dimens.gapX2.height,
            Row(
              children: [
                Text(
                  AppStrings.from,
                  style: Styles.tsROpenSansBlack1Bold14,
                ),
                Dimens.gapXHalf.width,
                Text(
                  AppStrings.dummyText,
                  style: Styles.tsROpenSansBlack1SemiBold14,
                )
              ],
            ),
            Dimens.gapX1.height,
            Row(
              children: [
                Text(
                  AppStrings.flat_no,
                  style: Styles.tsROpenSansBlack1Bold14,
                ),
                Dimens.gapXHalf.width,
                Text(
                  AppStrings.dummyText,
                  style: Styles.tsROpenSansBlack1SemiBold14,
                )
              ],
            ),
            Dimens.gapX1.height,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppStrings.sum_rs,
                  style: Styles.tsROpenSansBlack1Bold14,
                ),
                Dimens.gapXHalf.width,
                Expanded(
                    child: Text(
                  AppStrings.dummy_title,
                  style: Styles.tsROpenSansBlack1SemiBold14,
                  softWrap: true,
                )),
              ],
            ),
            Dimens.gapX1.height,
            Row(
              children: [
                Text(
                  AppStrings.by_chq_no,
                  style: Styles.tsROpenSansBlack1Bold14,
                ),
                Dimens.gapXHalf.width,
                Text(
                  AppStrings.dummyText,
                  style: Styles.tsROpenSansBlack1SemiBold14,
                )
              ],
            ),
            Dimens.gapX1.height,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      AppStrings.dated,
                      style: Styles.tsROpenSansBlack1Bold12,
                    ),
                    Dimens.gapXHalf.width,
                    Text(
                      AppStrings.dummyText,
                      style: Styles.tsROpenSansBlack1SemiBold10,
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      AppStrings.drawn,
                      style: Styles.tsROpenSansBlack1Bold12,
                    ),
                    Dimens.gapXHalf.width,
                    Text(
                      AppStrings.dummyText,
                      style: Styles.tsROpenSansBlack1SemiBold10,
                    )
                  ],
                ),
              ],
            ),
            Dimens.gapX1.height,
            Row(
              children: [
                Text(
                  AppStrings.toward_billNo,
                  style: Styles.tsROpenSansBlack1Bold14,
                ),
                Dimens.gapXHalf.width,
                Text(
                  AppStrings.dummyText,
                  style: Styles.tsROpenSansBlack1SemiBold14,
                )
              ],
            ),
            Dimens.gapX2.height,
            Text(
              AppStrings.rupeeSymbol + "2,233",
              style: Styles.tsROpenSansPink1Bold25,
            ),


          ],
        ).paddingSymmetric(horizontal: Dimens.appPadding)
      ],
      ctaHeight: 100,
      cta:
          Column(
            children: [
              Row(
                children: [
                  Text(
                    AppStrings.note,
                    style: Styles.tsROpenSansBlack1Bold12,
                  ),
                  Dimens.gapXHalf.width,
                  Expanded(
                      child: Text(
                        AppStrings.note_content,
                        style: Styles.tsROpenSansBlack110,
                        softWrap: true,
                      )),
                ],
              ),
              Dimens.gapX2.height,
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                              (color) => AppColors.pink_dark),
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
                      Text(AppStrings.downReceipt,
                          style: Styles.tsROpenSansWhiteSemiBold15)
                    ],
                  ).paddingAll(11)
              )
            ],
          ).paddingSymmetric(horizontal: Dimens.appPadding)

      ),
    );
  }
}
