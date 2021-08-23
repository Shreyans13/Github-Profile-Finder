import "dart:convert";

class FollowingModel {
  String avatar;
  String userName;

  FollowingModel({required this.avatar, required this.userName});

  factory FollowingModel.fromJson(Map<String, dynamic> json) =>
      new FollowingModel(avatar: json["avatar_url"], userName: json["login"]);

  Map<String, dynamic> toJson() => {
        "avatar_url": avatar,
      };
}

FollowingModel followingFromJson(String str) =>
    FollowingModel.fromJson(json.decode(str));

List<FollowingModel> allFollowingFromJson(String str) {
  final jsonData = json.decode(str);
  return new List<FollowingModel>.from(
      jsonData.map((x) => FollowingModel.fromJson(x)));
}
