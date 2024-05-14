import 'package:ambica/screens/home/meetingCircular/controllers/meetingCircularController.dart';
import 'package:get/get.dart';

class MeetingCircularbindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => MeetingCircularController());
  }
  
}