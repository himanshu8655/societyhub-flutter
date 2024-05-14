import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:ambica/utilities/imports.dart';

class PaintWave extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimens.screenHeight,
      width: Dimens.screenWidth,
      child: Stack(
        children: [
          CustomPaint(
            size: Size(Dimens.screenWidth, Dimens.screenHeight),
            painter: CurvedPainter(),
          ),
        ],
      ),
    );
  }
}

class PaintWave1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimens.screenHeight,
      width: Dimens.screenWidth,
      child: Stack(
        children: [
          CustomPaint(
            size: Size(Dimens.screenWidth, Dimens.screenHeight),
            painter: CurvedPainter1(),
          ),
        ],
      ),
    );
  }
}

class CurvedPainter1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = AppColors.maroon;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 2.0;
    var path = Path();
    path.moveTo(0, size.height * 0.1);
    path.quadraticBezierTo(size.width * 0.05, size.height * 0.3,
        size.width * 0.4, size.height * 0.133);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    path.moveTo(size.width * 0.4, size.height * 0.133);

    path.quadraticBezierTo(
        size.width * 0.7, size.height * 0, size.width * 1.0, size.height * 0.1);

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class CurvedPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..shader = ui.Gradient.linear(
        Offset(size.width * 0, size.height * 0.5),
        Offset(size.width * 1, size.height * 0.5),
        [Color(0XFFE30016), Color(0XFF841711)],
      );

    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 2.0;
    var path = Path();
    path.moveTo(0, size.height * 0.1);
    path.quadraticBezierTo(size.width * 0.05, size.height * 0.3,
        size.width * 0.4, size.height * 0.15);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    path.moveTo(size.width * 0.4, size.height * 0.15);

    path.quadraticBezierTo(size.width * 0.7, size.height * 0.01,
        size.width * 1.0, size.height * 0.12);

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
