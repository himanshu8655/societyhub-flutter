import 'package:ambica/screens/inroduction/controllers/introductionBaseController.dart';
import 'package:get/get.dart';

class IntroductionBaseBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => IntroductionBaseController());
  }

}