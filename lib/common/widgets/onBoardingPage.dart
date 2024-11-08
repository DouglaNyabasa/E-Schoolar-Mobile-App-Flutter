import 'package:e_schoolar_app/common/widgets/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/appcolors.dart';

import 'appShadow.dart';
import 'next_button.dart';

Widget onBoardingPage (PageController pagecontroller,{

  index = 0,String imagePath = "assets/images/reading.png", String title ="",String subTitle ="" ,required BuildContext context}){
    return    Column(
      children: [
        Image.asset(imagePath,
          fit: BoxFit.fitHeight,),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: text24Normal(text: title),
        ),
        Container(
          margin: EdgeInsets.only(top: 7),
          padding: EdgeInsets.only(right: 30,left: 30),
          child: Text16Normal(text: subTitle, color:  AppColor.secondary, fontWeight: FontWeight.bold,),
        ),
        nextButton(index,pagecontroller,context)


      ],
    );
}

