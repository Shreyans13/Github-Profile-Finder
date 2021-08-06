import 'package:flutter/cupertino.dart';
import 'package:github_profile_finder/util/util.dart';
import 'package:libv_markdown/libv_markdown.dart';

class About extends StatelessWidget {
  // const about({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MarkdownView(
      markdownViewHTML: getMarkup(),
      onRenderFinished: (height) {
        print("Widget Height is : $height");
      },
      onPageFinished: (string) {
        print("Page Loading finished");
      },
    );
  }
}
