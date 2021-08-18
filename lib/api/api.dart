import 'dart:async';

import 'package:flutter_config/flutter_config.dart';
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

  Future<List<RepositoryModel>> getRepository() async {
    final response = await http.get(
        Uri.parse(this.baseUrl + "/users/" + userName + "/repos"),
        headers: headers);
    return allPostsFromJson(response.body);
  }
}
