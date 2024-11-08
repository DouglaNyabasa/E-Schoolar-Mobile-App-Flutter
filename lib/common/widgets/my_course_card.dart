

import 'package:e_schoolar_app/common/widgets/sub_header.dart';
import 'package:e_schoolar_app/constants/build_context.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_image.dart';
import 'course_details.dart';

class MyCourseCard extends StatelessWidget {
  const MyCourseCard({super.key, required this.course});

  final List <buildCourses> course;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  const EdgeInsets.symmetric(horizontal: 13,vertical: 17),
      margin: EdgeInsets.only(right: 18.5,left: 18.5,bottom: 20,top: 4),
      decoration: BoxDecoration(
        color: CupertinoColors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 8
          )
        ]
      ),
      child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: SubHeader(
                title: 'My Courses',
            onPressed: (){},),
          ),
          const SizedBox(height: 23,),
          SizedBox(
            width: context.screenWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                buildCourses(imagePath: "assets/icon/image(6).png",),
                buildCourses(imagePath: "assets/icon/image(6).png",),
              ]
            ),
          ),
          const SizedBox(height: 8,)
        ],
      ),
    );
  }
}

