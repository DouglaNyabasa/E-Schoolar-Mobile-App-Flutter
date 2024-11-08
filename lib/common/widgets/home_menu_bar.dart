import 'package:e_schoolar_app/common/widgets/appShadow.dart';
import 'package:e_schoolar_app/common/widgets/text.dart';
import 'package:e_schoolar_app/constants/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/appcolors.dart';

class HomeMenuBar extends StatelessWidget {
  const HomeMenuBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 5),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                text24Normal(
                  text: "Choice your course",fontweight: FontWeight.bold
                ),
                GestureDetector(
                  child:Text16Normal(
                    text: "See all",
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 5, top: 8),
            child: Row(
              children: [
                  Container(
                    child:  Text11Normal(
                      text: "All",
                    ),
                    decoration: appBoxShadow(color: AppColor.primaryElement,radius: 6),
                    padding: EdgeInsets.only(left: 15,right: 15,top: 5,bottom: 5),
                  ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  decoration: appBoxShadow(color: AppColor.colorGrey,radius: 6),
                  padding: EdgeInsets.only(left: 5,right: 5,top: 5,bottom: 5),
                  child: Text11Normal(
                    text: "Maths & Sciences",
                    color: AppColor.whiteBackgroundColor,
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(left: 10),
                  decoration: appBoxShadow(color: AppColor.colorGrey,radius: 6),
                  padding: EdgeInsets.only(left: 5,right: 5,top: 5,bottom: 5),
                  child: Text11Normal(
                    text: "Commercials",
                    color: AppColor.whiteBackgroundColor,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  decoration: appBoxShadow(color: AppColor.colorGrey,radius: 6),
                  padding: EdgeInsets.only(left: 5,right: 5,top: 5,bottom: 5),
                  child: Text11Normal(
                    text: "Arts & Languages",
                    color: AppColor.whiteBackgroundColor,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  decoration: appBoxShadow(color: AppColor.colorGrey,radius: 6),
                  padding: EdgeInsets.only(left: 5,right: 5,top: 5,bottom: 5),
                  child: Text11Normal(
                    text: "Others",
                    color: AppColor.whiteBackgroundColor,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
