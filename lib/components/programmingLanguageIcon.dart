import 'package:flutter/material.dart';
import 'package:github_profile_finder/util/consts.dart';

Widget programmingLanguageIcon(String icon) {
  return Container(
    width: 20,
    child: Image.network(languageIcon[icon].toString(),
        errorBuilder: (context, a, b) => Container(
              width: 20,
              child: Image.network(
                  "https://raw.githubusercontent.com/github/explore/549f36e938c7a2323fee1a465e812c7a69128979/topics/${icon.toLowerCase()}/${icon.toLowerCase()}.png",
                  errorBuilder: (context, a, b) => Text("Image not found")),
            )),
  );
}
