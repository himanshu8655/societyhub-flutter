import 'package:ambica/utilities/dimens.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

class TextHeading extends StatelessWidget {
final String text;
final Widget? endWidget;

  const TextHeading({required this.text,this.endWidget});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Dimens.gapX1.height,
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(this.text,
                style: Styles.tsRalewayBlackBold15),
            Spacer(),
            Container(
              child: endWidget,
            )
          ],
        ),
      ],
    );
  }
}
