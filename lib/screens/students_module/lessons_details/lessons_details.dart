import 'package:e_schoolar_app/common/widgets/app_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../common/widgets/text.dart';
import '../../../constants/appcolors.dart';

class LessonsDetails extends StatelessWidget {
  const LessonsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:text24Normal(
            text: "Lesson Details",fontweight: FontWeight.bold
        ),
        leading: Icon(Icons.arrow_back),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child:  Column(
            children: [
              AppBoxDecorationImage(
                imagePath: "assets/icon/video.png",
                width: 325,
                height: 200,
                fit: BoxFit.fitWidth,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25,right: 25,top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      child: const CourseBox(
                        width: 24,
                        height: 24,
                        imagePath: "assets/icon/rewind-left(1).png",
                      ) ,
                    ),
                    SizedBox(width: 15,),
                    GestureDetector(
                      child: const CourseBox(
                        width: 24,
                        height: 24,
                        imagePath: "assets/icon/pause.png",
                      ) ,
                    ),
                    SizedBox(width: 15,),
                    GestureDetector(
                      child: const CourseBox(
                        width: 24,
                        height: 24,
                        imagePath: "assets/icon/rewind-right.png",
                      ) ,
                    ),
                    Row(
                      children: [
                        const SizedBox(width: 6,),
                        const AppBoxDecorationImage(
                          width: 50,
                          height: 50,
                          fit: BoxFit.fill,
                          imagePath: "assets/icon/image(8).png",),
                        const SizedBox(width: 6,),
                        const Text16Normal(text: "Simultaneous Equations", color:  AppColor.primaryText1, fontWeight: FontWeight.bold),
                        Expanded(child: Container()),
                        const CourseBox(
                          width: 23,
                          height: 24,
                          imagePath: "assets/icon/arrow_right.png",
                        )


                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
