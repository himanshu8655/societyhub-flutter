import 'package:ambica/widgets/dateText.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

class BillInstructionDetail extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Dimens.gapX15.height,
        Align(alignment: Alignment.topRight,
            child: DateText(text: AppStrings.dummyText)),
        Dimens.gapX2.height,
        Row(
          children: [
            Text(AppStrings.flat_number,style: Styles.tsROpenSansBlack1Bold14,),
            Text(AppStrings.dummyText,style: Styles.tsROpenSansBlack1Bold14,)

          ],
        ),
        Dimens.gapX2.height,
        Row(
          children: [
            Text(AppStrings.acc_head,style: Styles.tsROpenSansPink1Bold12,),
            Text(AppStrings.dummyText,style: Styles.tsROpenSansBlack1Bold12,)

          ],
        ),
        Dimens.gapX1.height,
        Row(
          children: [
            Text(AppStrings.eff_date,style: Styles.tsROpenSansPink1Bold12,),
            Text(AppStrings.dummyText,style: Styles.tsROpenSansBlack1Bold12,)

          ],
        ),
        Dimens.gapX1.height,
        Row(
          children: [
            Text(AppStrings.exist_value,style: Styles.tsROpenSansPink1Bold12,),
            Text(AppStrings.dummyText,style: Styles.tsROpenSansBlack1Bold12,)

          ],
        ),
        Dimens.gapX1.height,
        Row(
          children: [
            Text(AppStrings.new_value,style: Styles.tsROpenSansPink1Bold12,),
            Text(AppStrings.dummyText,style: Styles.tsROpenSansBlack1Bold12,)

          ],
        ),
        Dimens.gapX2.height,
        Text(AppStrings.loremIpsum,style: Styles.tsROpenSansBlack112,)


      ],
    ).paddingSymmetric(horizontal: Dimens.appPadding);
  }
}
