import 'package:flutter/material.dart';
import 'package:github_profile_finder/util/customColors.dart';

class CircularLoader extends StatelessWidget {
  final Color color;
  const CircularLoader({required this.color});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // color: color,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: color,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircularProgressIndicator(
            backgroundColor: Colors.white54,
            color: color,
          ),
        ),
      ),
    );
  }
}

class LinearLoader extends StatelessWidget {
  final Color color;
  const LinearLoader({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white24,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: LinearProgressIndicator(
          backgroundColor: Colors.white54,
          color: color,
        ),
      ),
    );
  }
}
