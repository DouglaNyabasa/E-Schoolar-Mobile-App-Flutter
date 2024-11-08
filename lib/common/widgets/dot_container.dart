

import 'package:flutter/cupertino.dart';

import '../../constants/appcolors.dart';

class DotContainer extends StatelessWidget {
  const DotContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: Container(
        width: 3,
        height: 3,
        decoration: const BoxDecoration(
          color: AppColor.disable,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
