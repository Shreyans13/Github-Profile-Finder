import "dart:convert";

class User {
  String login;
  String bio;
  String avatar;
  String location;
  int followers;
  int following;
  String? message;
  User(
      {required this.login,
      required this.bio,
      required this.avatar,
      required this.location,
      required this.followers,
      required this.following,
      this.message = ""});

  factory User.fromJson(Map<String, dynamic> json) => new User(
      login: json["login"] == null ? "" : json["login"],
      bio: json["bio"] == null ? "" : json["bio"],
      avatar: json["avatar_url"] == null ? "" : json["avatar_url"],
      location: json["location"] == null ? "Not Found" : json["location"],
      followers: json["followers"] == null ? 0 : json["followers"],
      following: json["following"] == null ? 0 : json["following"],
      message: json["message"]);

  Map<String, dynamic> toJson() => {
        "login": login,
        "bio": bio,
        "avatar": avatar,
        "location": location,
      };
}

User userFromJson(String str) => User.fromJson(json.decode(str));
