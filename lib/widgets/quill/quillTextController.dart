import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_quill/widgets/controller.dart';
import 'package:get/get.dart';

class QuillTextBoxController extends GetxController{
  late QuillController quillController;
  String text="";

  @override
  void onInit() {
    quillController=QuillController.basic();
    text=quillController.document.toString();
    // TODO: implement onInit
    super.onInit();
  }
}