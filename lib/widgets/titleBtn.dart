import 'package:ambica/utilities/colors.dart';
import 'package:ambica/utilities/styles.dart';
import 'package:flutter/material.dart';

class TitleBtn extends StatelessWidget {
  final String text;
  TitleBtn({
    required this.text
});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.chevron_left,
          color: AppColors.white,
          size: 20,
        ),
        Text(this.text,style: Styles.tsRalewayWhiteSemiBold15,
        )
      ],
    );
  }
}
