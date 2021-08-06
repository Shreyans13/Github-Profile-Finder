import 'package:flutter/material.dart';
import 'package:github_profile_finder/util/customColors.dart';
import 'package:github_profile_finder/util/customText.dart';

class Repository extends StatelessWidget {
  // const Repository({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: KDarkBlueColor,
              ),
              height: 150,
              width: double.infinity,
              child: KTitle(text: "Shreyans"),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: KDarkYellowColor,
              ),
              height: 150,
              width: double.infinity,
              child: KTitle(text: "Shreyans"),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: KDarkGreenColor,
              ),
              height: 150,
              width: double.infinity,
              child: KTitle(text: "Shreyans"),
            ),
          ],
        ),
      ),
    );
  }
}
