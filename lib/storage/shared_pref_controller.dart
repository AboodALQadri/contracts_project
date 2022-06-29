import 'package:mahmoud/models/login_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum PrefKeys { loggedIn, token }

class SharedPrefController {
  static final SharedPrefController _instance = SharedPrefController._();

  late SharedPreferences _sharedPreferences;

  factory SharedPrefController() {
    return _instance;
  }

  SharedPrefController._();

  Future<void> initPreferences() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<void> save({required LoginModel loginModel}) async {
    await _sharedPreferences.setBool(PrefKeys.loggedIn.toString(), true);
    await _sharedPreferences.setString(
        PrefKeys.token.toString(), loginModel.token);
  }

  bool get loggedIn =>
      _sharedPreferences.getBool(PrefKeys.loggedIn.toString()) ?? false;

  String get token =>
      _sharedPreferences.getString(PrefKeys.token.toString()) ?? '';

  Future<bool> clear() async => _sharedPreferences.clear();
}
