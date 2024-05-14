import 'package:ambica/screens/home/cardView/cvMeeting.dart';
import 'package:ambica/screens/home/meetingCircular/controllers/meetingCircularController.dart';
import 'package:ambica/widgets/basePage/appBasePage.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

class AnnounceDetail extends GetView<MeetingCircularController> {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        children: [
          Dimens.gapX2.height,
          Align(
            alignment: Alignment.topRight,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(AppImages.icDate,height: 10,width: 10,),
                Dimens.gapXHalf.width,
                Text(AppStrings.dummyText,
                    style: Styles.tsROpenSansBlack1SemiBold10),
              ],
            ),
          ),
          Dimens.gapX2.height,
          Align(
              alignment: Alignment.topLeft,
              child: Text(
                AppStrings.loremIpsum,
                style: Styles.tsROpenSansBlack1Bold14,
              )).paddingOnly(right: Dimens.paddingX4),
          Dimens.gapX2.height,
          Row(
            children: [
              Text(
                AppStrings.from,
                style: Styles.tsROpenSansPinkSemiBold10,
              ),
              Dimens.gapXHalf.width,
              Text(
                AppStrings.dummyText,
                style: Styles.tsROpenSansBlack1SemiBold12,
              ),
            ],
          ),
          Dimens.gapX1.height,
          Row(
            children: [
              Text(
                AppStrings.to,
                style: Styles.tsROpenSansPinkSemiBold10,
              ),
              Dimens.gapXHalf.width,
              Text(
                AppStrings.dummyText,
                style: Styles.tsROpenSansBlack1SemiBold12,
              ),
            ],
          ),
          Dimens.gapX2.height,
          Text(
            AppStrings.loremIpsum,
            style: Styles.tsROpenSansBlack112,
          ),
          Dimens.gapX3.height,
          InkWell(
            onTap: (){},
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimens.radiusX1),
                    color: AppColors.pinkPDF
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(AppImages.icPdf),
                        Dimens.gapX1.width,
                        Text(AppStrings.dummyText,
                            style: Styles.tsROpenSansBlack1SemiBold12)
                      ],
                    ),
                    Text(AppStrings.open,style: Styles.tsROpenSansPink1SemiBold12,)

                  ],
                ).paddingSymmetric(horizontal: Dimens.paddingX3,vertical: Dimens.paddingX2)
            ),
          ),

        ],
      ).paddingSymmetric(horizontal: Dimens.appPadding),
    );
  }
}
