import 'package:badges/badges.dart';
import 'package:e_schoolar_app/common/widgets/appShadow.dart';
import 'package:e_schoolar_app/common/widgets/app_image.dart';
import 'package:e_schoolar_app/common/widgets/text.dart';
import 'package:e_schoolar_app/constants/appcolors.dart';
import 'package:e_schoolar_app/screens/students_module/course_details/view/course_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' hide Badge;
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

import '../../../common/widgets/banner.dart';
import '../../../common/widgets/bottom_navbar.dart';
import '../../../common/widgets/home_menu_bar.dart';
import '../../../common/widgets/search.dart';

class HomeScreen extends ConsumerWidget {
  static const String routeName = '/home';
   HomeScreen({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context , WidgetRef ref) {
    return  Scaffold(

      key: _scaffoldkey,
      drawer: Drawer(
        backgroundColor: AppColor.backgroundColor,
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 40),
          children: <Widget>[
            Container(
              child: Image.asset(
                "assets/images/u1.png",
                width: 90,
                height: 90,

              ),
              margin: EdgeInsets.only(right: 2,),
            ),

            const SizedBox(height: 10,),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                "Douglas Nyabasa",
                style: TextStyle(
                    color: AppColor.backgroundColorDark,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "douglasnyabasa@gmail.com",
                style: TextStyle(
                    color: AppColor.backgroundColorDark,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
            ),
            // Text(  currentUser.email!,
            //   style: TextStyle(
            //       color: AppColor.white,
            //       fontSize: 20,
            //       fontWeight: FontWeight.w700),
            //   textAlign: TextAlign.center,
            // ),
            const SizedBox(height: 10,),
            const Divider(
              height: 2,
            ),
            // ListTile(
            //   onTap: () => Navigator.of(context).pop(),
            //   selectedColor: AppColor.gray60 ,
            //   selected: true,
            //   contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5) ,
            //   leading:  const Icon( Icons.home,color: AppColor.backgroundColorDark,
            //     size: 20,) ,
            //   title:  const Text('H O M E',style: TextStyle(color: AppColor.backgroundColorDark, fontSize: 12,fontWeight: FontWeight.bold)),
            // ),
            ListTile(
              onTap:(){}
              // signOut
              ,
              selectedColor: AppColor.gray60 ,
              selected: true,
              contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5) ,
              leading:  const Icon( CupertinoIcons.calendar,color: AppColor.backgroundColorDark,
                size: 20,) ,
              title:  const Text('E V E N T S ',style: TextStyle(color: AppColor.backgroundColorDark, fontSize: 12,fontWeight: FontWeight.bold)),
            ),
            ListTile(
              onTap:(){}
              // signOut
              ,
              selectedColor: AppColor.gray60 ,
              selected: true,
              contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5) ,
              leading:  const Icon( Iconsax.task,color: AppColor.backgroundColorDark,
                size: 20,) ,
              title:  const Text('A S S I G N M E N T S ',style: TextStyle(color: AppColor.backgroundColorDark, fontSize: 12,fontWeight: FontWeight.bold)),
            ),
            ListTile(
              onTap:(){}
              // signOut
              ,
              selectedColor: AppColor.gray60 ,
              selected: true,
              contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5) ,
              leading:  const Icon( CupertinoIcons.book,color: AppColor.backgroundColorDark,
                size: 20,) ,
              title:  const Text('S T U D Y   M A T E R I A L  ',style: TextStyle(color: AppColor.backgroundColorDark, fontSize: 12,fontWeight: FontWeight.bold)),
            ),
            ListTile(
              // onTap:  ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ())),
              selectedColor: AppColor.gray60 ,
              selected: true,
              contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5) ,
              leading:  const Icon( CupertinoIcons.settings,color: AppColor.backgroundColorDark,
                size: 20,) ,
              title:  const Text('S E T T I N G S',style: TextStyle(color: AppColor.backgroundColorDark, fontSize: 12,fontWeight: FontWeight.bold)),
            ),
            ListTile(
              onTap:(){}
              // signOut
              ,
              selectedColor: AppColor.gray60 ,
              selected: true,
              contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5) ,
              leading:  const Icon( Icons.logout,color: AppColor.backgroundColorDark,
                size: 20,) ,
              title:  Text('L O G O U T',style: TextStyle(color: AppColor.backgroundColorDark, fontSize: 12,fontWeight: FontWeight.bold)),
            ),

          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15,left: 15,right: 15,bottom: 10),
            decoration: BoxDecoration(
                color: AppColor.primary,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                      },
                      child:
                      InkWell(
                        onTap: (){  _scaffoldkey.currentState!.openDrawer(); },
                        child:
                        const Icon(
                          CupertinoIcons.list_bullet,
                          size: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){},
                      child:Padding(
                        padding:  EdgeInsets.all(10.0),
                        child:
                        Badge(
                          animationType: BadgeAnimationType.scale,
                          animationDuration: const Duration(milliseconds: 200),
                          badgeColor: CupertinoColors.systemRed,
                          badgeContent: Text(
                            "?",style: TextStyle(fontSize: 12,color: Colors.white),
                          ),
                          child: Icon(
                              CupertinoIcons.bell,color: Colors.white,
                          ),

                        ),
                      ),

                    )
                  ],
                ),
                SizedBox(height: 15,),
                Padding(padding: EdgeInsets.only(left: 3,),
                  child: Text("Hie Douglas",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 22,letterSpacing: 1,wordSpacing: 2),),),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  width: MediaQuery.of(context).size.width,
                  height: 25,
                  alignment: Alignment.center,

                  child: Container()

                )
              ],
            ),
          ),
          const SizedBox(height: 15,),
          banner(ref:ref),
          const SizedBox(width: 10,),
          const HomeMenuBar(),
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => CourseDetails()));
            },
            child: Container(
              margin: EdgeInsets.only(left: 3 , right: 3),
              child: GridView.builder(
                shrinkWrap: true,
                  physics: ScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    crossAxisSpacing: 6,
                  ),
                itemCount: 6,

                itemBuilder: (
                    BuildContext context,
                    int index) {
                    return CourseBox();
                },),
            ),
          )
          // CustomScrollView(
          //   shrinkWrap: true,
          //   physics: ScrollPhysics(),
          //   slivers: [
          //     SliverPadding(
          //         padding: EdgeInsets.all(20),
          //       sliver: SliverGrid.count(
          //         crossAxisCount: 2,
          //         crossAxisSpacing: 40,
          //         children: [
          //
          //         ],
          //           ),
          //     )
          //   ],
          // )


        ],
      ),
    );
  }
}
