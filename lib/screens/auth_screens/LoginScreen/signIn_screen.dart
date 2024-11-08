import 'package:e_schoolar_app/common/widgets/buttons.dart';
import 'package:e_schoolar_app/common/widgets/next_button.dart';
import 'package:e_schoolar_app/screens/students_module/HomeScreen/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../common/widgets/header.dart';
import '../../../common/widgets/signIn_widget.dart';
import '../../../constants/appcolors.dart';
import '../../../constants/sizes.dart';
import '../../../constants/spacing_styles.dart';

class SignInScreen extends StatefulWidget {
   SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final GlobalKey<FormState> _key = GlobalKey <FormState>();

  var _isObscured;

  final emailTextController = TextEditingController();

  final passwordTextController = TextEditingController();

  @override
  void initState(){
    super.initState();
    _isObscured = true;
  }

  // void signIn() async {
  //   showDialog(
  //     context: context,
  //     builder: (context) => const Center(
  //       child: CircularProgressIndicator(),
  //     ),
  //   );
  //
  //   try {
  //     await FirebaseAuth.instance.signInWithEmailAndPassword(
  //       email: emailTextController.text,
  //       password: passwordTextController.text,
  //     );
  //
  //     if (context.mounted) {
  //       // Navigate to the home screen after successful sign-in
  //       Navigator.pushAndRemoveUntil(
  //         context,
  //         MaterialPageRoute(builder: (context) => const HomeScreen()), // Replace 'HomeScreen()' with your actual home screen widget
  //             (route) => false,
  //       );
  //     }
  //   } on FirebaseAuthException catch (e) {
  //     Navigator.pop(context);
  //     Get.snackbar(
  //       "Required",
  //       e.message.toString(),
  //       snackPosition: SnackPosition.BOTTOM,
  //       backgroundColor: AppColor.secondary50,
  //       colorText: AppColor.backgroundColorDark,
  //       icon: const Icon(Icons.warning_amber_rounded, color: Colors.black, size: 30),
  //     );
  //   }
  // }

  @override
  void dispose() {
    // TODO: implement dispose
    emailTextController.dispose();
    passwordTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding:TSpacingStyles.paddingWIthAppBarHeight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LogInHeader(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Form
                    (
                      key: _key,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: emailTextController,
                            obscureText: false,
                            keyboardType: TextInputType.emailAddress,
                            cursorColor: Colors.black,
                            style: TextStyle(
                                color: Colors.black),
                            decoration:  InputDecoration(
                              prefixIcon: Icon( Icons.email_outlined, color: Colors.black,) ,
          
                              labelText: "Email",
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
                          const SizedBox(height: 15,),
                          TextFormField(
                            controller: passwordTextController,
                            obscureText: _isObscured,
                            keyboardType: TextInputType.emailAddress,
                            cursorColor: Colors.black,
                            style: TextStyle(
                                color: Colors.black),
                            decoration:  InputDecoration(
                              prefixIcon: Icon( Iconsax.password_check, color: Colors.black,) ,
                              suffixIcon: IconButton(
                                  onPressed: (){
                                    setState(() {
                                      _isObscured =! _isObscured;
                                    });
                                  }, icon: _isObscured ? Icon(Icons.remove_red_eye_sharp, color: Colors.black,) :Icon(Iconsax.eye_slash, color: Colors.black,)
                              ),
          
                              labelText: "Password",
                              labelStyle: TextStyle(color: Colors.black.withOpacity(0.9)),
                              hintStyle: TextStyle(
                                  color: Colors.black
                              ),
                              filled: true,
                              floatingLabelBehavior: FloatingLabelBehavior.never,
                              fillColor: Colors.white.withOpacity(0.3),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: const BorderSide(width: 0, style: BorderStyle.solid)),
                            ) ,
          
                            onChanged: (value){
                              setState(() {
                                _key.currentState!.validate();
                              });
                            },
                          ),


                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Checkbox(value: true,
                                  onChanged: (value){}),
                                Text("Remember Me", style: TextStyle(
                            fontSize: 14,
                             ),),
                              const SizedBox(width: 68,),
                              TextButton(onPressed: (){},
                                  child: Text("Forget Password",style: TextStyle( color: Colors.blue, ),))
                            ],
                          ),
                          const SizedBox(height: 14,),
                            GestureDetector(
                                child: Container(
                                  height: 58,
                                  decoration: BoxDecoration(
                                    color: AppColor.primary,
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  padding: EdgeInsets.all(20),
                                  child: Center(
                                    child: Text("Sign In",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                                  ),
                                )),
                          const SizedBox(height: SizeConfig.spacingBetween,),
                          GestureDetector(
                            onTap: (){
                              Navigator.pushNamed(
                                  context,
                                  "/register" // Replace 'HomeScreen()' with your actual home screen widget
                              );
                            },
                              child: Container(
                                height: 58,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                padding: EdgeInsets.all(20),
                                child: Center(
                                  child: Text("Register",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                                ),
                              )),

                          const SizedBox(height: 16,),




                        ],
                      )
                  ),
                ),
          
              ],
            ),),
        )
    );
  }
}
