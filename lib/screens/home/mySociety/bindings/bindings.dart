import 'package:ambica/screens/home/mySociety/controllers/mySocietyController.dart';
import 'package:get/get.dart';

class MySocietyBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MySocietyController());
  }
}
