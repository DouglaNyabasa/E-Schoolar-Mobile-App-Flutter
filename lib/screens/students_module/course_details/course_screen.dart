import 'package:badges/badges.dart';
import 'package:e_schoolar_app/common/widgets/text.dart';
import 'package:e_schoolar_app/constants/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' hide Badge;

class CourseScreen extends StatelessWidget {
  static const String routeName = '/course';
  const CourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool _isLoading = false;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text25Normal(text: "All Courses", color: AppColor.primaryText1, fontWeight: FontWeight.bold),
        leading: IconButton(onPressed: () => Navigator.of(context).pop(),
            icon: Icon(Icons.arrow_back, color: Colors.black,)),
        actions: [
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
                  (CupertinoIcons.cart),
                ),

              ),
            ),

          ),

          SizedBox(width: 8,)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(

                obscureText: false,
                keyboardType: TextInputType.emailAddress,
                cursorColor: Colors.black,
                style: TextStyle(
                    color: Colors.black),
                decoration:  InputDecoration(
                  prefixIcon: Icon( CupertinoIcons.search, color: Colors.black,) ,

                  labelText: "Search for Courses....",
                  labelStyle: TextStyle(color: Colors.black),
                  hintStyle: TextStyle(
                      color: Colors.black
                  ),
                  filled: true,
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  fillColor: Colors.white.withOpacity(0.3),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide( width: 0, style: BorderStyle.solid)),
                ) ,

                validator: (val){
                  return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(val!)? null : "Please Enter a Valid Email";
                },
              ),
            ),
            Column(
              children: [
                _isLoading == false ?
                const Center(
                  child: CircularProgressIndicator(
                    color: AppColor.primary,
                  ),
                )
                    : const Text("No Courses"
                )
              ],
            ),


          ],
        ),
      ),

     );
  }
}



