

import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../../common/widgets/text.dart';
import '../../../constants/appcolors.dart';

class ChartScreen extends StatefulWidget {
  static const String routeName = '/chat';
  const ChartScreen({super.key});

  @override
  State<ChartScreen> createState() => _ChartScreenState();
}

class _ChartScreenState extends State<ChartScreen> {
  Stream? groups;
   String userName = "";
  String email = "";
  bool _isLoading = true;
  // AuthService authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text25Normal(text: "Chat Groups", color: AppColor.primaryText1, fontWeight: FontWeight.bold),
        leading: IconButton(onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.arrow_back, color: Colors.black,)),
        actions: [
          InkWell(
            onTap: (){},
            child:const Padding(
              padding:  EdgeInsets.all(10.0),
              child:
              Icon(
                (CupertinoIcons.search),
              ),
            ),

          ),
        ],
      ),
      body: groupList(),
      floatingActionButton:FloatingActionButton(
        elevation: 0,
          backgroundColor: AppColor.primary,
          child: const Icon(CupertinoIcons.add, color: Colors.white,size: 30,),
          onPressed: (){popUpDialog(context);}) ,
    );
  }

  popUpDialog(BuildContext context){
    showDialog(
      barrierDismissible: false,
        context: context,
        builder: (context){
          return AlertDialog(
            title: const Text("Create Group", textAlign: TextAlign.left,),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                 // _isLoading == true ?
                     TextField(
                       decoration: InputDecoration(
                         enabledBorder: OutlineInputBorder(
                           borderSide: BorderSide(
                             color: AppColor.primary,
                           ),
                           borderRadius: BorderRadius.circular(10),),
                         errorBorder: OutlineInputBorder(
                           borderSide: BorderSide(
                             color: AppColor.primary,
                           ),
                           
                         ),
                         focusedBorder: OutlineInputBorder(
                           borderSide: BorderSide(
                             color: AppColor.primary,
                           ),borderRadius: BorderRadius.circular(10)
                         )
                         
                       ),
                     )
                     // :
                     // Center(
                     //   child:CircularProgressIndicator(
                     //     color: AppColor.primary,
                     //   ),
                     //
                     // )

              ],
            ),
          );
        });
  }

  groupList(){
    return StreamBuilder(
        stream: groups,
        builder: (context, AsyncSnapshot snapshot){
          if(snapshot.hasData){
            if(snapshot.data['groups'] != null){
              if(snapshot.data['groups'].legnth !=0){
                return Text11Normal(text: "hello",);
              }else{
                return noGroupWidget();
              }
            }else{
              return noGroupWidget();
            }
          }else{
            return Center(
              child: Container()
              // CircularProgressIndicator(
              //   color: AppColor.primary,
              // ),

            );
          }
        });
  }

  noGroupWidget(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal:26 ),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: (){
              popUpDialog(context);
            },
              child: Icon(CupertinoIcons.add_circled, color: Colors.grey,size: 75,)),
          SizedBox(height: 20,),
          Text( "You've not joined any groups, tap on the add icon to create a group or also search for a group ",
            textAlign: TextAlign.center,
          )
        ],
      ),

    );
  }
}
