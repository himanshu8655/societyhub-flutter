import 'package:ambica/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

class NavDrawerText extends StatelessWidget {
  final String imageName;
  final String text;


  NavDrawerText({required this.imageName, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          imageName,
          semanticsLabel: AppStrings.home,
          color: AppColors.nav_draw_color,
        ),
        Dimens.gapXHalf.width,
        Text(
          this.text,
          style: Styles.tsROpenSansBlack1SemiBold12,
        ),
      ],
    );
  }
}
