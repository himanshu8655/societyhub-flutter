import 'package:ambica/widgets/container.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

class CvActiveMember extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0,10,0,20),

            child: Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 6.0,
                    ),
                  ],
                  color: AppColors.green,
                  border: Border.all(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(Dimens.radiusX2)
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Column(
                    children: [
                      Dimens.gapX2.height,
                      Align(alignment: Alignment.center,
                          child: Text("32",style: Styles.tsROpenSansWhiteBold25,),
                      ),
                      Dimens.gapX1.height,
                      Align(alignment: Alignment.bottomCenter,
                          child: Text(
                            AppStrings.act_member,style: Styles.tsROpenSansWhiteSemiBold10,
                          )
                      ),

                    ],
                  ),

                  Positioned(
                    top: -35,
                    left: 0.0,right: 0.0,
                    child: Container(
                      height: 40,width: 40,
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          )
                        ],
                      ),
                      child: Center(child: SvgPicture.asset(AppImages.icGrp)),
                    ),
                  ),
                ],
              ).paddingAll(Dimens.paddingX3),
            ),
          ),
        ),
        Dimens.gapX2.width,
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0,10,0,20),
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 6.0,
                    ),
                  ],
                  color: AppColors.blue,
                  border: Border.all(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(Dimens.radiusX2)
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Column(
                    children: [
                      Dimens.gapX2.height,
                      Align(alignment: Alignment.center,
                          child: Text("32",style: Styles.tsROpenSansWhiteBold25,)
                      ),
                      Dimens.gapX1.height,
                      Align(alignment: Alignment.bottomCenter,
                          child: Text(AppStrings.up_bookings,style: Styles.tsROpenSansWhiteSemiBold10,)
                      ),
                    ],
                  ),
                  Positioned(
                    top: -35,left: 0.0,right: 0.0,

                    child: Container(
                      height: 40,width: 40,
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          )
                        ],
                      ),
                      child:Center(child: SvgPicture.asset(AppImages.icCalendar,)),


    ),
                  ),
                ],
              ).paddingAll(Dimens.paddingX3),
            ),
          ),
        )
      ],
    );
  }
}
