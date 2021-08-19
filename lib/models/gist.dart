import "dart:convert";

class GistModel {
  String description;

  GistModel({
    required this.description,
  });

  factory GistModel.fromJson(Map<String, dynamic> json) => new GistModel(
        description: json["description"],
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
