import 'dart:async';

import 'package:flutter_config/flutter_config.dart';
import 'package:github_profile_finder/models/followers.dart';
import 'package:github_profile_finder/models/following.dart';
import 'package:github_profile_finder/models/gist.dart';
import 'package:github_profile_finder/models/repository.dart';
import 'package:github_profile_finder/models/user.dart';
import 'package:http/http.dart' as http;

class API {
  String userName;
  API({required this.userName});

  final String baseUrl = "https://api.github.com";

  Map<String, String> headers = {
    'Authorization': 'Bearer ' + FlutterConfig.get("API_TOKEN")
  };

  Future<User> getUser() async {
    final response = await http
        .get(Uri.parse(this.baseUrl + "/users/" + userName), headers: headers);
    return userFromJson(response.body);
  }

  Future<User> getUserfromLoginID(String login) async {
    final response = await http.get(Uri.parse(this.baseUrl + "/users/" + login),
        headers: headers);
    print(response.body);
    return userFromJson(response.body);
  }

  Future<RawData> getRawData(String url) async {
    final response = await http.get(Uri.parse(url), headers: headers);
    return dataFromUrl(response.body.toString());
  }

  Future<List<RepositoryModel>> getRepository() async {
    final response = await http.get(
        Uri.parse(this.baseUrl + "/users/" + userName + "/repos"),
        headers: headers);
    return allRepositoryFromJson(response.body);
  }

  Future<List<GistModel>> getGist() async {
    final response = await http.get(
        Uri.parse(this.baseUrl + "/users/" + userName + "/gists"),
        headers: headers);
    return allGistsFromJson(response.body);
  }

  Future<List<FollowersModel>> getFollowers() async {
    final response = await http.get(
        Uri.parse(this.baseUrl + "/users/" + userName + "/followers"),
        headers: headers);
    return allFollowersFromJson(response.body);
  }

  Future<List<FollowingModel>> getFollowing() async {
    final response = await http.get(
        Uri.parse(this.baseUrl + "/users/" + userName + "/following"),
        headers: headers);
    return allFollowingFromJson(response.body);
  }
}
