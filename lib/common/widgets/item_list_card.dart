import 'package:e_schoolar_app/constants/appcolors.dart';
import 'package:flutter/material.dart';

class ItemListCard extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final String name;
  final String? data;
  final String? trailing;
  final VoidCallback? onPressed;
  const ItemListCard({super.key, required this.icon, required this.iconSize, required this.name, this.data, this.trailing, this.onPressed});
  

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onPressed,
      child: Ink(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: 50,
              child: Icon(
                icon,
                size: iconSize,
                color: AppColor.gray,
              ),
            ),

            Expanded(child: Padding(padding: EdgeInsets.only(right: 6),
              child: Text(name ,style: TextStyle(color: AppColor.gray),),
            )),
            SizedBox(width: 8,),
            Expanded(child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Icon(Icons.arrow_forward_ios_sharp,size: 16,),
            ))
          ],
        ),
      ),
    );
  }
}
