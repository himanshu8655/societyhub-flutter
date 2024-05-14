import 'package:ambica/routes/routes.dart';
import 'package:ambica/screens/home/meetingCircular/cardView/attendOrMiss.dart';
import 'package:ambica/widgets/basePage/appBasePage.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';


class Meeting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
      },
      child: Column(
        children: [
          Dimens.gapX2.height,
          AttendMiss(attended: 2,),
          Divider(
            color: AppColors.blackLV,
          ),
          AttendMiss(attended: 1,),
          Divider(
            color: AppColors.blackLV,
          ),
          AttendMiss(attended: 0,),
          Divider(
            color: AppColors.blackLV,
          ),
        ],
      ).paddingSymmetric(horizontal: Dimens.appPadding),
    );
  }
}
