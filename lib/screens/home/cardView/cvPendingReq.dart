import 'package:ambica/widgets/container.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

class CvPendingReq extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ContainerBorderedCurved(

      child: Column(
        children: [
          //1st row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //column for gym date time
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(AppStrings.dummyText,style: Styles.tsRalewayBlackBold15,),
                  Dimens.gapX1.height,
                  Row(
                    children: [
                      SvgPicture.asset(AppImages.icDate),
                      Dimens.gapXHalf.width,
                      Text(AppStrings.dummyText,style: Styles.tsROpenSansBlack1SemiBold10),
                    ],
                  ),
                  Dimens.gapXHalf.height,
                  Row(
                    children: [
                      Icon(Icons.access_time,color: AppColors.pink,size: 10,),
                      Dimens.gapXHalf.width,
                      Text(AppStrings.dummyText,style: Styles.tsROpenSansBlack1SemiBold10)
                    ],
                  ),

                ],
              ),
              //row for right wrong
              Row(
                children: [

                  InkWell(
                    onTap: (){},
                    child: Container(
                      height: 36,width: 36,
                      decoration: BoxDecoration(
                          color: AppColors.green,
                          shape: BoxShape.circle
                      ),
                      child: Icon(Icons.check,color: AppColors.white,size: 14,),
                    ),
                  ),
                  Dimens.gapX1.width,
                  Container(
                    height: 36,width: 36,
                    decoration: BoxDecoration(
                        color: AppColors.pink1,
                        shape: BoxShape.circle
                    ),
                    child: Icon(Icons.clear,color: AppColors.white,size: 14),
                  ),
                ],
              )
            ],
          ),
          Dimens.gapX2.height,
          //2nd row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(AppStrings.book_by,style: Styles.tsROpenSansBlack1SemiBold10,),
              Text(AppStrings.payment,style: Styles.tsROpenSansBlack1SemiBold10,)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(AppStrings.name,style: Styles.tsROpenSansBlack1SemiBold15,),
              Text(AppStrings.pending,style:Styles.tsROpenSansPinkSemiBold10,)
            ],
          ),
        ],
      ).paddingAll(Dimens.paddingX3),
    );
  }
}
