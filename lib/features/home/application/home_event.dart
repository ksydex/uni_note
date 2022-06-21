abstract class HomeEvent {}

class HomeEventInitialLoad extends HomeEvent {
  final int? groupId;
  final bool? noteIsArchived;
  final bool? noteIsFavorite;

  HomeEventInitialLoad(
      {this.noteIsArchived, required this.groupId, this.noteIsFavorite});
}

class HomeEventAddGroup extends HomeEvent {
  final String name;

  HomeEventAddGroup({required this.name});
}

class HomeEventRemoveGroup extends HomeEvent {
  final int id;

  HomeEventRemoveGroup({required this.id});
}

class HomeEventArchiveNote extends HomeEvent {
  final int id;

  HomeEventArchiveNote({required this.id});
}

class HomeEventFavoriteNote extends HomeEvent {
  final int id;

  HomeEventFavoriteNote({required this.id});
}
