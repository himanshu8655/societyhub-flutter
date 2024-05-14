import 'package:ambica/utilities/colors.dart';
import 'package:ambica/utilities/dimens.dart';
import 'package:ambica/utilities/strings.dart';
import 'package:ambica/utilities/styles.dart';
import 'package:ambica/widgets/container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ambica/utilities/extensions.dart';

class CvDefaulter extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ContainerBorderedCurved(

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 50,
                width: 60,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(Dimens.radiusX2)
                ),

              ),
              Dimens.gapX1.width,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(AppStrings.name,style: Styles.tsROpenSansBlack1Bold15,),
                  Text(AppStrings.dummyText,style: Styles.tsROpenSansBlackSemiBold12,),

                ],
              )
            ],
          ),
          Align(alignment: Alignment.topCenter,
            child: Container(
              height: 40,width: 40,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 6.0,
                    ),
                  ],
                  color: AppColors.white,
                  shape: BoxShape.circle
              ),
              child: Icon(Icons.phone,color: AppColors.green,size: Dimens.radiusX3),
            ),),
        ],
      ).paddingAll(Dimens.paddingX2),
    );
  }
}
