import 'package:flutter/material.dart';
import 'package:github_profile_finder/util/customColors.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: KDarkYellowColor,
      child: Text('SCREEN - 1'),
    );
  }
}
