import 'package:ambica/routes/routes.dart';
import 'package:ambica/screens/home/mySociety/cardView/cvLSP.dart';
import 'package:ambica/utilities/storage.dart';
import 'package:ambica/widgets/basePage/appBasePage.dart';
import 'package:ambica/widgets/searchBar.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

class LocalServiceProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SearchBar(),
          Dimens.gapX2.height,
          CvLSP(memberType: Storage.getMemberType()),
          Dimens.gapX1.height,
          CvLSP(memberType: Storage.getMemberType()),

        ],
      ).paddingSymmetric(horizontal: Dimens.appPadding),
    );
  }
}
