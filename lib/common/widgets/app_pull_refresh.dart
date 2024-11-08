

import 'package:flutter/cupertino.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

import '../../constants/appcolors.dart';

class AppPullRefresh extends StatelessWidget {
  const AppPullRefresh({
    required this.onRefresh,
    required this.child,
    this.color = AppColor.primary,
    this.backgroundColor = AppColor.background,
    Key? key,
  }) : super(key: key);
  final Widget child;
  final Future<void> Function() onRefresh;
  final Color? color;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return LiquidPullToRefresh(
      onRefresh: onRefresh,
      showChildOpacityTransition: false,
      color: color,
      backgroundColor: backgroundColor,
      height: 87,
      springAnimationDurationInMilliseconds: 600,
      animSpeedFactor: 1.2,
      child: child,
    );
  }
}
