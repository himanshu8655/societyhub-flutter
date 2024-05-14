import 'package:ambica/screens/bottom_navbar/bottomNavController.dart';
import 'package:ambica/widgets/basePage/appBasePage.dart';
import 'package:ambica/widgets/titleBtn.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

class Bills extends GetView<BottomNavController> {
  List<String> litems = [
    AppStrings.munTax,
    AppStrings.mainCharge,
    AppStrings.sink_fund,
    AppStrings.park_charge,
    AppStrings.repair_fund,
    AppStrings.func_charge
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async {
        controller.onTabChange(4);
        return Future.value(false);
      },
      child: AppBasePage(
        title:InkWell(
          onTap: (){controller.onTabChange(4);
          },
          child: TitleBtn(
            text: AppStrings.bills,
          ),
        ),
        body: [
          Column(
            children: [
              Dimens.gapX2.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppStrings.name,
                        style: Styles.tsROpenSansBlack1Bold14,
                      ),
                      Dimens.gapXHalf.height,
                      Text(AppStrings.dummyText,
                          style: Styles.tsROpenSansPink1SemiBold14),
                      Dimens.gapX2.height,
                      Row(
                        children: [
                          Text(
                            AppStrings.bill_date,
                            style: Styles.tsROpenSansBlack1Bold12,
                          ),
                          Dimens.gapXHalf.width,
                          Text(
                            AppStrings.dummyText,
                            style: Styles.tsROpenSansBlack1SemiBold10,
                          )
                        ],
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Text(
                            AppStrings.bill_no,
                            style: Styles.tsROpenSansBlack1Bold14,
                          ),
                          Dimens.gapXHalf.width,
                          Text(
                            AppStrings.dummyText,
                            style: Styles.tsROpenSansBlack1SemiBold12,
                          )
                        ],
                      ),
                      Dimens.gapXHalf.height,
                      Row(
                        children: [
                          Text(
                            AppStrings.bill_period,
                            style: Styles.tsROpenSansBlack1Bold14,
                          ),
                          Dimens.gapXHalf.width,
                          Text(
                            AppStrings.dummyText,
                            style: Styles.tsROpenSansBlack1SemiBold12,
                          )
                        ],
                      ),
                      Dimens.gapX2.height,
                      Row(
                        children: [
                          Text(
                            AppStrings.due_date,
                            style: Styles.tsROpenSansBlack1Bold12,
                          ),
                          Dimens.gapXHalf.width,
                          Text(
                            AppStrings.dummyText,
                            style: Styles.tsROpenSansBlack1SemiBold10,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ).paddingSymmetric(horizontal: Dimens.paddingX3),
              Dimens.gapX2.height,
              Container(
                color: AppColors.pink1.withOpacity(0.24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(AppStrings.particular,
                        style: Styles.tsROpenSansBlack1Bold12),
                    Text(AppStrings.amt, style: Styles.tsROpenSansBlack1Bold12),
                  ],
                ).paddingSymmetric(vertical: Dimens.paddingX2,horizontal: Dimens.paddingX3),
              ),
              ListView.separated(
                shrinkWrap: true,
                separatorBuilder: (context, index) => Divider(
                  color: AppColors.blackLV,
                ),
                itemCount: litems.length,
                itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.fromLTRB(Dimens.paddingX3,0,Dimens.paddingX3,0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          litems[index],
                          style: Styles.tsROpenSansBlack1SemiBold10,
                        ),
                        Text(
                          "500",
                          style: Styles.tsROpenSansBlack1SemiBold12,
                        )
                      ],
                    )),
              ),
              Divider(
                color: AppColors.blackLV,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppStrings.total,
                    style: Styles.tsROpenSansBlack1Bold12,
                  ),
                  Text(
                    "2222",
                    style: Styles.tsROpenSansPink1Bold16,
                  )
                ],
              ).paddingSymmetric(horizontal: 16, vertical: 4),
              Align(
                alignment: Alignment.bottomCenter,
              ),
            ],
          )
        ],
        ctaHeight: 80,
        cta: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
                        (Color) => AppColors.pink_dark),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(Dimens.radiusX1),
                    ))),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(AppImages.icPdf),
                    Dimens.gapX1.width,
                    Text(AppStrings.downBill,
                        style: Styles.tsROpenSansWhiteSemiBold15)
                  ],
                ).paddingAll(11)
        ).paddingSymmetric(horizontal: Dimens.paddingX5,vertical: 10),
      ),
    );
  }
}
