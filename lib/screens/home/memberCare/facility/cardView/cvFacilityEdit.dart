
import 'package:ambica/screens/home/memberCare/controllers/memberCareController.dart';
import 'package:ambica/widgets/container.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

class CvFacilityEdit extends GetView<MemberCareController> {

  @override
  Widget build(BuildContext context) {
    return ContainerBorderedCurved(child: Row(
      children: [
        Text(AppStrings.facility,style: Styles.tsROpenSansPink1SemiBold13),
        Spacer(),
        InkWell(
          onTap: (){
            controller.changeMemberCarePage(AppStrings.ADD_FACILITY_PAGE);
            controller.onTitleChange(AppStrings.addFacility);
            controller.changeActionContainerVisibility(false);
            },
          child: Container(
            decoration: BoxDecoration(
                color: AppColors.pink1,
                borderRadius: BorderRadius.circular(Dimens.radiusX3)

            ),
            child: Row(
              children: [
                Icon(Icons.add,color: AppColors.white,size: 12,),
                Dimens.gapXHalf.width,
                Text(AppStrings.add,style: Styles.tsROpenSansWhiteSemiBold10,),
              ],
            ).paddingSymmetric(horizontal: 12,vertical: 6),
          ),
        ),
        Dimens.gapX1.width,
        InkWell(
          onTap: (){
            controller.changeMemberCarePage(AppStrings.EDIT_FACILITY_PAGE);
            controller.onTitleChange(AppStrings.editFacility);
            controller.changeActionContainerVisibility(false);

          },
          child: Container(
            decoration: BoxDecoration(
                color: AppColors.pink1,
                borderRadius: BorderRadius.circular(Dimens.radiusX3)
            ),
            child: Row(
              children: [
                Icon(Icons.edit,color: AppColors.white,size: 12,),
                Dimens.gapXHalf.width,
                Text(AppStrings.edit,style: Styles.tsROpenSansWhiteSemiBold10,),
              ],
            ).paddingSymmetric(horizontal: 12,vertical: 6),
          ),
        ),
      ],
    ).paddingSymmetric(vertical:Dimens.paddingX1,horizontal: Dimens.paddingX2));
  }
}
