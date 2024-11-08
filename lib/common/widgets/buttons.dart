import 'package:e_schoolar_app/common/widgets/appShadow.dart';
import 'package:e_schoolar_app/common/widgets/text.dart';
import 'package:e_schoolar_app/constants/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class AppButton extends StatelessWidget {
 final double width ;
 final double height ;
 final String buttonName ;
 final bool isLogin ;
 final BuildContext? context;
 final void Function()? func;
  const AppButton({super.key,
     this.width =325,
     this.height =50,
     this.buttonName ="",
     this.isLogin = true,
    this.context,
    this.func,
  });

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: func,
      child: Container(
        width: width,
        height: height,
        decoration: appBoxShadow(
            color: isLogin? AppColor.primaryElement : Colors.white,
            boxBorder: Border.all(color: AppColor.border1)
        ),
        child: Center(
          child: Text16Normal(
            text: buttonName,
            color: isLogin ? AppColor.primarySecondaryBackground : AppColor.primaryText1
            , fontWeight: FontWeight.bold,

          ),
        ),
      ),
    );
  }
}
