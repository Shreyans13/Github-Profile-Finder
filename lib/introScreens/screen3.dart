import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:github_profile_finder/introScreens/layout.dart';
import 'package:github_profile_finder/util/customColors.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class Screen3 extends StatelessWidget {
  final LiquidController controller;

  Screen3({required this.controller});

  @override
  Widget build(BuildContext context) {
    return ScreenLayout(
        tittle: "Analyse",
        subTittle: "Analyse your github profile",
        image: "./assets/images/illustrations/pair_programming.svg",
        // backButton: true,
        // nextButton: false,
        color: KDarkBlueColor,
        controller: controller);
  }
}
