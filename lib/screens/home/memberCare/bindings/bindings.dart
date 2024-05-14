import 'package:ambica/screens/home/memberCare/controllers/memberCareController.dart';
import 'package:get/get.dart';

class MemberCareBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MemberCareController());
  }
}
