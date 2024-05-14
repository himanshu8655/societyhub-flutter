import 'package:ambica/screens/inroduction/controllers/controller.dart';
import 'package:ambica/utilities/colors.dart';
import 'package:ambica/widgets/paint_wave.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardBase extends GetView<IntroductionController> {
  final List<Widget> headerChildren;
  final List<Widget> bodyChildren;
  final double waveHeight;

  OnboardBase({
    required this.headerChildren,
    required this.bodyChildren,
    required this.waveHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          // physics: PageScrollPhysics(),
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: this.headerChildren,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: PaintWave(
                  height: this.waveHeight,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: this.bodyChildren,
                  ),
                  nextButton: Container(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
