import 'package:ambica/utilities/colors.dart';
import 'package:ambica/utilities/dimens.dart';
import 'package:ambica/utilities/strings.dart';
import 'package:ambica/utilities/styles.dart';
import 'package:ambica/widgets/container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:ambica/utilities/extensions.dart';
class CvOutStandBill extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ContainerBorderedCurved(
      shadow: false,
      color: AppColors.yellow,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: Dimens.radiusX5,width: Dimens.radiusX5,
                decoration: BoxDecoration(
                    color: AppColors.white,
                    shape: BoxShape.circle
                ),
                child: Center(child: SvgPicture.asset(AppImages.icBill,height: Dimens.radiusX3,width: Dimens.radiusX3)),
              ),
              Text(AppStrings.rupeeSymbol+AppStrings.dummyNo,style: Styles.tsROpenSansWhiteBold15,),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [

                  Dimens.gapX1.height,
                  Text(AppStrings.out_bill,style: Styles.tsROpenSansWhiteBold15,),
                  Dimens.gapXHalf.height,
                  Text(AppStrings.dummyText,style: Styles.tsROpenSansWhiteSemiBold10,overflow: TextOverflow.ellipsis,)
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(Dimens.radiusX4)

                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(18,8,18,8),
                  child: Text(AppStrings.payNow,
                      style: Styles.tsROpenSansYellowSemiBold10),
                ),
              ),
            ],
          )

        ],
      ).paddingAll(Dimens.paddingX3),
    );
  }
}
