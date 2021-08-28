import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:github_profile_finder/introScreens/screen1.dart';
import 'package:github_profile_finder/introScreens/screen2.dart';
import 'package:github_profile_finder/introScreens/screen3.dart';
import 'package:github_profile_finder/introScreens/screen4.dart';
import 'package:github_profile_finder/pages/search.dart';
import 'package:github_profile_finder/util/util.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import 'util/customColors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterConfig.loadEnvVariables();
  await Util.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Github Profile Finder',
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
  Color _color = KDarkOrangeColor;
  final LiquidController controller = LiquidController();
  pageChangeCallback(int newPage) {
    if (newPage == 3)
      Util.changeSideIcon(false);
    else
      Util.changeSideIcon(true);
    switch (newPage) {
      case 0:
        _color = KDarkOrangeColor;
        break;
      case 1:
        _color = KDarkGreenColor;
        break;
      case 2:
        _color = KDarkBlueColor;
        break;
      case 3:
        _color = KDarkYellowColor;
        break;
    }
    setState(() {});
  }

  Icon checkIcon() {
    if (Util.getIcon())
      return Icon(Icons.arrow_back_ios);
    else
      return Icon(null);
  }

  @override
  Widget build(BuildContext context) {
    return Util.getFirstLoad() == false
        ? Scaffold(
            backgroundColor: _color,
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
