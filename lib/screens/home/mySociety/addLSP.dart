import 'package:ambica/screens/home/mySociety/controllers/mySocietyController.dart';
import 'package:ambica/widgets/addCanButtons.dart';
import 'package:ambica/widgets/basePage/appBasePage.dart';
import 'package:ambica/widgets/squareDropList.dart';
import 'package:ambica/widgets/squareTextField.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';
import 'package:flutter/rendering.dart';

class AddLSP extends GetView<MySocietyController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        onBackPressed();
        return Future.value(false);
      },
      child: SingleChildScrollView(
        child: Column(
          children: [
            Dimens.gapX3.height,
            SquareDropList(),
            SquareTextField(text: AppStrings.ent_fullName),
            SquareTextField(text: AppStrings.ent_comName),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Dimens.gapXHalf.width,
                Expanded(
                  flex: 15,
                  child: Container(
                    height: 45 ,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimens.radiusX3),
                        color: AppColors.pink1),
                    child: Center(
                        child: Text(
                      AppStrings.noCode,
                      style: Styles.tsROpenSansWhite12,
                    )),
                  ),
                ),
                Dimens.gapX1.width,
                Expanded(
                    flex: 85,
                    child: SquareTextField(text: AppStrings.ent_comName)),
              ],
            ),
            Row(
              children: [
                Text(
                  AppStrings.act_phnNo,
                  style: Styles.tsROpenSansBlack112,
                )
              ],
            ),
            Dimens.gapX15.height,
            SquareTextField(text: AppStrings.ent_add),
            SquareTextField(text: AppStrings.ent_pinCode),
            SquareDropList(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 85,
                    child: SquareTextField(text: AppStrings.upProfilePic)),
                Expanded(
                  flex: 15,
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimens.radiusX3),
                        color: AppColors.pink1),
                    child: Center(child: SvgPicture.asset(AppImages.icUpload)),
                  ),
                ),
              ],
            ),
            Dimens.gapX4.height,
            AddCanButtons(text: AppStrings.add)
          ],
        ).paddingSymmetric(horizontal: Dimens.paddingX5),
      ),
    );
  }

  void onBackPressed() {

  }
}
