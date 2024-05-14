import 'package:ambica/screens/home/meetingCircular/controllers/meetingCircularController.dart';
import 'package:ambica/widgets/searchBar.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

class BillInstruction extends GetView<MeetingCircularController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchBar(),
        ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (context, index) => Divider(
            color: AppColors.blackLV,
          ),
          itemCount: 3,
          itemBuilder: (context, index) => InkWell(
            onTap: (){
              controller.onMeetCircularPageChange(AppStrings.BILLING_DETAIL_PAGE);
              controller.onTitleChange(AppStrings.billInstructions);
            },
            child: Column(
              children: [
                Row(
                  children: [
                    Text(AppStrings.flat_number, style: Styles.tsROpenSansBlack1Bold14),
                    Text(
                      AppStrings.dummyText,
                      style: Styles.tsROpenSansBlack1Bold14,
                    ),
                    Spacer(),
                    SvgPicture.asset(AppImages.icDate),
                    Dimens.gapXHalf.width,
                    Text(AppStrings.dummyText,
                        style: Styles.tsROpenSansBlack1SemiBold10),
                  ],
                ),
                Dimens.gapX1.height,
                Row(
                  children: [
                    Text(AppStrings.acc_head,style: Styles.tsROpenSansPink1Bold10,),
                    Text(AppStrings.name,style: Styles.tsROpenSansBlack1SemiBold12,),
                  ],
                ),
                Row(
                  children: [
                    Text(AppStrings.eff_date,style: Styles.tsROpenSansPink1Bold10,),
                    Text(AppStrings.dummyText,style: Styles.tsROpenSansBlack1SemiBold12,),
                    Spacer(),
                    Icon(Icons.chevron_right,color: AppColors.pink1,)
                  ],
                ),

              ],
            ),
          )
        ),


      ],
    ).paddingSymmetric(horizontal :Dimens.appPadding);
  }
}
