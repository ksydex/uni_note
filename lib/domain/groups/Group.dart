class Group {
  final int id;
  final String name;
  final bool isFavorite;

  Group({required this.id, required this.name, required this.isFavorite});

  factory Group.empty() => Group(id: 1, name: 'Empty note', isFavorite: false);
}
