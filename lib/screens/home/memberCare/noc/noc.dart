import 'package:ambica/screens/home/memberCare/controllers/memberCareController.dart';
import 'package:ambica/widgets/basePage/appBasePage.dart';
import 'package:ambica/widgets/dateText.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

class NOC extends GetView<MemberCareController> {

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (context, index) => Divider(
        color: AppColors.blackLV,
      ),
      itemCount: 3,
      itemBuilder: (context, index) =>  Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(AppStrings.name,style:Styles.tsROpenSansBlack1Bold14,),
              Text("A-505",style:Styles.tsROpenSansPink1SemiBold14,)

            ],
          ),
          Dimens.gapX1.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(AppStrings.dummyText,style:Styles.tsROpenSansYellowBold12,),
              DateText(text: AppStrings.dummyText)
            ],
          ),
          Dimens.gapX1.height,
          Text(AppStrings.loremIpsum,style: Styles.tsROpenSansBlack110,)
        ],
      ).paddingSymmetric(horizontal:Dimens.appPadding),
    );
  }
}
