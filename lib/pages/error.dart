import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:github_profile_finder/components/customButton.dart';
import 'package:github_profile_finder/util/customColors.dart';
import 'package:github_profile_finder/util/customText.dart';
import 'package:google_fonts/google_fonts.dart';

class ErrorPage extends StatelessWidget {
  final String errorTitle;
  final String errorMessage;
  final bool btnVisibility;

  const ErrorPage(
      {this.errorTitle = "We all make mistakes",
      required this.errorMessage,
      this.btnVisibility = true});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
              padding: EdgeInsets.all(20),
              height: 200,
              child:
                  SvgPicture.asset("./assets/images/illustrations/error.svg")),
          Center(child: KTitle(text: errorTitle)),
          SizedBox(height: 5),
          Center(child: KSubtitle(text: errorMessage)),
          SizedBox(height: 20),
          Visibility(
            visible: btnVisibility,
            child: FractionallySizedBox(
              widthFactor: 0.3,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Retry"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
