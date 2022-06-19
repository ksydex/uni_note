// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:rx_shared_preferences/rx_shared_preferences.dart' as _i5;

import 'core/application/auth/auth_bloc.dart' as _i8;
import 'core/infrastructure/auth/authentication_repository.dart' as _i6;
import 'core/infrastructure/http_service.dart' as _i3;
import 'core/infrastructure/shared_preferences_injectable_module.dart' as _i9;
import 'features/auth/sign_in/application/sign_in_bloc.dart' as _i7;
import 'features/note_form/application/note_form_cubit.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.IHttpService>(() => _i3.HttpService());
  gh.factory<_i4.NoteFormCubit>(() => _i4.NoteFormCubit());
  gh.factory<_i5.RxSharedPreferences>(() => registerModule.rxPrefs);
  await gh.factoryAsync<_i5.SharedPreferences>(() => registerModule.prefs,
      preResolve: true);
  gh.lazySingleton<_i6.AuthenticationRepository>(
      () => _i6.AuthenticationRepository(get<_i5.RxSharedPreferences>()));
  gh.factory<_i7.SignInBloc>(
      () => _i7.SignInBloc(get<_i6.AuthenticationRepository>()));
  gh.factory<_i8.AuthBloc>(
      () => _i8.AuthBloc(get<_i6.AuthenticationRepository>()));
  return get;
}

class _$RegisterModule extends _i9.RegisterModule {}
