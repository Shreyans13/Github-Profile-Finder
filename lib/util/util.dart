// ignore: non_constant_identifier_names
import 'package:github_profile_finder/api/api.dart';
// ignore: non_constant_identifier_names
import 'package:shared_preferences/shared_preferences.dart';

class Util {
  bool sideIcon = true;
  late API apiObj;
  bool firstload = true;
  @override
  Util() {
    _loadSP();
  }
  bool getIcon() => sideIcon;
  bool changeSideIcon(bool a) => sideIcon = a;
  //Loading counter value on start
  void _loadSP() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('firstLoad', true);
  }

  void setFirstLoad() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('firstLoad', false);
    firstload = false;
  }

  Future<bool> getFirstLoad() async {
    final prefs = await SharedPreferences.getInstance();
    this.firstload = (prefs.getBool('firstLoad')) ?? false;
    return firstload;
  }

  initiateApi(String username) {
    print(username);
    apiObj = API(userName: username);
  }

  API getApiOBJ() => apiObj;
}

Util util = new Util();
Util getUtility() => util;

// API apiObj = API(userName: "Shreyans13");
// getApiOBJ() => apiObj;
// ignore: non_constant_identifier_names
bool shared_pref = true;
getValue() => shared_pref;
changeValue() => shared_pref = false;
