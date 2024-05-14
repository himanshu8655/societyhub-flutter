import 'package:ambica/routes/routes.dart';
import 'package:ambica/screens/home/memberCare/controllers/memberCareController.dart';
import 'package:ambica/screens/home/memberCare/query/addQuery.dart';
import 'package:ambica/screens/home/memberCare/query/queries2.dart';
import 'package:ambica/screens/home/memberCare/facility/reqFacility.dart';
import 'package:ambica/widgets/basePage/appBasePage.dart';
import 'package:ambica/widgets/dateText.dart';
import 'package:ambica/widgets/quill/quillTextBox.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

import '../noc/noc.dart';

class MemberCareQuery1 extends GetView<MemberCareController> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        separatorBuilder: (context, index) => Divider(
          color: AppColors.blackLV,
        ),
        itemCount: 2,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            controller.onQueryIndexChange(1);
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(AppStrings.name,
                      style: Styles.tsROpenSansBlack1Bold14),
                  DateText(text: AppStrings.dummyText)
                ],
              ),
              Dimens.gapX1.height,
              Text(
                "A-505",
                style: Styles.tsROpenSansPink1SemiBold14,
              ),
              Dimens.gapX1.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Text(
                      AppStrings.loremIpsum + AppStrings.loremIpsum,
                      maxLines: 3,
                      textAlign: TextAlign.left,
                      style: Styles.tsROpenSansBlack110,
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                    ),
                  ),
                  Align(
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.chevron_right,
                          color: AppColors.pink1,
                        )),
                  )
                ],
              ),
            ],
          ).paddingSymmetric(horizontal: Dimens.appPadding),
        ));
  }
}
