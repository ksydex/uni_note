import 'package:flutter/material.dart';

class EmptyResult extends StatelessWidget {
  final String message;
  const EmptyResult({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(message,
        style: const TextStyle(
          color: Colors.black54,
          fontSize: 16
        ),),
    );
  }
}
