import 'package:flutter/cupertino.dart';

import '../../constants/appcolors.dart';

Widget text24Normal({
  String text = "",
  Color color= AppColor.primaryText1,

  FontWeight fontweight = FontWeight.normal}){
  return Text(text,
    textAlign: TextAlign.center,
    style: TextStyle(
        color: color,
        fontSize: 24,
        fontWeight: fontweight,

    ),);
}

// Widget text16Normal({
//   String text = "",
//   Color color = AppColor.secondary,
//   double fontsize  = 16}){
//   return Text(text,
//     textAlign: TextAlign.center,
//     style: TextStyle(
//         color: color,
//         fontSize: fontsize,
//         fontWeight: FontWeight.normal
//     ),);
// }

Widget text14Normal({String text = "", Color color = AppColor.secondary,double fontsize  = 14}){
  return Text(text,
    textAlign: TextAlign.center,
    style: TextStyle(
        color: color,
        fontSize: fontsize,
        fontWeight: FontWeight.normal
    ),);
}

class Text11Normal extends StatelessWidget{
  final String? text;
  final Color color;
  const Text11Normal({
    Key? key,this.text = "", this.color = AppColor.primaryTextText
}): super(key: key);

  @override
  Widget build(BuildContext context) {
   return Text(
     text!,
     textAlign: TextAlign.start,
     style: TextStyle(
       color: color, fontSize: 11, fontWeight: FontWeight.normal
     ),
   );
  }
}

class Text16Normal extends StatelessWidget {
  final TextAlign? textAlign;
  final String text ;
  final Color color ;
  final FontWeight fontWeight;
  const Text16Normal({
    super.key,
    this.textAlign = TextAlign.center,
    required this.text,
    required this.color,
    required this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(color: color,fontSize: 16,fontWeight: fontWeight),
    );
  }
}
class Text20Normal extends StatelessWidget {
  final TextAlign? textAlign;
  final String text ;
  final Color color ;
  final FontWeight fontWeight;
  const Text20Normal({
    super.key,
    this.textAlign = TextAlign.center,
    required this.text,
    required this.color,
    required this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(color: color,fontSize: 20,fontWeight: fontWeight),
    );
  }
}
class Text25Normal extends StatelessWidget {
  final TextAlign? textAlign;
  final String text ;
  final Color color ;
  final FontWeight fontWeight;
  const Text25Normal({
    super.key,
    this.textAlign = TextAlign.center,
    required this.text,
    required this.color,
    required this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(color: color,fontSize: 25,fontWeight: fontWeight),
    );
  }
}