import 'package:flutter/material.dart';

class ErrorSnackBar extends SnackBar {
  final String message;
  ErrorSnackBar({Key? key, required this.message}) : super(
    key: key,
    content: Row(
      children: [
        const Icon(Icons.warning, color: Colors.red,),
        const SizedBox(width: 8,),
        Text(message),
      ],
    ),
  );
}
