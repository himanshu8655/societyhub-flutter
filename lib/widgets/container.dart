import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

class ContainerBorderedCurved extends StatelessWidget {
  final Widget child;
  final Color? color;
  final bool? shadow;
  final double? height;

  const ContainerBorderedCurved({required this.child,
    this.color=AppColors.white,this.shadow=true,this.height});


  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      decoration: BoxDecoration(
          boxShadow: [
           shadow!?BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 6.0,
            ):BoxShadow()

          ],
          color: color,
          border: Border.all(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(Dimens.radiusX2)
      ),
      child: this.child,
    ).paddingSymmetric(vertical: Dimens.paddingX3);
  }
}
