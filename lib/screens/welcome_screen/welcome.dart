import 'package:dots_indicator/dots_indicator.dart';
import 'package:e_schoolar_app/constants/appcolors.dart';
import 'package:e_schoolar_app/notifier/welcome_notifier.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../common/widgets/onBoardingPage.dart';
import '../../common/widgets/text.dart';

final indexProvider  = StateProvider<int>((ref)=> 0);
class WelcomeScreen extends ConsumerWidget {
   WelcomeScreen({Key? key}): super(key: key);

 final PageController pageController = PageController();
 int dotsIndex=0;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(indexDotProviderProvider);
    return  Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColor.backgroundColor,
           body: Container(
             // margin: EdgeInsets.only(top: 30),
             child: Stack(
               alignment: Alignment.topCenter,
               children: [
                 PageView(
                   onPageChanged: (value){
                     ref.read(indexDotProviderProvider.notifier).changeIndex(value);
                   },

                   controller: pageController,
                   scrollDirection: Axis.horizontal,
                   children: [
                     // first page
                     onBoardingPage(pageController,
                         imagePath: "assets/images/reading.png",
                         subTitle: "Forget about face-face Classes and Learn with the best tutors Online with Us ",
                         title: "E- Scholar Learning",
                       index:1,
                       context:context,),
                     // second page
                     onBoardingPage(pageController,
                         imagePath: "assets/images/man.png",
                         subTitle: "Learn at the comfort of your home and keep in touch with your tutor and class colleagues ",
                         title: "Connect With Best Teachers",
                       index:2,
                       context:context,),
                     // third page
                     onBoardingPage(pageController,
                         imagePath: "assets/images/boy.png",
                         subTitle: "Okay lets get started , you are one Click away from Learning with Us"
                         ,title: "Are you Fascinated ??"
                         , index:3,
                           context:context,
                     )
                   ],
                 ),

                 Positioned(
                     bottom: 125,
                     left: 138,
                     child: DotsIndicator(
                       position: index,
                       dotsCount: 3,
                       mainAxisAlignment: MainAxisAlignment.center,
                       decorator: DotsDecorator(
                         size: const Size.square(9.0),
                         activeSize: const Size(26.0, 8.0),
                         activeColor: AppColor.primary,
                         activeShape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(5)
                         )
                       ),

                     ),

                 ),

               ],
             ),
           ),

        ),
      ),
    );
  }
}
