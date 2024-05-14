import 'package:ambica/widgets/container.dart';
import 'package:ambica/widgets/dateText.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

class CvMyDues extends StatelessWidget {
  final String date;
  final String amt;
  final String bal;


  CvMyDues({required this.date, required this.amt, required this.bal});

  @override
  Widget build(BuildContext context) {
    return ContainerBorderedCurved(
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) => Divider(
                color: AppColors.blackLV,

              ),
          itemCount: 2,
          itemBuilder: (context, index) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(AppStrings.maintainence,
                          style: Styles.tsROpenSansBlackBold10),
                      Text(
                        AppStrings.amt,
                        style: Styles.tsROpenSansBlackSemiBold12,
                      ),
                    ],
                  ).paddingSymmetric(horizontal: Dimens.paddingX3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DateText(text: AppStrings.dummyText),
                      Text(
                        AppStrings.rupeeSymbol + this.bal,
                        style: Styles.tsROpenSansPink1Bold16,
                      ),
                    ],
                  ).paddingSymmetric(horizontal: Dimens.paddingX3),
                  Dimens.gapX1.height,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppStrings.bal,
                            style: Styles.tsROpenSansBlackBold10,
                          ),
                          Text(
                            AppStrings.rupeeSymbol + " " + this.bal,
                            style: Styles.tsROpenSansPink1Bold14,
                          )
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.pink1,
                          borderRadius: BorderRadius.circular(Dimens.radiusX4)

                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20,6,20,6),
                          child: Text(AppStrings.payNow,
                              style: Styles.tsROpenSansWhiteSemiBold10),
                        ),
                      ),

                    ],
                  ).paddingSymmetric(horizontal: Dimens.paddingX3),
                ],
              )
      ).paddingOnly(bottom: Dimens.paddingX4),
    );
  }
}
