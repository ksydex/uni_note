abstract class HomeEvent {}

class HomeEventInitialLoad extends HomeEvent {
  final int? groupId;

  HomeEventInitialLoad({required this.groupId});
}
