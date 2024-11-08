import 'package:e_schoolar_app/common/widgets/item_list_card.dart';
import 'package:e_schoolar_app/common/widgets/text.dart';
import 'package:e_schoolar_app/constants/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuButtons extends StatelessWidget {
  const MenuButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
        padding: const EdgeInsets.only(bottom: 20,right: 20,left: 20),
       child: Ink(
         padding: EdgeInsets.symmetric(vertical: 10),
         decoration: BoxDecoration(
           color: CupertinoColors.white,
           borderRadius: BorderRadius.circular(20),
         ),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Padding(padding: EdgeInsets.symmetric(horizontal: 22,vertical: 10),
             child: Text20Normal(text: 'Other', color: AppColor.gray, fontWeight: FontWeight.bold),
             ),
             const ItemListCard(
                 icon: CupertinoIcons.creditcard,
                 iconSize: 26,
                 name: "Payment Details"),
             const ItemListCard(
                 icon: CupertinoIcons.gift,
                 iconSize: 26,
                 name: "Invite Friends"),
             const ItemListCard(
                 icon: CupertinoIcons.question_circle,
                 iconSize: 26,
                 name: "Questions & Feedback"),
             const ItemListCard(
                 icon: CupertinoIcons.settings_solid,
                 iconSize: 26,
                 name: "Settings"),

           ],
         ),
       ),
    );
  }
}
