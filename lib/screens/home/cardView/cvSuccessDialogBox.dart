import 'package:ambica/widgets/container.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

class CvSuccessDialogBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ContainerBorderedCurved(

      child: Column(
        children: [
          Image.asset(AppImages.icSuccess),
          Dimens.gapX2.height,
          Text(AppStrings.success,style: Styles.tsROpenSansBlack1Bold20,),
          Dimens.gapX2.height,
          Text(AppStrings.success_subtext,
            textAlign: TextAlign.center,style: Styles.tsROpenSansBlack1SemiBold15,),
          Dimens.gapX2.height,
        ],
      ).paddingAll(Dimens.paddingX3),
    ).paddingAll(Dimens.paddingX5);
  }
}
