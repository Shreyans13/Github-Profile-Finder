// ignore: non_constant_identifier_names
import 'package:github_profile_finder/api/api.dart';
// ignore: non_constant_identifier_names
import 'package:shared_preferences/shared_preferences.dart';

class Util {
  static bool sideIcon = true;
  static late API apiObj;
  static SharedPreferences? _pref;

  static Future init() async {
    _pref = await SharedPreferences.getInstance();
  }

  static Future setFirstLoad() async =>
      await _pref!.setBool("firstLoad", false);

  static bool? getFirstLoad() => _pref!.containsKey("firstLoad");

  static bool getIcon() => sideIcon;
  static bool changeSideIcon(bool a) => sideIcon = a;

  static initiateApi(String username) {
    apiObj = API(userName: username);
  }

  static API getApiOBJ() => apiObj;
}
