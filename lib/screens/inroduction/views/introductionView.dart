import 'package:ambica/screens/inroduction/controllers/controller.dart';
import 'package:ambica/screens/inroduction/widgets/pageFragment.dart';
import 'package:ambica/utilities/colors.dart';
import 'package:ambica/utilities/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IntroductionView extends GetView<IntroductionController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: PageView(
        controller: controller.pageController,
        children: [
          PageFragment(
            image: AppImages.icIntro1,
            title: AppStrings.easyManagement,
            subText: AppStrings.loremIpsum,
            activePage: 0,
          ),
          PageFragment(
            image: AppImages.icIntro2,
            title: AppStrings.billsPayment,
            subText: AppStrings.loremIpsum,
            activePage: 1,
          ),
        ],
      ),
    );
  }
}
