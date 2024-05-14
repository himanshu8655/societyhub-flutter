import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

class ActionContainer extends StatelessWidget {
  IconData? iconData;
  ActionContainer({this.iconData=Icons.add});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 32,
      decoration: BoxDecoration(
          color: AppColors.white.withOpacity(0.43),
          shape: BoxShape.circle
      ),
      child: Center(
        child: Icon(iconData,color: AppColors.white,size: 20),
      ),
    );
  }
}
