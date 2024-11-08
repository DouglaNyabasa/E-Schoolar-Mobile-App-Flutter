import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:typewritertext/typewritertext.dart';

import '../../constants/appcolors.dart';





class LogInHeader extends StatelessWidget {
  const LogInHeader({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Image(
            height: 200,
            image: AssetImage("assets/images/logo.png"),
          ),
        ),
        SizedBox(height: 10,),
        TypeWriter(
          controller: TypeWriterController(
              text: "Welcome Back ,Continue Learning With Us ",
              duration: const Duration(milliseconds: 210)
          ),
          builder: (context, value) {
            return AutoSizeText(
              value.text,
              maxLines: 4,style: TextStyle( fontWeight: FontWeight.bold,fontSize: 15 ),
              maxFontSize: 18,
              minFontSize: 18,
              textAlign: TextAlign.left,
            );
          },
        ),
        // Text("Hello ,Welcome back",
        //   style:
        //   TextStyle(
        //       color: AppColor.secondary,
        //       fontWeight: FontWeight.bold,
        //       fontSize: 20
        //   ),),

      ],
    );
  }
}