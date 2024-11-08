import 'package:e_schoolar_app/screens/students_module/HomeScreen/home_screen.dart';
import 'package:e_schoolar_app/screens/students_module/chat_screen/chart_screen.dart';
import 'package:e_schoolar_app/screens/students_module/course_details/course_screen.dart';
import 'package:e_schoolar_app/screens/students_module/profile_screen/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

import '../widgets/app_buttom_bar.dart';
import '../widgets/app_icons.dart';

class AppNavBar extends StatelessWidget {
  const AppNavBar({
    required this.child,
    Key? key,
  }) : super(key: key ?? const ValueKey<String>('AppNavBar'));

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: AppBottomBar(
        opacity: .2,
        currentIndex: _calculateSelectedIndex(context),
        onTap: (int? index) => _onTap(context, index ?? 0),
        borderRadius: const BorderRadius.vertical(top: Radius.circular(23)),
        elevation: 8,
        hasInk: true, //new, gives a cute ink effect
        items: _navigationItems,
      ),
    );
  }

  static const _navigationItems = <AppBottomBarItem>[
    AppBottomBarItem(
      icon: Icon(CupertinoIcons.home),
      activeIcon: Icon(Iconsax.home1),
      title: Text("Home"),
    ),
    AppBottomBarItem(
      icon: Icon(CupertinoIcons.video_camera),
      activeIcon: Icon(CupertinoIcons.video_camera),
      title: Text("Courses"),
    ),
    AppBottomBarItem(
      icon: Icon(CupertinoIcons.chat_bubble_text),
      activeIcon: Icon(CupertinoIcons.chat_bubble_text),
      title: Text("Chat"),
    ),
    AppBottomBarItem(
      icon: Icon(CupertinoIcons.profile_circled),
      activeIcon: Icon(CupertinoIcons.profile_circled),
      title: Text("Profile"),
    )
  ];

  static int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.toString();

    if (location.startsWith(HomeScreen.routeName)) {
      return 0;
    }
    if (location.startsWith(CourseScreen.routeName)) {
      return 1;
    }
    if (location.startsWith(ChartScreen.routeName)) {
      return 2;
    }
    if (location.startsWith(ProfileScreen.routeName)) {
      return 3;
    }

    return 0;
  }

  /// Navigate to the current location of the branch at the provided index when
  /// tapping an item in the BottomNavigationBar.
  void _onTap(BuildContext context, int index) {
    switch (index) {
      case 0:
        GoRouter.of(context).go(HomeScreen.routeName);
        break;
      case 1:
        GoRouter.of(context).go(CourseScreen.routeName);
        break;
      case 2:
        GoRouter.of(context).go(ChartScreen.routeName);
        break;
      case 3:
        GoRouter.of(context).go(ProfileScreen.routeName);
        break;
    }
  }
}
