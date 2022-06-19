import 'package:hexcolor/hexcolor.dart';

class Tag {
  final int id;
  final String name;
  final String colorHex;
  HexColor get color => HexColor(colorHex);

  Tag({required this.id, required this.name, required this.colorHex});

  factory Tag.test([bool isFavorite = false]) =>
      Tag(id: 1, name: 'Тег тест', colorHex: "#ffaabb");

  factory Tag.empty([bool isFavorite = false]) =>
      Tag(id: 0, name: '', colorHex: "#ffbbaa");
}
