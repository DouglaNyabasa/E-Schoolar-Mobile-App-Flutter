

import 'package:e_schoolar_app/common/widgets/appShadow.dart';
import 'package:e_schoolar_app/common/widgets/app_image.dart';
import 'package:e_schoolar_app/constants/appcolors.dart';
import 'package:flutter/cupertino.dart';

Widget searchBar(){
  return Row(
    children: [
      Container(
        width: 200,
        height: 40,
        decoration: appBoxShadow(
          color: AppColor.primaryBackground,
          boxBorder: Border.all(
            color: AppColor.primaryThreeSecondaryElementText
          ),
        ),
        child: Row(
          children: [
            Container(
              width:10 ,
              height:10 ,
              margin: EdgeInsets.only(left: 17),
              child: CourseBox(
                imagePath: "assets/icon/search2.png",
              ),
              
            ),
            Container(
              width: 240,
              height: 40,
              child: Text("Search for courses"),
            )
          ],
        ),
      )
    ],
  );
}