import 'package:ambica/screens/bottom_navbar/bottomNavController.dart';
import 'package:ambica/widgets/basePage/appBasePage.dart';
import 'package:ambica/widgets/searchBar.dart';
import 'package:ambica/widgets/titleBtn.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';
import 'package:flutter/rendering.dart';


class Notifications extends GetView<BottomNavController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        onBackPressed();
        return Future.value(false);
      },
      child: AppBasePage(
        title: InkWell(
          onTap: (){
            onBackPressed();
          },
          child: TitleBtn(
            text: AppStrings.notification,
          ),
        ),
        body: [
          SearchBar(),
          Dimens.gapX1.height,
          ListView.separated(
            shrinkWrap: true,
            separatorBuilder: (context, index) => Divider(
              color: AppColors.blackLV,
            ),
            itemCount: 3,
            itemBuilder: (context, index) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: Dimens.radiusX5,
                      width: Dimens.radiusX5,
                      decoration: BoxDecoration(
                          color: AppColors.pink1, shape: BoxShape.circle),
                      child: Center(child: SvgPicture.asset(AppImages.icCalendar,color: AppColors.white,)),
                    ),
                    Dimens.gapX1.width,
                    Container(
                      width: Dimens.screenWidth / 2.4,
                      child: Text(
                          AppStrings.dummy_title,
                          style: Styles.tsROpenSansBlack1SemiBold14),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(AppImages.icDate),
                        Dimens.gapXHalf.width,
                        Text(AppStrings.dummyText,
                            style: Styles.tsROpenSansBlack1SemiBold10),
                      ],
                    ),
                    Dimens.gapX1.height,
                    InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.chevron_right,
                          color: AppColors.pink1,
                        )),
                  ],
                ).paddingOnly(left: Dimens.paddingX3)
              ],
            ).paddingSymmetric(horizontal: Dimens.paddingX3),
          ),
        ],
      ),
    );
  }

  void onBackPressed() {
    BottomNavController navController=Get.find();
    navController.onTabChange(0);
  }
}
