import 'package:flutter_config/flutter_config.dart';
import 'package:http/http.dart' as http;

class API {
  Future getUsers(String name) async {
    print(FlutterConfig.get("API_TOKEN"));
    Map<String, String> headers = {
      'Authorization': 'Bearer ' + FlutterConfig.get("API_TOKEN")
    };
    var request = http.Request(
        'GET', Uri.parse('https://api.github.com/users/Shreyans13'));
    request.headers.addAll(headers);
    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
      // return await response.stream.bytesToString();
    } else {
      print(response.reasonPhrase);
    }
  }
}
