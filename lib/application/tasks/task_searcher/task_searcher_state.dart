part of 'task_searcher_bloc.dart';

@freezed
class TaskSearcherState with _$TaskSearcherState {
  const factory TaskSearcherState.loading() = Loading;
  const factory TaskSearcherState.searchResult(List<Task> tasks) = SearchResult;
  const factory TaskSearcherState.failure(String message) = Failure;
}