import "dart:convert";

class RepositoryModel {
  String name;
  String desc;
  String language;
  int stars;
  int forks;

  RepositoryModel(
      {required this.name,
      required this.desc,
      required this.stars,
      required this.forks,
      required this.language});

  factory RepositoryModel.fromJson(Map<String, dynamic> json) =>
      new RepositoryModel(
        name: json["name"],
        desc: (json["description"] == null)
            ? "No Description found"
            : json["description"],
        stars: json["stargazers_count"],
        forks: json["forks_count"],
        language: (json["language"] == null) ? "" : json["language"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "desc": desc,
        "stars": stars,
        "forks": forks,
        "language": language
      };
}

RepositoryModel repositoryFromJson(String str) =>
    RepositoryModel.fromJson(json.decode(str));

List<RepositoryModel> allPostsFromJson(String str) {
  final jsonData = json.decode(str);
  return new List<RepositoryModel>.from(
      jsonData.map((x) => RepositoryModel.fromJson(x)));
}
