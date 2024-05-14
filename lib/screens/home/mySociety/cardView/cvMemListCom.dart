import 'package:ambica/widgets/container.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

class CvMemberListCom extends StatelessWidget {
  bool nominee;
  CvMemberListCom({required this.nominee});
  @override
  Widget build(BuildContext context) {
    return ContainerBorderedCurved(child:
    Padding(
      padding: const EdgeInsets.fromLTRB(Dimens.paddingX3,Dimens.paddingX3,Dimens.paddingX3,Dimens.paddingX1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //1st row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: AppColors.white, shape: BoxShape.circle),
                    child: Image.asset(AppImages.icPerson),
                  ),
                  Dimens.gapXHalf.width,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppStrings.name,
                        style: Styles.tsRalewayBlack1Bold15,
                      ),
                      Dimens.gapXHalf.height,
                      Text(
                        AppStrings.dummyText,
                        style: Styles.tsROpenSansBlack112,
                      )
                    ],
                  )
                ],
              ),
              Text(
                "A-505",
                style: Styles.tsROpenSansPink1Bold16,
              )
            ],
          ),
          Dimens.gapX1.height,
          Align(
              alignment: Alignment.centerLeft,
              child: Text(AppStrings.con_details,
                  style: Styles.tsROpenSansBlack1SemiBold12)),
          Divider(
            color: AppColors.grey3,
          ),
          Row(
            children: [
              SvgPicture.asset(AppImages.icPhone,height: 12,width: 12,),
              Dimens.gapXHalf.width,
              Text(
                AppStrings.dummyText,
                style: Styles.tsROpenSansBlack1SemiBold12,
              )
            ],
          ),
          Dimens.gapX1.height,
          Row(
            children: [
              SvgPicture.asset(AppImages.icMail, height: 10, width: 10),
              Dimens.gapXHalf.width,
              Text(
                AppStrings.dummyText,
                style: Styles.tsROpenSansBlack1SemiBold12,
              )
            ],
          ),
          Dimens.gapX2.height,
          nominee?
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimens.radiusX2),
              border: Border.all(
                color: AppColors.pink1,
              ),
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                    top:-25,
                    child: Text(
                      AppStrings.nominee,
                      style: Styles.tsROpenSansBlack1Bold12WB,
                    )),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          AppStrings.joint_member,
                          style: Styles.tsROpenSansBlack1SemiBold12,
                        ),
                        Text(
                          AppStrings.name,
                          style: Styles.tsROpenSansNav_draw_colorSemiBold12,
                        )
                      ],
                    ),
                    Dimens.gapX1.height,
                    Row(
                      children: [
                        Text(
                          AppStrings.asso_member,
                          style: Styles.tsROpenSansBlack1SemiBold12,
                        ),
                        Text(
                          AppStrings.name,
                          style: Styles.tsROpenSansNav_draw_colorSemiBold12,
                        )
                      ],
                    ),
                  ],
                )
              ],
            ).paddingAll(Dimens.paddingX3),

          )

         :Row(
            children: [
              Text(AppStrings.nominee+" :",style: Styles.tsROpenSansBlack1Bold12),
              Dimens.gapXHalf.width,
              Text(AppStrings.no,style: Styles.tsROpenSansPink1SemiBold12,)
            ],
          ),
          Dimens.gapX1.height,
          Divider(
            color: AppColors.grey3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.remove_red_eye_outlined,color: AppColors.pink1,),
              Dimens.gapXHalf.width,
              Text(AppStrings.viewLedger,style: Styles.tsROpenSansBlack1SemiBold10,)
            ],
          ),

        ],
      ),
    ),
    );
    
  }
}
