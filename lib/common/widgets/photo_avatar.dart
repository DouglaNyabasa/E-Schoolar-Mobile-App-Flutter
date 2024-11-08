import 'dart:math';

import 'package:e_schoolar_app/constants/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PhotoAvatar extends StatelessWidget {
  final String? imagePath;
  final String? heroTag;
  final String? membership;
  final int? progress;
  final Color? color;
  final bool? isHideProgressBar;

  const PhotoAvatar({
    super.key,  this.heroTag, this.membership, this.progress, this.color, this.isHideProgressBar, this.imagePath});

  Widget emptyPhoto(BuildContext context){
    return  Hero(
        tag: "empty-avatar${heroTag ?? Random().nextInt(100).toString()}",
        child: CircleAvatar(
          backgroundColor: Colors.white,
          maxRadius: 78,
          child: Center(
            child: Icon(
              CupertinoIcons.person,
              size: 50,
              color: AppColor.primary,
            ),
          ),
        ));
  }

  Widget emptyPhotoBorder(BuildContext context){
    return  Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: AppColor.primary,
          width: 1,
        )
      ),
      child:Hero(
          tag: "empty-avatar-borders${heroTag ?? Random().nextInt(100).toString()}",
          child: CircleAvatar(
            backgroundColor: Colors.white,
            maxRadius: 78,
            child: Center(
              child: Icon(
                CupertinoIcons.person,
                size: 50,
                color: AppColor.primary,
              ),
            ),
          )) ,
    );

  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child:
      Hero(
          tag: "avatars${heroTag ?? Random().nextInt(100).toString()}",
          child: Image.asset(
            "assets/images/u1.png"
          ))
    );

  }
}
