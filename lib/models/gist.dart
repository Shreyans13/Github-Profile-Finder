import "dart:convert";

class RawData {
  String raw;

  RawData({required this.raw});

  factory RawData.fromString(String data) => new RawData(
        raw: data,
      );
}

RawData dataFromUrl(String str) => RawData.fromString(str);

class GistModel {
  String description;
  String rawUrl;
  String language;
  String name;

  GistModel({
    required this.description,
    required this.rawUrl,
    required this.language,
    required this.name,
  });

  factory GistModel.fromJson(Map<String, dynamic> json) => new GistModel(
        description: json["description"],
        name: json["files"].keys.first,
        language: json["files"][json["files"].keys.first]["language"],
        rawUrl: json["files"][json["files"].keys.first]["raw_url"],
      );

  Map<String, dynamic> toJson() => {
        "description": description,
      };
}

GistModel gistFromJson(String str) => GistModel.fromJson(json.decode(str));

List<GistModel> allGistsFromJson(String str) {
  final jsonData = json.decode(str);
  return new List<GistModel>.from(jsonData.map((x) => GistModel.fromJson(x)));
}
