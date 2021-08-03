import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:github_profile_finder/introScreens/layout.dart';
import 'package:github_profile_finder/util/customColors.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class Screen1 extends StatelessWidget {
  // const Screen1({Key? key}) : super(key: key);

  final LiquidController controller;

  Screen1({required this.controller});

  @override
  Widget build(BuildContext context) {
    return ScreenLayout(
        tittle: "Github Profile Finder",
        subTittle: "Made by Shreyans Jain",
        image: "./assets/images/illustrations/developer_activity.svg",
        color: KDarkOrangeColor,
        controller: controller);
  }
}
