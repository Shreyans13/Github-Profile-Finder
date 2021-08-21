import "dart:convert";

import 'package:github_profile_finder/util/util.dart';

class RawData {
  String raw;

  RawData({required this.raw});

  factory RawData.fromString(String data) => new RawData(
        raw: data,
      );
}

// RawData dataFromUrl(String str) => RawData.fromString(str);
RawData dataFromUrl(String str) {
  // print("dfurl");
  // print(str);
  return RawData.fromString(str);
}

class GistModel {
  String description;
  String rawUrl;
  String language;
  String name;
  // RawData raw;

  GistModel({
    required this.description,
    required this.rawUrl,
    required this.language,
    required this.name,
    // required this.raw,
  });

  factory GistModel.fromJson(Map<String, dynamic> json) => new GistModel(
        description: json["description"],
        name: json["files"].keys.first,
        language: json["files"][json["files"].keys.first]["language"],
        rawUrl: json["files"][json["files"].keys.first]["raw_url"],
        // raw: getApiOBJ()
        //     .getRawData(json["files"][json["files"].keys.first]["raw_url"])
        //     .then((String result) {
        //   print(result);
        //   return result;
        // }),

        // raw: getData(json["files"][json["files"].keys.first]["raw_url"]),
      );

  Map<String, dynamic> toJson() => {
        "description": description,
      };
}

RawData getData(data) {
  // print(data);
  print(getApiOBJ().getRawData(data));
  return getApiOBJ().getRawData(data);
}

GistModel gistFromJson(String str) => GistModel.fromJson(json.decode(str));

List<GistModel> allGistsFromJson(String str) {
  final jsonData = json.decode(str);
  return new List<GistModel>.from(jsonData.map((x) => GistModel.fromJson(x)));
}
