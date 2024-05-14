import 'package:ambica/utilities/colors.dart';
import 'package:ambica/utilities/dimens.dart';
import 'package:flutter/material.dart';
import 'dart:ui'as ui;

class PaintWave extends StatelessWidget {
  final double height;
  final Widget child;
  final Widget nextButton;

  PaintWave({
    required this.height,
    required this.child,
    required this.nextButton,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomPaint(
              size: Size(Dimens.screenWidth, height),
              painter: CurvedPainter(),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                top: Dimens.screenWidth, left: 15.0, right: 15.0),
            child: this.child,
          ),
          Positioned(
            bottom: Dimens.screenWidthXHalf / 6,
            right: Dimens.screenWidthXHalf / 10,
            child: Container(
              child: this.nextButton,
            ),
          )
        ],
      ),
    );
  }
}

class CurvedPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..shader = ui.Gradient.linear(
        Offset(0,0.5),
        Offset(1,0.5),
        [
          AppColors.primaryColor,
          AppColors.primaryColor
        ],
      );

    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 2.0;
    var path = Path();
    path.moveTo(0,size.height*0.1);
    path.quadraticBezierTo(size.width * 0.05, size.height * 0.3,
        size.width * 0.4, size.height * 0.13);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    path.moveTo(size.width * 0.4, size.height * 0.13);

    path.quadraticBezierTo(size.width * 0.7, size.height * 0,
        size.width * 1.0, size.height * 0.1);

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);



    // path.moveTo(size.width*0.1,size.height*0.2);
    // path.quadraticBezierTo(size.width*0.15,size.height*0.25,
    //     size.width * 0.5, size.height * 0.12);
    // //path.lineTo(size.width, size.height);
    // path.lineTo(0, size.height);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
