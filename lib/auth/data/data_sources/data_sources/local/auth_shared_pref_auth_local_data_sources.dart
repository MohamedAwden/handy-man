import 'package:handyman/auth/data/data_sources/data_sources/local/auth_local_data_source.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthSharedPrefAuthLocalDataSources implements AuthLocalDataSource {
  @override
  static const String tokenKey = 'tokenKey';

  @override
  Future<void> saveToken(String token) async {
    final sharedPref = await SharedPreferences.getInstance();
    sharedPref.setString(tokenKey, token);
  }

  Future<String> getToken() async {
    final sharedPref = await SharedPreferences.getInstance();
    return sharedPref.getString(tokenKey)!;
  }
}
