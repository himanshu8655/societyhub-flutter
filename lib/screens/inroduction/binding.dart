import 'package:ambica/screens/inroduction/controllers/controller.dart';
import 'package:ambica/screens/splash/controllers/controller.dart';
import 'package:get/get.dart';

class IntroductionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IntroductionController>(
      () => IntroductionController(),
    );
  }
}
