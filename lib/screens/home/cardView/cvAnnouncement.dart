import 'package:ambica/widgets/container.dart';
import 'package:ambica/widgets/dateText.dart';
import 'package:ambica/widgets/timeText.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

class CvAnnouncement extends StatelessWidget {
  final String title;
  final String subtext;
  final String time;
  final String date;

  CvAnnouncement({
    required this.subtext,required this.title,required this.time,required this.date,
});

  @override
  Widget build(BuildContext context) {
    return ContainerBorderedCurved(color: AppColors.white,
      child: Column(
        children: [
          Text(this.title,textAlign: TextAlign.left,style: Styles.tsROpenSansBlack1Bold15,),
          Dimens.gapX1.height,
          Row(
            children: [
              DateText(text: AppStrings.dummyText),
              Dimens.gapX3.width,
             TimeText(text: AppStrings.dummyText)

            ],
          ),
          Dimens.gapX2.height,
          Text(
            this.subtext+AppStrings.loremIpsum,
            maxLines: 3,
            textAlign: TextAlign.left,
            style: Styles.tsROpenSansBlackSubText10,
            overflow: TextOverflow.ellipsis,
          ),
          Dimens.gapX1.height,
          Align(
            alignment: Alignment.centerRight,
            child: InkWell(
              onTap: () {},
              child: Text(AppStrings.view_detail,style: Styles.tsROpenSansPink10)
            ),
          )

        ],
      ).paddingAll(Dimens.paddingX3),
    );
  }
}
