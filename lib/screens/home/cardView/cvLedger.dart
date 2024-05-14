import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

class CvLedger extends StatelessWidget {
  final String text;
  CvLedger({
    required this.text
});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: Dimens.radiusX5,width: Dimens.radiusX5,
                decoration: BoxDecoration(
                    color: AppColors.white,
                    shape: BoxShape.circle
                ),
                child: Center(child: SvgPicture.asset(AppImages.icBill,color: AppColors.pink_dark,)),
              ),
              Dimens.gapX1.width,
              Text(this.text,style: Styles.tsROpenSansWhiteBold15,),
            ],
          ),
          Icon(Icons.arrow_forward_ios_rounded,color: AppColors.white,size: 14,)


        ],
      ).paddingSymmetric(horizontal: 0,vertical: Dimens.paddingX2),
      style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.resolveWith((Color) => AppColors.pink_dark),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Dimens.radiusX2),
          ))),
      onPressed: () {
        // Get.toNamed(Routes.NOC);
      },
    ).paddingSymmetric(vertical: Dimens.paddingX3);
  }
}
