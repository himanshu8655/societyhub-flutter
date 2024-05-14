import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

class TimeText extends StatelessWidget {
  final String text;
  final Color? iconColor;
  final TextStyle? style;

  TimeText({required this.text,this.iconColor=AppColors.pink1,this.style=Styles.tsROpenSansBlack1SemiBold10});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.access_time,color: iconColor,size: 10),
          Dimens.gapXHalf.width,
          Text(this.text,style: style)
        ]
    );
  }
}
