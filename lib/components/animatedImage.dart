import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AnimatedImage extends StatefulWidget {
  @override
  _AnimatedImageState createState() => _AnimatedImageState();
}

class _AnimatedImageState extends State<AnimatedImage> {
  int _pos = 0;
  late Timer _timer;
  List<String> illustrations = [
    "./assets/images/illustrations/code_typing.svg",
    "./assets/images/illustrations/developer_activity.svg",
    "./assets/images/illustrations/pair_programming.svg",
    "./assets/images/illustrations/pull_request.svg",
    "./assets/images/illustrations/server_push.svg",
    "./assets/images/illustrations/source_code.svg",
    "./assets/images/illustrations/version_control.svg",
  ];
  @override
  void initState() {
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      setState(() {
        _pos = (_pos + 1) % illustrations.length;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(illustrations[_pos]);
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}
