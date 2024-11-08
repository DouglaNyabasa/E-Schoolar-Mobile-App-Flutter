import 'package:e_schoolar_app/screens/students_module/HomeScreen/home_screen.dart';
import 'package:e_schoolar_app/screens/students_module/chat_screen/chart_screen.dart';
import 'package:e_schoolar_app/screens/students_module/course_details/course_screen.dart';
import 'package:e_schoolar_app/screens/students_module/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../screens/students_module/course_details/view/course_details.dart';


class AppRoutes {
   static final mainMenuRoutes = <RouteBase>[
      GoRoute(
         name: HomeScreen.routeName,
         path: HomeScreen.routeName,
         pageBuilder: (_, state) {
            return CustomTransitionPage<void>(
               key: state.pageKey,
               transitionDuration: kThemeAnimationDuration,
               reverseTransitionDuration: kThemeAnimationDuration,
               child:  HomeScreen(),
               transitionsBuilder: (_, animation, __, child) {
                  return FadeTransition(opacity: animation, child: child);
               },
            );
         },
      ),
      GoRoute(
         name: CourseScreen.routeName,
         path: CourseScreen.routeName,
         pageBuilder: (_, state) {
            return CustomTransitionPage<void>(
               key: state.pageKey,
               transitionDuration: kThemeAnimationDuration,
               reverseTransitionDuration: kThemeAnimationDuration,
               child:  CourseScreen(),
               transitionsBuilder: (_, animation, __, child) {
                  return FadeTransition(opacity: animation, child: child);
               },
            );
         },
      ),
      GoRoute(
         name: ChartScreen.routeName,
         path: ChartScreen.routeName,
         pageBuilder: (_, state) {
            return CustomTransitionPage<void>(
               key: state.pageKey,
               transitionDuration: kThemeAnimationDuration,
               reverseTransitionDuration: kThemeAnimationDuration,
               child: const ChartScreen(),
               transitionsBuilder: (_, animation, __, child) {
                  return FadeTransition(opacity: animation, child: child);
               },
            );
         },
      ),
      GoRoute(
         name: ProfileScreen.routeName,
         path: ProfileScreen.routeName,
         pageBuilder: (_, state) {
            return CustomTransitionPage<void>(
               key: state.pageKey,
               transitionDuration: kThemeAnimationDuration,
               reverseTransitionDuration: kThemeAnimationDuration,
               child: const ProfileScreen(),
               transitionsBuilder: (_, animation, __, child) {
                  return FadeTransition(opacity: animation, child: child);
               },
            );
         },
      ),
      GoRoute(
         name: CourseDetails.routeName,
         path: CourseDetails.routeName,
         pageBuilder: (_, state) {
            return CustomTransitionPage<void>(
               key: state.pageKey,
               transitionDuration: kThemeAnimationDuration,
               reverseTransitionDuration: kThemeAnimationDuration,
               child: const CourseDetails(),
               transitionsBuilder: (_, animation, __, child) {
                  return FadeTransition(opacity: animation, child: child);
               },
            );
         },
      ),
   ].toList(growable: false);
}