import 'package:ambica/screens/home/mySociety/cardView/cvMemberList.dart';
import 'package:flutter/material.dart';
import 'package:ambica/utilities/imports.dart';

class TabBAR extends StatelessWidget {
  final List<Tab>? tab;
  final int length;
  final List<Widget> tabViewBody;


  TabBAR({required this.length,this.tab,required this.tabViewBody});

  @override
  Widget build(BuildContext context) {
    return    DefaultTabController(
        length: this.length, // length of tabs
        initialIndex: 0,
        child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius:
              BorderRadius.vertical(top: Radius.circular(19)),
              color: AppColors.pink1,
            ),
            child:
            TabBar(indicatorSize:TabBarIndicatorSize.label,
                indicatorColor: AppColors.white,tabs: [

                  for(Tab tab in this.tab ?? []) tab
                ]
            ),

          ),
          Container(
            height: double.maxFinite,
              width: Dimens.screenWidth,
              child: TabBarView(children: <Widget>[
                for (Widget widget in this.tabViewBody) widget,
              ])
          )
        ])
    );
  }
}
