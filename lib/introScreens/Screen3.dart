import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:github_profile_finder/pages/home.dart';
import 'package:github_profile_finder/util/customColors.dart';

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: KDarkGreenColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Shreyans"),
          GestureDetector(
            onTap: () => {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Home()))
            },
            child: Container(
              child: Text("weqqwdq"),
            ),
          )
        ],
      ),
    );
  }
}
