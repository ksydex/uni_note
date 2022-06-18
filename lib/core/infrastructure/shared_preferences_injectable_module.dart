import 'package:injectable/injectable.dart';
import 'package:rx_shared_preferences/rx_shared_preferences.dart';

@module
abstract class RegisterModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
  // нужно потому что RxSharedPreferences не понимает @preResolve
  RxSharedPreferences get rxPrefs => RxSharedPreferences(prefs);
}