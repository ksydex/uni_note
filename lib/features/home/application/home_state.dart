part of 'home_bloc.dart';

class HomeState {
  final List<Note> notes;
  final List<Group> groups;

  final int? groupId;

  final bool isLoading;

  HomeState(
      {required this.groupId,
      required this.notes,
      required this.groups,
      this.isLoading = false});

  factory HomeState.initial() =>
      HomeState(groupId: null, groups: [], notes: [], isLoading: true);
}
