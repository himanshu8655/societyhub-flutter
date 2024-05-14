import 'package:get/get.dart';

class Dimens {
  Dimens._privateConstructor();

  //padding
  static const appPadding=32.0;
  static const paddingX1 = 4.0;
  static const paddingX2 = 8.0;
  static const paddingX3 = 16.0;
  static const paddingX4 = 24.0;
  static const paddingX5 = 32.0;
  static const paddingX6 = 64.0;
  static const paddingX7 = 128.0;
  static const paddingX12 = 120.0;



  //margin
  static const marginX1 = 4.0;
  static const marginX2 = 8.0;
  static const marginX3 = 16.0;
  static const marginX4 = 24.0;
  static const marginX5 = 32.0;

  //radius
  static const radiusX1 = 4.0;
  static const radiusX2 = 8.0;
  static const radiusX2Half = 12.0;
  static const radiusX3 = 16.0;
  static const radiusX4 = 24.0;
  static const radiusX5 = 32.0;
  static const radiusX6 = 64.0;
  static const radius10 = 10.0;

  //image scales
  static const imageScaleX1 = 8.0;
  static const imageScaleX2 = 16.0;
  static const imageScaleX3 = 24.0;
  static const imageScaleX4 = 32.0;
  static const imageScaleX5 = 40.0;
  static const imageScaleX6 = 48.0;
  static const imageScaleX7 = 56.0;
  static const imageScaleX8 = 64.0;
  static const imageScaleX9 = 72.0;
  static const imageScaleX10 = 80.0;
  static const imageScaleX12 = 96.0;
  static const imageScaleX14 = 112.0;
  static const imageScaleX24 = 224.0;

  //standard scales
  static const scaleX1 = 8.0;
  static const scaleX2 = 16.0;
  static const scaleX3 = 24.0;
  static const scaleX4 = 32.0;
  static const scaleX5 = 40.0;
  static const scaleX6 = 48.0;
  static const scaleX7 = 56.0;
  static const scaleX8 = 64.0;

  //dividers
  static const gapXHalf= 5.0;
  static const gapX1 = 10.0;
  static const gapX15 = 15.0;
  static const gapX2 = 20.0;
  static const gapX3 = 30.0;
  static const gapX4 = 40.0;
  static const gapX5 = 50.0;
  static const gapX6 = 60.0;
  static const gapX7 = 70.0;
  static const gapX12 = 120.0;

  //heights
  static final screenHeight = Get.height;
  static final screenHeightX13 = Get.height / 1.3;
  static final screenHeightX10 = Get.height / 1;
  static final screenHeightXHalf = Get.height / 2;
  static final screenHeightXFourth = Get.height / 4;
  static final screenHeightXSixth = Get.height / 6;
  static final screenHeightXEight = Get.height / 8;


  //width
  static final screenWidth = Get.width;
  static final screenWidthX15 = Get.width / 1.5;
  static final screenWidthX14 = Get.width / 1.4;
  static final screenWidthXHalf = Get.width / 2;
  static final screenWidthXThird = Get.width / 3;
  static final screenWidthXFourth = Get.width / 4;
  static final screenWidthXSixth = Get.width / 6;
  static final screenWidthXEight = Get.width / 8;

  //aspectRatio
  static final itemAspectRatio =
      Dimens.screenWidthXHalf / ((Dimens.screenHeight - Dimens.gapX6) / 2.3);
}
