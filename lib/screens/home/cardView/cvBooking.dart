import 'package:ambica/widgets/container.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

class CvBooking extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ContainerBorderedCurved(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(AppStrings.bdayParty,style: Styles.tsRalewayBlackBold15,),
              InkWell(onTap: (){},child: Text(AppStrings.view_detail,style: Styles.tsROpenSansPink10,))
            ],
          ),
          Dimens.gapX1.height,
          Row(
            children: [
              SvgPicture.asset(AppImages.icDate),
              Dimens.gapXHalf.width,
              Text(AppStrings.dummyText,style: Styles.tsROpenSansBlack1SemiBold10),
              Dimens.gapX2.width,
              Icon(Icons.access_time,color: AppColors.pink,size: 10,),
              Dimens.gapXHalf.width,
              Text(AppStrings.dummyText,style: Styles.tsROpenSansBlack1SemiBold10)

            ],
          ),
          Dimens.gapX2.height,
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
