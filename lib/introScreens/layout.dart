import 'dart:math';

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:github_profile_finder/components/customButton.dart';
import 'package:github_profile_finder/pages/search.dart';
import 'package:github_profile_finder/util/customText.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class ScreenLayout extends StatefulWidget {
  final String tittle;
  final String subTittle;
  final Color color;
  final LiquidController controller;
  final String image;

  ScreenLayout({
    required this.tittle,
    required this.subTittle,
    required this.color,
    required this.controller,
    required this.image,
  });

  @override
  _ScreenLayoutState createState() => _ScreenLayoutState();
}

class _ScreenLayoutState extends State<ScreenLayout> {
  Widget _buildDot(int index) {
    double zoom = 1.0 +
        (2.0 - 1.0) *
            Curves.easeOut.transform(max(
                0.0, 1.0 - ((widget.controller.currentPage) - index).abs()));
    return new Container(
      width: 25.0,
      child: new Material(
        color: Colors.black54,
        type: MaterialType.circle,
        child: new Container(
          width: 8.0 * zoom,
          height: 8.0 * zoom,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        color: widget.color,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(height: 300, child: SvgPicture.asset(widget.image)),
              SizedBox(
                height: 20,
              ),
              KTitle(text: widget.tittle),
              KSubtitle(text: widget.subTittle),
              SizedBox(
                height: 20,
              ),
              RowButtons(widget: widget),
              SizedBox(
                height: 20,
              ),
              Row(
                children: List<Widget>.generate(4, _buildDot),
              )
            ],
          ),
        ));
  }
}

class RowButtons extends StatelessWidget {
  const RowButtons({
    required this.widget,
  });

  final ScreenLayout widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Visibility(
          visible: widget.controller.currentPage == 0 ? true : false,
          child: GestureDetector(
            onTap: () => {widget.controller.animateToPage(page: 3)},
            child: CustomButton(
              text: "Skip",
              iconVisible: true,
              icon: FaIcon(FontAwesomeIcons.rocket),
              backgroundColor: Colors.white,
              textColor: Colors.black,
            ),
          ),
        ),
        Visibility(
          visible: widget.controller.currentPage == 0 ? true : false,
          child: SizedBox(
            width: 20,
          ),
        ),
        Visibility(
          visible: widget.controller.currentPage > 0 ? true : false,
          child: GestureDetector(
            onTap: () => {
              widget.controller
                  .animateToPage(page: widget.controller.currentPage - 1)
            },
            child: CustomButton(
              text: "Back",
              iconVisible: true,
              icon: FaIcon(FontAwesomeIcons.solidHandPointLeft),
              backgroundColor: Colors.white,
              textColor: Colors.black,
            ),
          ),
        ),
        Visibility(
          visible: widget.controller.currentPage > 0 ? true : false,
          child: SizedBox(
            width: 20,
          ),
        ),
        Visibility(
          visible: true,
          child: GestureDetector(
            onTap: () => {
              if (widget.controller.currentPage == 3)
                {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SearchPage()))
                }
              else
                widget.controller
                    .animateToPage(page: widget.controller.currentPage + 1)
            },
            child: CustomButton(
              text: "Next",
              iconVisible: true,
              icon: FaIcon(FontAwesomeIcons.solidHandPointRight,
                  color: Colors.white),
              backgroundColor: Colors.black,
              textColor: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
