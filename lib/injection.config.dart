// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/application/auth/auth_bloc.dart' as _i10;
import 'core/infrastructure/auth/authentication_repository.dart' as _i7;
import 'core/infrastructure/groups/group_repository.dart' as _i4;
import 'core/infrastructure/http_service.dart' as _i11;
import 'core/infrastructure/notes/note_repository.dart' as _i6;
import 'features/auth/sign_in/application/sign_in_bloc.dart' as _i9;
import 'features/home/application/home_bloc.dart' as _i8;
import 'features/note_form/application/note_form_cubit.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final httpService = _$HttpService();
  await gh.factoryAsync<_i3.Dio>(() => httpService.dio, preResolve: true);
  gh.lazySingleton<_i4.GroupRepository>(
      () => _i4.GroupRepository(get<_i3.Dio>()));
  gh.factory<_i5.NoteFormCubit>(() => _i5.NoteFormCubit());
  gh.lazySingleton<_i6.NoteRepository>(
      () => _i6.NoteRepository(get<_i3.Dio>()));
  gh.lazySingleton<_i7.AuthenticationRepository>(
      () => _i7.AuthenticationRepository(get<_i3.Dio>()));
  gh.factory<_i8.HomeBloc>(() =>
      _i8.HomeBloc(get<_i6.NoteRepository>(), get<_i4.GroupRepository>()));
  gh.factory<_i9.SignInBloc>(
      () => _i9.SignInBloc(get<_i7.AuthenticationRepository>()));
  gh.factory<_i10.AuthBloc>(
      () => _i10.AuthBloc(get<_i7.AuthenticationRepository>()));
  return get;
}

class _$HttpService extends _i11.HttpService {}
