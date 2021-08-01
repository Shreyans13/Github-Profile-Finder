import 'package:flutter/material.dart';
import 'package:github_profile_finder/introScreens/screen1.dart';
import 'package:github_profile_finder/introScreens/screen2.dart';
import 'package:github_profile_finder/pages/home.dart';
import 'package:github_profile_finder/util/util.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData().copyWith(
        primaryColor: Color(0xfff3d503),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return getValue()
        ? Scaffold(
            body: LiquidSwipe(
            pages: [Screen1(), Screen2()],
            slideIconWidget: Icon(Icons.arrow_back_ios),
            positionSlideIcon: 0.8,
            enableLoop: false,
            enableSideReveal: true,
          ))
        : Home();
  }
}
