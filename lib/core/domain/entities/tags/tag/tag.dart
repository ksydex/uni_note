import 'package:freezed_annotation/freezed_annotation.dart';

// class Tag {
//   final int id;
//   final String name;
//   final String colorHex;
//   HexColor get color => HexColor(colorHex);
//
//   Tag({required this.id, required this.name, required this.colorHex});
//
//   factory Tag.test([bool isFavorite = false]) =>
//       Tag(id: 1, name: 'Тег тест', colorHex: "#ffaabb");
//
//   factory Tag.empty([bool isFavorite = false]) =>
//       Tag(id: 0, name: '', colorHex: "#ffbbaa");
// }

part 'tag.freezed.dart';
part 'tag.g.dart';

@freezed
class Tag with _$Tag {
  const factory Tag(
      {required int id, required String name, required String colorHex}) = _Tag;

  factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);
}
