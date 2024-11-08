import 'package:e_schoolar_app/constants/appcolors.dart';
import 'package:e_schoolar_app/constants/build_context.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PremiumCard extends StatelessWidget {
  const PremiumCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 300,
      margin: EdgeInsets.only(right: 18.5,left: 18.5,bottom: 20,top: 10),
      decoration: BoxDecoration(
        color: const Color(0xFF292929),
        borderRadius: BorderRadius.circular(25),
        image: DecorationImage(
            image: AssetImage(
          "assets/images/png/black_background.png",
        ),
          fit: BoxFit.fill,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColor.gray,
            blurRadius: 8,
          )
        ]
      ),
      child: Column(
        children: [
          Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child:  Row(
                  children: [
                    Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                                Padding(padding: EdgeInsets.only(left: 8.0,top: 15,bottom: 6),
                                child: Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: AppColor.backgroundColorDark,
                                        border: Border.all(color: const Color(0xFFF08F41)),
                                      ),
                                      child: SvgPicture.asset(
                                          "assets/icon/svg/premium.svg",
                                        height: 13,
                                        width: 13,
                                      ),
                                    ),Padding(padding: EdgeInsets.all(8.0),
                                     child: Text("Get Premium",style: TextStyle(color: CupertinoColors.systemYellow),),
                                    )
                                  ],
                                ),
                                ),
                            Expanded(
                                child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
                                child: Text("Get to the next Level in your Academics with E-Scholar",
                                style: TextStyle(color: AppColor.white),),
                                )
                            )
                          ],
                        )
                    ),
                    GestureDetector(
                      onTap: (){},
                      
                      child: Container(
                        margin: EdgeInsets.all(4),
                        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 11),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: const LinearGradient(
                              colors: [
                                AppColor.accent,
                                AppColor.active
                              ]
                          )
                        ),
                        child: Text("Subscribe",style: TextStyle(color: Colors.brown),),
                      ),
                    )
                  ],
                ),
              )
          ),
          Container(
            width:  context.screenWidth,
            padding: const EdgeInsets.symmetric(vertical: 13,horizontal: 13),
            decoration: const BoxDecoration(
              color: Color(0xFF363535),
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(25)),
            ),
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                      _buildIconButton(
                         icon: CupertinoIcons.book,
                         label: "My Courses",
                         onPressed: (){}),
                  VerticalDivider(
                    width: 3,
                    thickness: 1,
                    color: const Color(0xFF909090).withOpacity(0.3),
                  ),
                  _buildIconButton(
                      icon: CupertinoIcons.pencil_ellipsis_rectangle,
                      label: "Quiz Test",
                      onPressed: (){}),
                  VerticalDivider(
                    width: 3,
                    thickness: 1,
                    color: const Color(0xFF909090).withOpacity(0.3),
                  ),
                  _buildIconButton(
                      icon: CupertinoIcons.chat_bubble_text,
                      label: "Chats",
                      onPressed: (){}),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
Widget _buildIconButton({
  required IconData icon,
  required String label,
  required void Function() onPressed,
}){
  return InkWell(
    onTap: onPressed,
    child: Row(
      children: [
        Icon(icon,color: Color(0xFFF9DB8F),
        ),
        Padding(
            padding: EdgeInsets.all(8.0),
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            color: Color(0xFF909090)
          ),
        ),)
      ],
    ),
  );
}

