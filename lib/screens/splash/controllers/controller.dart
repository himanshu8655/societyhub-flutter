import 'dart:async';
import 'package:ambica/routes/routes.dart';
import 'package:ambica/utilities/constants.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    _onboard();
    super.onInit();
  }

  _onboard() async {
    await Future.delayed(Constants.duration2000);

    Get.offAllNamed(Routes.INTRODUCTION1);
  }
}
