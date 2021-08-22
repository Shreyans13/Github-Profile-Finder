import "dart:convert";

class FollowersModel {
  String avatar;
  String userName;

  FollowersModel({required this.avatar, required this.userName});

  factory FollowersModel.fromJson(Map<String, dynamic> json) =>
      new FollowersModel(avatar: json["avatar_url"], userName: json["login"]);

  Map<String, dynamic> toJson() => {
        "avatar_url": avatar,
      };
}

FollowersModel followersFromJson(String str) =>
    FollowersModel.fromJson(json.decode(str));

List<FollowersModel> allFollowersFromJson(String str) {
  final jsonData = json.decode(str);
  return new List<FollowersModel>.from(
      jsonData.map((x) => FollowersModel.fromJson(x)));
}
