import 'package:flutter/material.dart';

class Group {
  final int id;
  final String name;
  final bool isFavorite;
  IconData get isFavoriteIcon => isFavorite ? Icons.star : Icons.star_border;

  Group({required this.id, required this.name, required this.isFavorite});

  factory Group.test() => Group(id: 1, name: 'Папка', isFavorite: false);
}
