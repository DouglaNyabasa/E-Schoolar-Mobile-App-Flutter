

import 'package:e_schoolar_app/constants/appcolors.dart';
import 'package:flutter/cupertino.dart';

Widget appImageWithColor({
  String imagePath ="assets/icon/user.png",
double width =16,
double height = 16,
  Color color = AppColor.primaryElement
}){
  return Image.asset(
    imagePath.isEmpty ? "assets/icon/user.png" : imagePath,
    width: width,
    height: height,
    color: color,
  );
}

class AppImage extends StatelessWidget {

  final String imagePath;
  final double width;
  final double height;
   const AppImage({super.key , this.imagePath = "assets/icon/video.png", this.height =16,this.width=16,
   });

  @override
  Widget build(BuildContext context) {
    return  Image.asset(
      imagePath.isEmpty ? "assets/icon/video.png" : imagePath,
      width: width,
      height: height,
      

    );
  }
}
class CourseBox extends StatelessWidget {

  final String imagePath;
  final String? courseDetails;
  final double width;
  final double height;
  const CourseBox({super.key , this.imagePath = "assets/icon/video.png", this.height =16,this.width=16,  this.courseDetails
  });

  @override
  Widget build(BuildContext context) {
    return  Image.asset(
      imagePath.isEmpty ? "assets/icon/video.png" : imagePath,
      width: width,
      height: height,


    );
  }
}


class AppBoxDecorationImage extends StatelessWidget {
  final String imagePath;
  final double width;
  final double height;
  final BoxFit fit;
  final Function()? func;
  const AppBoxDecorationImage({super.key,
     this.imagePath ="assets/icon/user.png" ,
     this.width =40,
     this.height =40,
     this.fit = BoxFit.fitHeight,
    this.func});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: func,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: fit,
              image: AssetImage(imagePath)
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                left: 20
              ),
              child: Text(""),
            ),
            Container(
              margin: EdgeInsets.only(left: 20,bottom: 30),
              child: Text("",
                style: TextStyle(
                  color: AppColor.primaryFourSecondaryElementText,
                  fontSize: 8
                ),
              ),
            )
          ],
        ),

      ),
    );
  }
}
