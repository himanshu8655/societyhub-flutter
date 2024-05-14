import 'package:ambica/widgets/basePage/appBasePage.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

class ViewAttendance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (context, index) => Divider(
        color: AppColors.blackLV,
      ),
      itemCount: 3,
      itemBuilder: (context, index) => Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Center
              (
              child: ClipRRect(
                borderRadius: BorderRadius.circular(Dimens.radiusX2),
                child: Center(
                  child: Image.asset(
                    AppImages.icHome,
                    height: 50.0,
                    width: 60.0,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          Dimens.gapX1.width,
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.name,
                style: Styles.tsROpenSansBlack1Bold15,
              ),
              Text(
                AppStrings.dummyText,
                style: Styles.tsROpenSansBlackSemiBold12,
              ),
              Dimens.gapX1.height,
            ],
          ),
          Spacer(),
          index==0?Text(
            AppStrings.attended,
            style: Styles.tsROpenSansGreenSemiBold10,
          ):
          Text(
            AppStrings.missed,
            style: Styles.tsROpenSansPink1SemiBold10,
          )
        ],
      ).paddingSymmetric(horizontal: Dimens.appPadding),
    );
  }
}
