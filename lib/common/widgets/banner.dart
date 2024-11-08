import 'package:dots_indicator/dots_indicator.dart';
import 'package:e_schoolar_app/controller/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../constants/appcolors.dart';
import '../../constants/sizes.dart';

Widget banner({required WidgetRef ref}){
  return Column(
    children: [
      SizedBox(
        width: 325,
        height: 160,
        child: PageView(
          onPageChanged: (index){
             ref.read(homeScreenBannerDotsProvider.notifier).setIndex(index);
          },
          children: [
            bannerContainer(imagePath: "assets/icon/Art.png"),
            bannerContainer(imagePath: "assets/icon/Image(1).png"),
            // bannerContainer(imagePath: "assets/icon/Image(2).png"),
            bannerContainer(imagePath: "assets/icon/image(4).png"),
          ],
        ),
      ),
      SizedBox(height: 5,),
      DotsIndicator(
        position: ref.watch(homeScreenBannerDotsProvider),
        dotsCount: 3,
        mainAxisAlignment: MainAxisAlignment.center,
        decorator: DotsDecorator(
            size: const Size.square(9.0),
            activeSize: const Size(26.0, 8.0),
            activeColor: AppColor.primary,
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)
            )
        ),

      ),
    ],
  );
}

Widget bannerContainer({required String imagePath}){
  return  Container(
    width: 325,
    height: 140,
    decoration: BoxDecoration(
      image: DecorationImage(
          image: AssetImage(imagePath),
        fit: BoxFit.fill
      )
    ),
  );
}