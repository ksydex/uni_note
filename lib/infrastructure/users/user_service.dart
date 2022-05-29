import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:todo_list/domain/users/user.dart';

class UserService {

  // singleton
  static final UserService _instance = UserService._internal();
  UserService._internal();
  factory UserService() => _instance;

  Future<List<User>> fetchUsers() async {
    final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    if (response.statusCode == 200) {
      return (jsonDecode(response.body) as List)
        .map((userData) => User.fromJson(userData))
        .toList();
    } else {
      throw Exception('Error while loading users');
    }
  }
}