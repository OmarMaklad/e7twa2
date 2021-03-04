import 'package:shared_preferences/shared_preferences.dart';

class  SharedHelper {

  static SharedPreferences _prefs;

  static Future<int> getId()async {
    _prefs = await SharedPreferences.getInstance();
    return _prefs.getInt('id');
  }

}
