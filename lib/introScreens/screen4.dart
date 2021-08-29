import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:github_profile_finder/introScreens/layout.dart';
import 'package:github_profile_finder/util/customColors.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class Screen4 extends StatelessWidget {
  final LiquidController controller;

  Screen4({required this.controller});

  @override
  Widget build(BuildContext context) {
    return ScreenLayout(
        tittle: "Contribute",
        subTittle: "Keep contribitng to the open source",
        image: "./assets/images/illustrations/source_code.svg",
        color: KDarkYellowColor,
        controller: controller);
  }
}
