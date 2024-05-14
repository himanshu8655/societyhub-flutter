import 'package:ambica/screens/home/memberCare/controllers/memberCareController.dart';
import 'package:ambica/screens/home/memberCare/noc/noc.dart';
import 'package:ambica/screens/home/memberCare/noc/reqNOC.dart';
import 'package:ambica/utilities/imports.dart';
import 'package:flutter/material.dart';

class MemberCareNOC extends GetView<MemberCareController> {

  @override
  Widget build(BuildContext context) {
    return Obx(()=>controller.nocIndex==0?NOC():ReqNOC());
  }
}
