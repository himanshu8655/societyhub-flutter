import 'package:ambica/screens/bottom_navbar/bottomNavController.dart';
import 'package:ambica/utilities/imports.dart';

class BottomNavBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomNavController());
  }
}
