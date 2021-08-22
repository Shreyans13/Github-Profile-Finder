import "dart:convert";

class User {
  String login;
  String bio;
  String avatar;
  String location;
  int followers;
  int following;
  User(
      {required this.login,
      required this.bio,
      required this.avatar,
      required this.location,
      required this.followers,
      required this.following});

  factory User.fromJson(Map<String, dynamic> json) => new User(
        login: json["login"],
        bio: json["bio"] == null ? "" : json["bio"],
        avatar: json["avatar_url"],
        location: json["location"] == null ? "" : json["location"],
        followers: json["followers"],
        following: json["following"],
      );

  Map<String, dynamic> toJson() => {
        "login": login,
        "bio": bio,
        "avatar": avatar,
        "location": location,
      };
}

User userFromJson(String str) => User.fromJson(json.decode(str));
