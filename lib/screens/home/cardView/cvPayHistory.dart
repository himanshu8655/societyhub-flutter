import 'package:ambica/widgets/container.dart';
import 'package:ambica/widgets/dateText.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

class CvPaymentHistory extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ContainerBorderedCurved(
      child: ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) => Divider(
          color: AppColors.blackLV,
        ),
        itemCount: 2,
        itemBuilder: (context, index) => Column(
        children: [
          //main,amt
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(AppStrings.maintainence,style: Styles.tsROpenSansBlackBold10,),
              Text(AppStrings.amt,style: Styles.tsROpenSansBlackSemiBold12,),
            ],
          ),
          //date,price
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DateText(text: AppStrings.dummyText),
              Text(AppStrings.rupeeSymbol+AppStrings.dummyNo,style: Styles.tsROpenSansGreenBold12),
            ],
          ),
          //bal,pay

        ],

      ).paddingSymmetric(horizontal: Dimens.paddingX3),
      ).paddingOnly(bottom: Dimens.paddingX4),
    );
  }
}
