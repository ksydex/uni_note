import 'package:flutter/material.dart';
import 'package:todo_list/domain/tasks/status.dart';

class DropdownStatuses extends StatefulWidget {
  final Status current;
  final Function(Status newStatus) onChange;

  const DropdownStatuses({
    Key? key,
    required this.current,
    required this.onChange
  }) : super(key: key);

  @override
  State<DropdownStatuses> createState() => _DropdownStatusesState();
}

class _DropdownStatusesState extends State<DropdownStatuses> {
  late String dropdownValue;

  @override
  void initState() {
    super.initState();
    dropdownValue = widget.current.name;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      elevation: 16,
      onChanged: (String? newValue) {
        setState(() => dropdownValue = newValue!);
        widget.onChange(getStatus(newValue));
      },
      items: _dropdownItems,
    );
  }
}

List<DropdownMenuItem<String>> get _dropdownItems =>
  Status.values.map((status) =>
    DropdownMenuItem<String>(
      value: status.name,
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Text(status.name),),
    ),).toList();
