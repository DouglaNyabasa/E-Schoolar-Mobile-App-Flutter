import 'package:e_schoolar_app/common/widgets/text.dart';
import 'package:e_schoolar_app/constants/build_context.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../constants/appcolors.dart';
import 'appShadow.dart';
import 'app_image.dart';
import 'buttons.dart';

class CourseDetailsThumbnail extends StatelessWidget {

  const CourseDetailsThumbnail({super.key,});

  @override
  Widget build(BuildContext context) {
    return CourseBox(
      imagePath: "assets/icon/video.png",
      width: 325,
      height: 200,

    );
  }
}

class CourseDetailsIconText extends StatelessWidget {
  const CourseDetailsIconText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: 325,
      child: Row(

        children: [
          SizedBox(width: 10,),
          GestureDetector(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
              decoration: appBoxShadow(radius: 7),
              child: Text11Normal(
                text: "Author Page",
                color: AppColor.primaryTextText,

              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 30),
            child: const Row(
              children: [
                CourseBox(
                    imagePath: "assets/icon/people.png"
                ),
                Text11Normal(
                  text: "10",
                  color: AppColor.primaryThreeSecondaryElementText,
                )

              ],
            ),
          )
        ],
      ),
    );
  }
}

class CourseDetailDescription extends StatelessWidget {
  const CourseDetailDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(top:10),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text20Normal(text: 'Course Description',
            color: AppColor.primaryText1,
            fontWeight: FontWeight.bold,
            textAlign: TextAlign.start,),
          Container(
              child: const Text11Normal(
                text: "This is a series of Ordinary Level Maths ",
                color: AppColor.primaryThreeSecondaryElementText,

              )
          )
        ],
      ),
    );
  }
}


class CoursePurchaseButton extends StatelessWidget {
  const CoursePurchaseButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: const AppButton(
             buttonName: "Purchase Course"
      ),
    );
  }
}
class CourseDetailIncludes extends StatelessWidget {
  const CourseDetailIncludes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child:  const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text20Normal(
            text: 'Course Includes',
            color: AppColor.primaryText1,
            fontWeight: FontWeight.bold,
            textAlign: TextAlign.start,),
          SizedBox(height: 10,),
          CourseInfo(imagePath: "assets/icon/video_detail.png", length: '14 Hour Videos',),
          SizedBox(height: 10,),
          CourseInfo(imagePath: "assets/icon/file_detail.png", length: 'Test Questions',),
          SizedBox(height: 10,),
          CourseInfo(imagePath: "assets/icon/download_detail.png", length: 'PDF Notes',),
        ],
      ),
    );
  }
}
class CourseInfo extends StatelessWidget {
  final String imagePath;
  final String length;
  const CourseInfo({super.key,
    required this.imagePath,
    required this.length});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: CourseBox(
            imagePath: imagePath,
            width: 30,
            height: 30,
          ),
          alignment: Alignment.center,
        ),
        Container(
          margin: EdgeInsets.only(left: 10),
          child: Text11Normal(text: length,color: AppColor.primarySecondaryElementText,),
        ),
      ],
    );
  }
}
class LessonInfo extends StatelessWidget {
  const LessonInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 325,
      height:80 ,
      margin: const EdgeInsets.only(top: 20),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text20Normal(
            text: 'Lesson List',
            color: AppColor.primaryText1,
            fontWeight: FontWeight.bold,
            textAlign: TextAlign.start,),
          const SizedBox(height: 10,),
          Container(
            width: 325,
            height: 80,
            decoration: appBoxShadow(
              radius: 19,
              sR: 2,
              bR: 3,
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
            child: InkWell(
              onTap: (){},
              child:  Row(
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
            ),
          )
        ],
      ),
    );
  }
}
class buildCourses extends StatelessWidget {
  final String imagePath;
  const buildCourses({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return  Container(
        height: context.screenWidth*0.38,
        width: context.screenWidth*0.38,
        child: Image.asset(
            imagePath,
          fit: BoxFit.fitHeight
        ),
    decoration: BoxDecoration(
    color: CupertinoColors.white,
    borderRadius: BorderRadius.circular(30),

          ),
    );
  }
}