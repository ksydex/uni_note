abstract class HomeEvent {}

class HomeEventInitialLoad extends HomeEvent {
  final int? groupId;

  HomeEventInitialLoad({required this.groupId});
}

class HomeEventAddGroup extends HomeEvent {
  final String name;

  HomeEventAddGroup({required this.name});
}
