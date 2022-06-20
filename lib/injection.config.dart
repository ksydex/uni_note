// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/application/auth/auth_bloc.dart' as _i9;
import 'core/infrastructure/auth/authentication_repository.dart' as _i6;
import 'core/infrastructure/http_service.dart' as _i10;
import 'core/infrastructure/notes/note_repository.dart' as _i5;
import 'features/auth/sign_in/application/sign_in_bloc.dart' as _i8;
import 'features/home/application/home_bloc.dart' as _i7;
import 'features/note_form/application/note_form_cubit.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final httpService = _$HttpService();
  await gh.factoryAsync<_i3.Dio>(() => httpService.dio, preResolve: true);
  gh.factory<_i4.NoteFormCubit>(() => _i4.NoteFormCubit());
  gh.lazySingleton<_i5.NoteRepository>(
      () => _i5.NoteRepository(get<_i3.Dio>()));
  gh.lazySingleton<_i6.AuthenticationRepository>(
      () => _i6.AuthenticationRepository(get<_i3.Dio>()));
  gh.factory<_i7.HomeBloc>(() => _i7.HomeBloc(get<_i5.NoteRepository>()));
  gh.factory<_i8.SignInBloc>(
      () => _i8.SignInBloc(get<_i6.AuthenticationRepository>()));
  gh.factory<_i9.AuthBloc>(
      () => _i9.AuthBloc(get<_i6.AuthenticationRepository>()));
  return get;
}

class _$HttpService extends _i10.HttpService {}
