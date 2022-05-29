// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:rx_shared_preferences/rx_shared_preferences.dart' as _i4;

import 'application/auth/auth_bloc.dart' as _i12;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i9;
import 'application/notes/task_form/note_form_cubit.dart' as _i3;
import 'application/tasks/task_actor/task_actor_cubit.dart' as _i10;
import 'application/tasks/task_form/task_form_cubit.dart' as _i11;
import 'application/tasks/task_searcher/task_searcher_bloc.dart' as _i6;
import 'application/tasks/task_watcher/task_watcher_bloc.dart' as _i7;
import 'infrastructure/auth/authentication_repository.dart' as _i8;
import 'infrastructure/shared_preferences_injectable_module.dart' as _i13;
import 'infrastructure/tasks/task_repository.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.NoteFormCubit>(() => _i3.NoteFormCubit());
  gh.factory<_i4.RxSharedPreferences>(() => registerModule.rxPrefs);
  await gh.factoryAsync<_i4.SharedPreferences>(() => registerModule.prefs,
      preResolve: true);
  gh.lazySingleton<_i5.TaskRepository>(
      () => _i5.TaskRepository(get<_i4.RxSharedPreferences>()));
  gh.factory<_i6.TaskSearcherBloc>(
      () => _i6.TaskSearcherBloc(get<_i5.TaskRepository>()));
  gh.factory<_i7.TaskWatcherBloc>(() => _i7.TaskWatcherBloc());
  gh.lazySingleton<_i8.AuthenticationRepository>(
      () => _i8.AuthenticationRepository(get<_i4.RxSharedPreferences>()));
  gh.factory<_i9.SignInFormBloc>(
      () => _i9.SignInFormBloc(get<_i8.AuthenticationRepository>()));
  gh.factory<_i10.TaskActorCubit>(
      () => _i10.TaskActorCubit(get<_i5.TaskRepository>()));
  gh.factory<_i11.TaskFormCubit>(
      () => _i11.TaskFormCubit(get<_i5.TaskRepository>()));
  gh.factory<_i12.AuthBloc>(
      () => _i12.AuthBloc(get<_i8.AuthenticationRepository>()));
  return get;
}

class _$RegisterModule extends _i13.RegisterModule {}
