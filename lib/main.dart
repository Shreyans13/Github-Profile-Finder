import 'package:flutter/material.dart';
import 'package:github_profile_finder/introScreens/screen1.dart';
import 'package:github_profile_finder/introScreens/screen2.dart';
import 'package:github_profile_finder/introScreens/screen3.dart';
import 'package:github_profile_finder/introScreens/screen4.dart';
import 'package:github_profile_finder/pages/search.dart';
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
      debugShowCheckedModeBanner: false,
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
  final LiquidController controller = LiquidController();
  pageChangeCallback(int newPage) {
    if (newPage == 3)
      changeSideIcon(false);
    else
      changeSideIcon(true);
    setState(() {});
  }

  Icon checkIcon() {
    if (getIcon())
      return Icon(Icons.arrow_back_ios);
    else
      return Icon(null);
  }

  @override
  Widget build(BuildContext context) {
    return getValue()
        ? Scaffold(
            body: SafeArea(
            child: LiquidSwipe(
              pages: [
                Screen1(controller: controller),
                Screen2(controller: controller),
                Screen3(controller: controller),
                Screen4(controller: controller),
              ],
              slideIconWidget: checkIcon(),
              positionSlideIcon: 0.8,
              enableLoop: false,
              enableSideReveal: true,
              liquidController: controller,
              onPageChangeCallback: pageChangeCallback,
            ),
          ))
        : SearchPage();
  }
}
