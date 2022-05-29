part of 'task_searcher_bloc.dart';

@freezed
class TaskSearcherEvent with _$TaskSearcherEvent {
  const factory TaskSearcherEvent.search(String query) = Search;
}
