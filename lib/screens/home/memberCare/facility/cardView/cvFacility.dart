import 'package:ambica/widgets/dateText.dart';
import 'package:ambica/widgets/timeText.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

class CvFacility extends StatelessWidget {
  final bool paymentIsPending;
  final String post;
  CvFacility({required this.paymentIsPending, required this.post});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(AppStrings.dummyText, style: Styles.tsROpenSansBlack1Bold15),
            Text(AppStrings.rupeeSymbol + " " + "1550",
                style: Styles.tsROpenSansPink1Bold16),
          ],
        ),
        Dimens.gapX1.height,
        Row(
          children: [
            DateText(text: AppStrings.dummyText),
            Dimens.gapX2.width,
            TimeText(text: AppStrings.dummyText)
          ],
        ),
        Dimens.gapX1.height,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            post == AppStrings.member
                ? Opacity(
                    opacity: paymentIsPending ? 1 : 0.7,
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.pink1,
                          borderRadius: BorderRadius.circular(Dimens.radiusX4)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(12, 6, 12, 6),
                        child: Text(AppStrings.cancel_book,
                            style: Styles.tsROpenSansWhiteSemiBold10),
                      ),
                    ),
                  )
                : Column(
                    children: [
                      Row(
                        children: [
                          Text(AppStrings.book_by + ": ",style: Styles.tsROpenSansBlack1SemiBold10,),
                          Text(AppStrings.name,style: Styles.tsROpenSansBlack1Bold12,)
                        ],
                      ),
                      Row(
                        children: [
                          Text(AppStrings.flat_number + ": ",style: Styles.tsROpenSansBlack1SemiBold10,),
                          Text(AppStrings.dummyText,style: Styles.tsROpenSansBlack1Bold12,)
                        ],
                      ),
                    ],
                  ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  AppStrings.payment,
                  style: Styles.tsROpenSansBlack1SemiBold10,
                ),
                Dimens.gapXHalf.height,
                paymentIsPending
                    ? Text(
                        AppStrings.pending,
                        style: Styles.tsROpenSansPink1SemiBold12,
                      )
                    : Text(
                        AppStrings.done,
                        style: Styles.tsROpenSansGreenSemiBold12,
                      ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
