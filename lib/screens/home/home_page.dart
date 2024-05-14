import 'package:ambica/screens/bottom_navbar/bottomNavController.dart';
import 'package:ambica/screens/home/cardView/cvActiveMemBook.dart';
import 'package:ambica/screens/home/cardView/cvAnnouncement.dart';
import 'package:ambica/screens/home/cardView/cvBooking.dart';
import 'package:ambica/screens/home/cardView/cvDefaulter.dart';
import 'package:ambica/screens/home/cardView/cvLedger.dart';
import 'package:ambica/screens/home/cardView/cvMeeting.dart';
import 'package:ambica/screens/home/cardView/cvOutstandBill.dart';
import 'package:ambica/screens/home/cardView/cvPendingReq.dart';
import 'package:ambica/utilities/colors.dart';
import 'package:ambica/utilities/dimens.dart';
import 'package:ambica/utilities/storage.dart';
import 'package:ambica/utilities/strings.dart';
import 'package:ambica/utilities/styles.dart';
import 'package:ambica/widgets/basePage/appBasePage.dart';
import 'package:ambica/widgets/textHeading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/extensions.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'cardView/cvDues.dart';
import 'cardView/cvPayHistory.dart';

class HomePage extends GetView<BottomNavController> {
  @override
  Widget build(BuildContext context) {
    return AppBasePage(
      actions: Builder(
        builder: (context) {
          return InkWell(
            onTap: () => controller.enableNavigation?Scaffold.of(context).openDrawer():null,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(AppImages.icDrawer),
            ),
          );
        },
      ),
      header: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 2, color: AppColors.white),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                AppImages.icPerson,
                height: 45.0,
                width: 45.0,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Dimens.gapXHalf.width,
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(AppStrings.name, style: Styles.tsROpenSansWhiteBold20),
              Text(Storage.getMemberType(), style: Styles.tsROpenSansWhiteSemiBold12),
            ],
          )
        ],
      ),
      body: [
        Column(
          children: [
            Dimens.gapX1.height,
            TextHeading(
                text: AppStrings.rec_announcement,
              endWidget:controller.post==AppStrings.member?SizedBox():Container(
                height: 22,
                width: 22,
                decoration: BoxDecoration(
                    color: AppColors.pink1,
                    shape: BoxShape.circle
                ),
                child: Center(
                  child: Icon(Icons.add,color: AppColors.white,size: 10),
                ),
              ),
            ),
            CvAnnouncement(
              subtext: AppStrings.loremIpsum,
              title: AppStrings.dummy_title,
              date: AppStrings.dummyText,
              time: AppStrings.dummyText,
            ),
            controller.post==AppStrings.member?TextHeading(text: AppStrings.dues):SizedBox(),
            controller.post==AppStrings.member?CvMyDues(
                date: AppStrings.dummyText,
                amt: AppStrings.dummyNo,
                bal: AppStrings.dummyNo):SizedBox(),
            controller.post==AppStrings.member?SizedBox():TextHeading(text: AppStrings.pending_req),
            controller.post==AppStrings.member?SizedBox():CvPendingReq(),
            CvMeeting(),
            controller.post==AppStrings.member?SizedBox():CvOutStandBill(),

            controller.post==AppStrings.member?TextHeading(text: AppStrings.pay_history):SizedBox(),
            controller.post==AppStrings.member?CvPaymentHistory():SizedBox(),
            controller.post==AppStrings.member?SizedBox():TextHeading(text: AppStrings.today_booking),
            controller.post==AppStrings.member?SizedBox():CvBooking(),
            controller.post==AppStrings.member?SizedBox():CvActiveMember(),
            CvLedger(text: controller.post==AppStrings.member?AppStrings.viewLedger:AppStrings.viewLedgerOfMember,),
            controller.post==AppStrings.member?SizedBox():
            TextHeading(
              text: AppStrings.top_Defaulter,
              endWidget: Text(
                AppStrings.view_more,
                style: Styles.tsROpenSansPink110,
              ),
            ),
            controller.post==AppStrings.member?SizedBox():CvDefaulter(),
          ],
        ).paddingSymmetric(horizontal: Dimens.paddingX3),
      ],
    );

  }
}
