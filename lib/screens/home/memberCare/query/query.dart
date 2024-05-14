import 'package:ambica/screens/home/memberCare/controllers/memberCareController.dart';
import 'package:ambica/screens/home/memberCare/query/queries1.dart';
import 'package:ambica/screens/home/memberCare/query/queries2.dart';
import 'package:ambica/utilities/imports.dart';
import 'package:flutter/material.dart';

import 'addQuery.dart';
class MemberCareQuery extends GetView<MemberCareController> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: Obx(()=>controller.queryIndex==0?MemberCareQuery1():(controller.queryIndex==1?MemberCareQuery2():AddQuery())));
  }
}

