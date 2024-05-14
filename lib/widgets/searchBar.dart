import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(height: 30,margin: EdgeInsets.only(top: 25),
      child: TextField(
        expands: false,
        style: Styles.tsROpenSansBlack112,
        decoration: InputDecoration(
            hintText: AppStrings.search,
            suffixIcon: Container(
              height: 10,width: 10,
                child: Center(
                  child: SvgPicture.asset(AppImages.icSearch,
                      ),
                ))
        ),
      ).paddingSymmetric(horizontal: 16),
    );
  }
}
