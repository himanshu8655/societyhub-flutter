import 'package:ambica/screens/bottom_navbar/bottomNavController.dart';
import 'package:ambica/screens/home/mySociety/cardView/cvMemListCom.dart';
import 'package:ambica/screens/home/mySociety/cardView/cvMemListOnlyName.dart';
import 'package:ambica/screens/home/mySociety/cardView/cvMemberList.dart';
import 'package:ambica/screens/home/mySociety/cardView/cvNominee.dart';
import 'package:ambica/screens/home/mySociety/controllers/mySocietyController.dart';
import 'package:ambica/widgets/basePage/appBasePage.dart';
import 'package:ambica/widgets/container.dart';
import 'package:ambica/widgets/searchBar.dart';
import 'package:ambica/widgets/tabBar.dart';
import 'package:ambica/widgets/textHeading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

class MemberList extends GetView<MySocietyController> {
  BottomNavController navController = Get.find();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          navController.post==AppStrings.member?SizedBox():SearchBar(),
          Dimens.gapX2.height,
          CvMemberList(),
          Dimens.gapX2.height,
          CvNominee(),
          TextHeading(
            text: AppStrings.member_list,
            endWidget: navController.post==AppStrings.member?SizedBox():InkWell(
              onTap: (){
                navController.setDialogBox(AppStrings.SHOW_CONTACT_DIALOG);
                navController.navigationIsEnabled(false);
              },
              child: Container(
                decoration: BoxDecoration(
                    color: AppColors.pink1,
                    borderRadius: BorderRadius.circular(Dimens.radiusX4)),
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 6,10, 6),
                    child: Row(
                      children: [
                        Icon(
                          Icons.settings,
                          color: AppColors.white,
                          size: 10,
                        ),
                        3.0.width,
                        Text(AppStrings.settings,
                            style: Styles.tsROpenSansWhiteSemiBold10),
                      ],
                    )),
              ),
            ),
          ),
          Dimens.gapX1.height,
          navController.post==AppStrings.member?ContainerBorderedCurved(child: CvMemberList().paddingAll(Dimens.paddingX3)):SizedBox(),
          navController.post==AppStrings.member?CvMemListOnlyName():SizedBox(),
          navController.post==AppStrings.member?SizedBox():CvMemberListCom(nominee: true,),
          navController.post==AppStrings.member?SizedBox():CvMemberListCom(nominee: false,),


        ],
      ).paddingSymmetric(horizontal: Dimens.appPadding),
    );
  }
}
