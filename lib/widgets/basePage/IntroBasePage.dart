import 'package:ambica/routes/routes.dart';
import 'package:ambica/widgets/paintWave.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

class IntroBasePage extends StatelessWidget {
  final int flex1;
  final int flex2;
  final List<Widget> headerChildren;
  final Widget bodyChild;
  final String? rightSwipe;
  final String? leftSwipe;


  IntroBasePage({
    required this.flex1,required this.flex2,
    required this.headerChildren,required this.bodyChild,
    this.rightSwipe,this.leftSwipe
  });


  @override
  Widget build(BuildContext context) {
    return Scaffold(

        resizeToAvoidBottomInset: true,
        body: GestureDetector(
            onHorizontalDragUpdate: (details) {
              // Note: Sensitivity is integer used when you don't want to mess up vertical drag
              int sensitivity = 8;
              if (details.delta.dx > sensitivity) {
                if(rightSwipe!=null || rightSwipe!="") {
                  Get.offAllNamed(rightSwipe!);
                }
                // Right Swipe
              } else if(details.delta.dx < -sensitivity){
                if(leftSwipe!=null || leftSwipe!="") {
                  Get.toNamed(leftSwipe!);
                }
                //Left Swipe
              }
            },
          child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height,maxWidth:MediaQuery.of(context).size.width ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                        flex: this.flex1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                            children: this.headerChildren
                        )
                    ),
                    Expanded(
                      flex: this.flex2,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          new PaintWave1(),
                          PaintWave(),
                          this.bodyChild,
                        ],
                      ),
                    ),
                  ],
                ),
              )
          ),
        )

    );
  }
}
