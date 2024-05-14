import 'package:ambica/screens/bottom_navbar/bottomNavController.dart';
import 'package:ambica/screens/bottom_navbar/bottom_nav.dart';
import 'package:ambica/screens/home/home_page.dart';
import 'package:ambica/screens/home/meetingCircular/announcements/announcement.dart';
import 'package:ambica/screens/home/memberCare/memberCare.dart';
import 'package:ambica/screens/home/notifications.dart';
import 'package:ambica/utilities/imports.dart';
import 'package:ambica/utilities/dimens.dart';
import 'package:ambica/utilities/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
class AppBasePage extends GetView<BottomNavController> {
  final Widget? header;
  final Widget? title;
  final List<Widget>? body;
  final Widget? cta;
  final Widget? actions;
  final List<Tab>? tab;
  final EdgeInsetsGeometry bodyPadding;
  final Widget? tabBar;
  final Widget?tabBarView;
  final double? ctaHeight;



  AppBasePage({
    this.header,
     this.title,
    this.body,
    this.cta,
    this.actions,
    this.tab,
    this.bodyPadding = const EdgeInsets.fromLTRB(16, 10, 16, 10),
    this.tabBar,
    this.tabBarView,
    this.ctaHeight,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
        fit: StackFit.expand,
        children: [
          Align(
              alignment: Alignment.topCenter,
              child: Stack(
                children: [
                  Image.asset(
                    AppImages.icHome,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    height: Dimens.screenWidthXThird,
                  ),
                  this.header == null
                      ? Positioned(
                          top: Dimens.screenWidthXHalf / 5,
                          child: InkWell(
                            onTap: () => Get.back,
                            child: Container(
                              padding: const EdgeInsets.all(14.0),
                              width: Dimens.screenWidth/1.05,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: this.title,
                                  ),
                                  Spacer(),
                                  if (this.actions != null) this.actions!

                                ],
                              ),
                            ),
                          ),
                        )
                      : Positioned(
                          top: Dimens.screenWidthXHalf / 5.4,
                          child: Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            width: Dimens.screenWidth,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(child: this.header),

                                if (this.actions != null) this.actions!
                              ],
                            ),
                          ),
                        ),
                ],
              )),
          Positioned(
            bottom: 0,
            child: Stack(
              children: [
                Container(
                  width: Dimens.screenWidth,
                  height: Dimens.screenHeight / 1.27,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(19))),
                  child: this.tabBar != null
                      ? Column(
                          children: [
                            tabBar!,
                            Expanded(child: tabBarView!),
                          ],
                        )
                      : SingleChildScrollView(
                          padding: bodyPadding,
                          child: Column(
                            children: [
                              for (Widget widget in body!) widget,
                              if (cta != null) SizedBox(height: ctaHeight)
                            ],
                          ),
                        ),
                ),
                if (cta != null)
                  Positioned(
                    bottom: 0,
                    child: Container(
                      height: ctaHeight!-10,
                      width: Dimens.screenWidth,
                      color: AppColors.white,
                      child: Center(child: cta),
                    ),
                  )
              ],
            ),
          ),
        ],
      );
  }
}


