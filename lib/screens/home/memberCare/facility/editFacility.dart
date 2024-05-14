import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

class EditFacility extends StatelessWidget {
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
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                AppStrings.dummyText,
                style: Styles.tsROpenSansBlack1Bold14,
              ),
              Dimens.gapX1.height,
              Text(AppStrings.rupeeSymbol + AppStrings.dummyNo+' '+AppStrings.perHr,style: Styles.tsROpenSansPink1Bold12,)
            ],
          ),
          Spacer(),
          Container(
            height: 26,
            width: 26,
            decoration: BoxDecoration(
                color: AppColors.pink1, borderRadius: BorderRadius.circular(100)),
            child: Icon(
              Icons.edit,
              size: Dimens.radiusX2Half,
              color: AppColors.white,
            ),
          ),
          Dimens.gapX1.width,
          Container(
              height: 26,
              width: 26,
              decoration: BoxDecoration(
                  color: AppColors.pink1,
                  borderRadius: BorderRadius.circular(100)),
              child: Center(
                  child: SvgPicture.asset(
                    AppImages.icTrash,
                    color: AppColors.white,
                    height: Dimens.radiusX2Half,
                    width: Dimens.radiusX2Half,
                  )))
        ],
      )
    ).paddingSymmetric(horizontal: Dimens.appPadding);
  }
}
