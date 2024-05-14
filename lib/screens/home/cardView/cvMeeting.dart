import 'package:ambica/utilities/colors.dart';
import 'package:ambica/utilities/dimens.dart';
import 'package:ambica/utilities/strings.dart';
import 'package:ambica/utilities/styles.dart';
import 'package:ambica/widgets/container.dart';
import 'package:ambica/widgets/dateText.dart';
import 'package:ambica/widgets/timeText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/extensions.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CvMeeting extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimens.radiusX2),
        color: AppColors.pink1,

      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: Dimens.radiusX5,width: Dimens.radiusX5,
                decoration: BoxDecoration(
                    color: AppColors.white,
                    shape: BoxShape.circle
                ),
                child: Center(child: SvgPicture.asset(AppImages.icMeetCard,height: Dimens.radiusX3,width: Dimens.radiusX3)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: Dimens.paddingX1),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    DateText(text: AppStrings.dummyText,iconColor: AppColors.white,style:Styles.tsROpenSansWhiteSemiBold10,),
                    Dimens.gapX2.width,
                    TimeText(text: AppStrings.dummyText,iconColor: AppColors.white,style: Styles.tsROpenSansWhiteSemiBold10,)
                  ],
                ),
              ),
            ],
          ),
          Dimens.gapX1.height,
          Text(AppStrings.meet,style: Styles.tsROpenSansWhiteBold15,),
          Dimens.gapX1.height,
          Container(width: Dimens.screenWidth/3,child: Text(AppStrings.loremIpsum,style: Styles.tsROpenSansWhiteSemiBold10,overflow: TextOverflow.ellipsis,))
        ],
      ).paddingAll(Dimens.paddingX3),

    );
  }
}
