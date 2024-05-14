import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

class DateText extends StatelessWidget {
  final String text;
  final Color? iconColor;
  final TextStyle? style;

  DateText({required this.text,this.iconColor,this.style=Styles.tsROpenSansBlack1SemiBold10});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisSize: MainAxisSize.min,
      children: [
      SvgPicture.asset(AppImages.icDate,height: 10,width: 10,semanticsLabel: AppStrings.home,color:iconColor),
    Dimens.gapXHalf.width,
    Text(this.text,style: style),
    ]
    );
  }
}
