part of 'task_watcher_bloc.dart';

@freezed
class TaskWatcherEvent with _$TaskWatcherEvent {
  const factory TaskWatcherEvent.initiate() = Initiate;
  const factory TaskWatcherEvent.watch(TaskStatusFilter filter) = Watch;
}
