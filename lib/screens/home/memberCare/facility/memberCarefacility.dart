import 'package:ambica/screens/home/memberCare/controllers/memberCareController.dart';
import 'package:ambica/screens/home/memberCare/facility/facility.dart';
import 'package:ambica/screens/home/memberCare/facility/reqFacility.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

import 'cardView/cvFacility.dart';

class MemberCareFacility extends GetView<MemberCareController> {
  @override
  Widget build(BuildContext context) {
    return Obx(()=>controller.facilityIndex==0?Facility():RequestFacility());
  }
}
