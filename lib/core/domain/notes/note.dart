import 'package:flutter/material.dart';

class Note {
  final int id;
  final String name;
  final String body;
  final bool isFavorite;

  IconData get isFavoriteIcon => isFavorite ? Icons.star : Icons.star_border;

  Note(
      {required this.id,
      required this.name,
      required this.body,
      required this.isFavorite});

  factory Note.test([bool isFavorite = false]) => Note(
      id: 1,
      name: 'Заметка тест',
      body: 'Заметка тело',
      isFavorite: isFavorite);

  factory Note.empty([bool isFavorite = false]) =>
      Note(id: 0, name: '', body: '', isFavorite: false);
}
