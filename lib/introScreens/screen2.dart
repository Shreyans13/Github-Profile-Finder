import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:github_profile_finder/introScreens/layout.dart';
import 'package:github_profile_finder/util/customColors.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class Screen2 extends StatelessWidget {
  final LiquidController controller;

  Screen2({required this.controller});

  @override
  Widget build(BuildContext context) {
    return ScreenLayout(
        tittle: "Search",
        subTittle: "Search your github profile",
        image: "./assets/images/illustrations/version_control.svg",
        color: KDarkGreenColor,
        controller: controller);
  }
}
