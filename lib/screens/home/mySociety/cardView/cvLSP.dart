import 'package:ambica/widgets/container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

class CvLSP extends StatelessWidget {
  final String memberType;
  CvLSP({required this.memberType});

  @override
  Widget build(BuildContext context) {
    return ContainerBorderedCurved(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //1st row
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: AppColors.white, shape: BoxShape.circle),
                    child: Image.asset(AppImages.icPerson),
                  ),
                  Dimens.gapXHalf.width,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppStrings.name,
                        style: Styles.tsRalewayBlack1Bold15,
                      ),
                      Dimens.gapXHalf.height,
                      Text(
                        AppStrings.dummyText,
                        style: Styles.tsROpenSansGrey1SemiBold12,
                      )
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.place,
                    color: AppColors.pink1,
                    size: 12,
                  ),
                  3.0.width,
                  Text(
                    AppStrings.dummyText,
                    style: Styles.tsROpenSansGrey1SemiBold12,
                    softWrap: true,
                  ),
                ],
              ),
            ],
          ).paddingAll(16),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(AppImages.icMail, height: 10, width: 10),
              Dimens.gapXHalf.width,
              Text(
                AppStrings.dummyText,
                style: Styles.tsROpenSansGrey1SemiBold12,
              )
            ],
          ).paddingSymmetric(horizontal: 16),
          memberType==AppStrings.member
              ? Column(
                  children: [
                    Dimens.gapX1.height,
                    Divider(
                      color: AppColors.blackLV,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(AppImages.icPhone,height: 16,width: 16,),

                        Dimens.gapXHalf.width,
                        Text(
                          AppStrings.contact,
                          style: Styles.tsROpenSansBlack1SemiBold10,
                        ),
                      ],
                    ).paddingAll(8),
                  ],
                ):Column(
            children: [
              Dimens.gapX15.height,
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColors.grey3)),
                      child: Center(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.phone,
                              color: AppColors.pink1,
                              size: 16,
                            ),
                            Dimens.gapXHalf.width,
                            Text(
                              AppStrings.contact,
                              style: Styles.tsROpenSansBlack1SemiBold10,
                            ),
                          ],
                        ).paddingSymmetric(vertical: 8),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColors.grey3)),
                      child: InkWell(
                        onTap: () {
                          //Get.toNamed(Routes.ADD_LSP);
                        },
                        child: Center(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.edit,
                                color: AppColors.pink1,
                                size: 16,
                              ),
                              Dimens.gapXHalf.width,
                              Text(
                                AppStrings.edit,
                                style: Styles.tsROpenSansBlack1SemiBold10,
                              ),
                            ],
                          ).paddingSymmetric(vertical: 8),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColors.grey3)),
                      child: Center(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgPicture.asset(AppImages.icTrash,
                                height: 16, width: 16),
                            Dimens.gapXHalf.width,
                            Text(
                              AppStrings.del,
                              style: Styles.tsROpenSansBlack1SemiBold10,
                            ),
                          ],
                        ).paddingSymmetric(vertical: 8),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
