import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/appcolors.dart';

BoxDecoration appBoxShadow(
    {Color color = AppColor.primary,
      double radius = 15,double sR = 1,double bR=2,BoxBorder? boxBorder,BorderRadius? borderRadius}){
  return BoxDecoration(
      color: color,
    borderRadius: BorderRadius.circular(radius),
    border: boxBorder,

    boxShadow: [
      BoxShadow(
        color: AppColor.border1,
        spreadRadius: sR,
        offset: Offset(0, 1),
        blurRadius: bR
      )
    ]

  );
}

BoxDecoration appBoxShadowWithRadius(
    {Color color = AppColor.primaryElement,
      BoxBorder? border}){
  return
    BoxDecoration(
      color: color,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20)
      ),
      border: border,
      boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(0.6),
            spreadRadius: 1,
            offset: Offset(0, 1),
            blurRadius: 2
        )
      ]

  );
}