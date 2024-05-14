import 'package:ambica/screens/bottom_navbar/bottomNavController.dart';
import 'package:ambica/screens/bottom_navbar/bottom_nav.dart';
import 'package:ambica/screens/home/billPayment/billPayment.dart';
import 'package:ambica/screens/home/cardView/cvDialogBox.dart';
import 'package:ambica/screens/home/home_page.dart';
import 'package:ambica/screens/home/meetingCircular/meetingCircular.dart';
import 'package:ambica/screens/home/memberCare/memberCare.dart';
import 'package:ambica/screens/home/mySociety/cardView/cvshowContact.dart';
import 'package:ambica/screens/home/notifications.dart';
import 'package:ambica/widgets/basePage/appBasePage.dart';
import 'package:ambica/widgets/navigationDrawer.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';
import 'dart:ui'as ui;

class AppFragment extends GetView<BottomNavController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Obx(() => Stack(
        children: [
          controller.fragment[controller.selectedIndex],
    controller.dialogBox==AppStrings.HIDE_DIALOG?SizedBox():
          BackdropFilter(
              filter: ui.ImageFilter.blur(
                sigmaX: 35.0,
                sigmaY: 35.0,
              ),
              child: Align(
                alignment: Alignment.center,
                child:controller.dialogBox==AppStrings.HOME_DIALOG? CvDialogBox():CvShowContact(),
              )
          ),
        ],
      )),
      drawer: NavigationDrawer(),drawerEnableOpenDragGesture: false,
      bottomNavigationBar: BottomNav(),

    );
  }
}
