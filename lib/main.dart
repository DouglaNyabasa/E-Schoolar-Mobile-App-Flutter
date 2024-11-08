
import 'package:e_schoolar_app/screens/students_module/HomeScreen/home_screen.dart';
import 'package:e_schoolar_app/screens/students_module/course_details/view/course_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'common/routes/app_router.dart';

void main() {
  runApp(const
  ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',


      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      // home:  HomeScreen(),

      // initialRoute: "/",
      // routes: {
      //   "/": (context)=>  WelcomeScreen(),
      //   "/signIn":(context)=>  SignInScreen(),
      //   "/register":(context)=>  RegisterScreen(),
      //   "/home":(context)=>  HomeScreen(),
      // },

    );
  }
}

