import 'package:flutter/cupertino.dart';
import 'package:github_profile_finder/util/util.dart';
import 'package:libv_markdown/libv_markdown.dart';

class About extends StatefulWidget {
  // const about({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: MarkdownView(
        markdownViewHTML: getMarkup(),
        onRenderFinished: (height) {
          print("Widget Height is : $height");
          setState(() {});
        },
        onPageFinished: (string) {
          print("Page Loading finished");
        },
      ),
    );
  }
}
