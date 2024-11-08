import 'package:e_schoolar_app/common/widgets/appShadow.dart';
import 'package:e_schoolar_app/constants/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/app_image.dart';
import '../../../../common/widgets/course_details.dart';
import '../../../../common/widgets/text.dart';

class CourseDetails extends StatefulWidget {
  static const String routeName = '/coursedetails';
  const CourseDetails({super.key});

  @override
  State<CourseDetails> createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:text24Normal(
            text: "Course Details",fontweight: FontWeight.bold
        ),
        leading: IconButton(onPressed: () => Navigator.of(context).pop(),
            icon: Icon(Icons.arrow_back, color: Colors.black,)),
        centerTitle: true,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 25,right: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CourseDetailsThumbnail(),
              CourseDetailsIconText(),
              CourseDetailDescription(),
              CoursePurchaseButton(),
              CourseDetailIncludes(),

            ],
          ),
        ),
      ),
    );
  }
}
