import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

class RichTextEditor extends StatefulWidget {
  const RichTextEditor({Key? key}) : super(key: key);

  @override
  State<RichTextEditor> createState() => _RichTextEditorState();
}

class _RichTextEditorState extends State<RichTextEditor> {
  final QuillController _controller = QuillController.basic();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        QuillToolbar.basic(controller: _controller),
        Expanded(
          child: Container(
            child: QuillEditor.basic(
              controller: _controller,
              readOnly: false, // true for view only mode
            ),
          ),
        )
      ],
    );
  }
}
