

import 'package:e_schoolar_app/common/widgets/app_image.dart';
import 'package:e_schoolar_app/constants/appcolors.dart';
import 'package:flutter/material.dart';

var bottomTabs = <BottomNavigationBarItem>[
   BottomNavigationBarItem(
       icon: bottomContainer(),
     activeIcon: bottomContainer(color: AppColor.primaryElement) ,
     backgroundColor: AppColor.primaryBackground,
     label: "Home"
   ),
  BottomNavigationBarItem(
      icon: bottomContainer(imagePath: "assets/icon/search.png"),
      activeIcon: bottomContainer(imagePath: "assets/icon/search.png", color: AppColor.active) ,
      backgroundColor: AppColor.primary,
      label: "Search"
  ),
];

Widget bottomContainer({
  double width=15,
  double height =15,
  String imagePath= "assets/icon/home.png",
  Color color = AppColor.primaryElement}){
  return Container(
    width: 15,
    height: 15,
    child: appImageWithColor(
        imagePath: imagePath,color: AppColor.primaryFourSecondaryElementText),
  );
}