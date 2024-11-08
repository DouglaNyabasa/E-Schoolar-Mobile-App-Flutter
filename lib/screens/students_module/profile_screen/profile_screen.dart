import 'package:e_schoolar_app/common/widgets/premium_widget.dart';
import 'package:e_schoolar_app/common/widgets/text.dart';
import 'package:e_schoolar_app/constants/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' hide Badge;
import 'package:badges/badges.dart';

import '../../../common/widgets/appShadow.dart';
import '../../../common/widgets/menu_buttons.dart';
import '../../../common/widgets/my_course_card.dart';

class ProfileScreen extends StatefulWidget {
  static const String routeName = '/profile';
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ProfileHeader(

            ),
            PremiumCard(),
             MyCourseCard(course: [],),
            MenuButtons(),
            const SizedBox(height: 14,),
            GestureDetector(
                child: Container(
                  height: 58,
                  margin: EdgeInsets.only(right: 6,left: 6,bottom: 10),
                  decoration: BoxDecoration(
                    color: AppColor.errorColor,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding: EdgeInsets.all(20),
                  child: Center(
                    child: Text("Log Out",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                  ),
                )),
            const SizedBox(height: 14,),

          ],
        ),
      ),
    );
  }
}

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(child:
          Padding(padding: EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.symmetric(vertical: 1.7),
              child: Row(
                children: [
                  Container(
                    child: Image.asset(
                        "assets/images/u1.png",
                      width: 50,
                    ),
                    margin: EdgeInsets.only(right: 4,left: 4),
                  ),
                  SizedBox(width: 5,),
                  Divider(color: AppColor.gray,thickness: 2,),
                  Column(
                    children: [
                      Text16Normal(text: "Douglas Nyabasa", color: AppColor.gray, fontWeight: FontWeight.bold),
                      Text11Normal(text: "douglasdev@gmail.com", color: Colors.black,),
                    ],
                  )

                ],
              ),

              )
            ],
          ),
          )
          ),
          InkWell(
            onTap: (){},
            child:Padding(
              padding:  EdgeInsets.all(10.0),
            child:
            Container(
              decoration: appBoxShadow(color: AppColor.appBarColor,radius: 15),
              padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
              child: Text("Edit",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
            )
            ),

          )
        ],
      ),
    );
  }
}



