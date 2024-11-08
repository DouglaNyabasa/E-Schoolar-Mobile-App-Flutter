import 'package:e_schoolar_app/common/widgets/appShadow.dart';
import 'package:e_schoolar_app/common/widgets/text.dart';
import 'package:e_schoolar_app/constants/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



Widget nextButton (int index, PageController pageController,BuildContext context){
  return GestureDetector(
    onTap: (){
      if(index<3){
        pageController.animateToPage(
            index,
            duration: Duration(milliseconds: 300),
            curve: Curves.linear);
      } else{
        Navigator.pushNamed(
          context,
          "/signIn" // Replace 'HomeScreen()' with your actual home screen widget
        );
      }

    },
    child: Container(
      width: 300,
      height: 70,
      margin: EdgeInsets.only(top: 75, left: 25,right: 25),
      decoration: appBoxShadow(),
      child: Center(
        child: Text16Normal(
            text: index<3 ?"Next":"Get Started",
            color: AppColor.whiteBackgroundColor,
            fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}