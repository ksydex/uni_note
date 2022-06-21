part of 'home_bloc.dart';

class HomeState {
  final List<Note> notes;
  final List<Group> groups;

  final bool noteIsArchived;
  final bool? noteIsFavorite;

  final int? groupId;

  final bool isLoading;

  HomeState(
      {required this.groupId,
      required this.notes,
      required this.groups,
      required this.noteIsArchived,
      this.noteIsFavorite,
      this.isLoading = false});

  factory HomeState.initial(
          {required bool noteIsArchived, bool? noteIsFavorite}) =>
      HomeState(
          groupId: null,
          groups: [],
          notes: [],
          isLoading: true,
          noteIsArchived: noteIsArchived,
          noteIsFavorite: noteIsFavorite);
}
