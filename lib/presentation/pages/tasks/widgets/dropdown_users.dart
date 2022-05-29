import 'package:flutter/material.dart';
import 'package:todo_list/domain/users/user.dart';
import 'package:todo_list/infrastructure/users/user_service.dart';

class DropdownUsers extends StatefulWidget {
  final User? assignedUser;
  final Function(User? newUser) onChange;

  const DropdownUsers(
      {Key? key, required this.assignedUser, required this.onChange})
      : super(key: key);

  @override
  State<DropdownUsers> createState() => _DropdownUsersState();
}

class _DropdownUsersState extends State<DropdownUsers> {
  late Future<List<User>> futureUsers;
  late User? ddUser;

  @override
  void initState() {
    super.initState();
    futureUsers = UserService().fetchUsers();
    ddUser = widget.assignedUser;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<User>>(
        future: futureUsers,
        builder: (context, snapshot) => DropdownButton<User>(
                value: ddUser,
                elevation: 16,
                onChanged: (User? newValue) {
                  setState(() => ddUser = newValue!);
                  widget.onChange(newValue);
                },
                hint: const Text('assign to...'),
                items: [
                  if (snapshot.hasData)
                    ...snapshot.data!
                        .map((user) => _UserItem(user: user))
                        .toList(),
                  if (snapshot.hasError) _NoUserItem(),
                ]));
  }
}

class _UserItem extends DropdownMenuItem<User> {
  final User user;

  _UserItem({Key? key, required this.user})
      : super(
          key: key,
          value: user,
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Text(user.name),
          ),
        );
}

class _NoUserItem extends DropdownMenuItem<User> {
  _NoUserItem({Key? key})
      : super(
          key: key,
          value: User.noUser(),
          child: const Text('fail to load users'),
        );
}
