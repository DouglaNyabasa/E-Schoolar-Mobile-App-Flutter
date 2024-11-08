
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../constants/appcolors.dart';
import '../../../constants/sizes.dart';
import '../LoginScreen/signIn_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey<FormState> _key = GlobalKey <FormState>();

  final emailTextController = TextEditingController();

  final passwordTextController = TextEditingController();

  final confirmpasswordTextController = TextEditingController();

  final fullNameController = TextEditingController();

  final phoneController = TextEditingController();


  var _isObscured;

  @override
  void initState(){
    super.initState();
    _isObscured = true;
  }

  void displayMessage(String message){
    showDialog(context: context,
        builder: (context)=> AlertDialog(
          title: Text(message),
        ));
  }

  // void signUp() async {
  bool confirmpassword(){
    if(passwordTextController.text.trim() == confirmpasswordTextController.text.trim()){
      return true;
    }else{
      return false;
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    emailTextController.dispose();
    passwordTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: () => Navigator.of(context).pop(),
            icon: Icon(Icons.arrow_back, color: Colors.black,)),
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(" Let\'s Create An Account !!", style:
            TextStyle(
                color: AppColor.secondary,
                fontWeight: FontWeight.bold,
                fontSize: 25
            ),
            ),

            const SizedBox(height: 26,),
            Form(
                key: _key,

                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: fullNameController,
                            obscureText: false,
                            keyboardType: TextInputType.emailAddress,
                            cursorColor: Colors.black,
                            style: TextStyle(
                                color: Colors.black),
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person_2_outlined,
                                color: Colors.black,),
                              labelText: "Full Name",
                              labelStyle: TextStyle(
                                  color: Colors.black),
                              hintStyle: TextStyle(
                                  color: Colors.black
                              ),
                              filled: true,
                              floatingLabelBehavior: FloatingLabelBehavior
                                  .never,
                              fillColor: Colors.transparent,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: const BorderSide(
                                      width: 0, style: BorderStyle.solid)),
                            ),

                            validator: (val) {
                              if (val!.isNotEmpty) {
                                return null;
                              } else
                                return "Please Enter Full Name";
                            },
                          ),

                        ),
                        const SizedBox(width: 12,),
                        Expanded(
                          child: TextFormField(
                            controller: phoneController,
                            obscureText: false,
                            keyboardType: TextInputType.number,
                            cursorColor: Colors.black,
                            style: TextStyle(
                                color: Colors.black),
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.phone,
                                color: Colors.black,),
                              labelText: "Phone Number",
                              labelStyle: TextStyle(
                                  color: Colors.black),
                              hintStyle: TextStyle(
                                  color: Colors.black
                              ),
                              filled: true,
                              floatingLabelBehavior: FloatingLabelBehavior
                                  .never,
                              fillColor: Colors.white.withOpacity(0.3),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: const BorderSide(
                                      width: 0, style: BorderStyle.solid)),
                            ),

                            validator: (val) {
                              if (val!.isNotEmpty) {
                                return null;
                              } else
                                return "Please Enter Your Number";
                            },
                          ),

                        ),



                      ],
                    ),
                    const SizedBox(height: 25,),
                    TextFormField(
                      controller: emailTextController,
                      obscureText: false,
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Colors.black,
                      style: TextStyle(

                          color: Colors.black),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.email_outlined, color: Colors.black,),

                        labelText: "Email",
                        labelStyle: TextStyle(
                            color: Colors.black),
                        hintStyle: TextStyle(
                            color: Colors.black
                        ),
                        filled: true,
                        floatingLabelBehavior: FloatingLabelBehavior
                            .never,
                        fillColor: Colors.white.withOpacity(0.3),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(
                                width: 0, style: BorderStyle.solid)),
                      ),
                      validator: (val) {
                        return RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(val!)
                            ? null
                            : "Please Enter a Valid Email";
                      },
                    ),

                    const SizedBox(height: 25,),
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
                    const SizedBox(height: 25,),
                    TextFormField(
                      controller: confirmpasswordTextController,
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

                        labelText: "Confirm Password",
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

                    const SizedBox(height: 25,),
                    GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(
                              context,
                              "/home" // Replace 'HomeScreen()' with your actual home screen widget
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
                            child: Text("Create Account",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                          ),
                        )),
                    const SizedBox(height: 12,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an Account ?",
                          style:
                          TextStyle(
                              color: Colors.grey[700],
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(width: 5,),

                        GestureDetector(
                          onTap: () =>
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => SignInScreen())),
                          child: Text("Sign-In now !",
                            style:
                            TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold
                            ),),
                        )
                      ],
                    ),

                  ],
                )
            ),
          ],
        ),
      ),

    );
  }
}
