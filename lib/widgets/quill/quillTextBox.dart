import 'package:ambica/utilities/imports.dart';
import 'package:ambica/widgets/quill/quillTextController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

class QuillTextBox extends GetView<QuillTextBoxController> {

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => QuillTextBoxController());
    return Column(
      children: [
        QuillToolbar.basic(controller: controller.quillController),
        Container(
          child: QuillEditor.basic(
            controller: controller.quillController,
            readOnly: false, // true for view only mode
          ),
        )
      ],
    );
  }
}
