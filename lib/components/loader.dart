import 'package:flutter/material.dart';
import 'package:github_profile_finder/util/customColors.dart';

class CircularLoader extends StatelessWidget {
  final Color color;
  const CircularLoader({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Center(
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white24,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircularProgressIndicator(),
            )),
      ),
    );
  }
}

class LinearLoader extends StatelessWidget {
  const LinearLoader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white24,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: LinearProgressIndicator(),
      ),
    );
  }
}
