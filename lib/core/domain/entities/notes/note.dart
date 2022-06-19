import 'package:flutter/material.dart';
import 'package:todo_list/core/domain/entities/tags/tag.dart';

class Note {
  final int id;
  final String name;
  final String body;
  final bool isFavorite;
  final List<Tag> tags;

  IconData get isFavoriteIcon => isFavorite ? Icons.star : Icons.star_border;

  Note(
      {required this.id,
      required this.name,
      required this.body,
      required this.isFavorite,
      required this.tags});

  factory Note.test([bool isFavorite = false]) => Note(
      id: 1,
      name: 'Заметка тест',
      body: 'Заметка тело',
      isFavorite: isFavorite,
      tags: [Tag.test(), Tag.test()]);

  factory Note.empty([bool isFavorite = false]) =>
      Note(id: 0, name: '', body: '', isFavorite: false, tags: []);
}
