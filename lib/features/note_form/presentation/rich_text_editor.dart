import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:todo_list/core/presentation/constants/indents.dart';

class RichTextEditor extends StatelessWidget {
  final QuillController controller;

  const RichTextEditor({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 700,
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: Indents.lg),
              child: QuillEditor(
                controller: controller,
                readOnly: false,
                autoFocus: true,
                padding: const EdgeInsets.only(top: Indents.lg),
                scrollController: ScrollController(),
                expands: true,
                focusNode: FocusNode(),
                scrollable: true,
              ),
            ),
          ),
          QuillToolbar.basic(
            showFontSize: false,
            controller: controller,
            locale: const Locale('ru'),
            multiRowsDisplay: false,
            showAlignmentButtons: true,
          ),
        ],
      ),
    );
  }
}

// class RichTextEditor extends StatefulWidget {
//   final Document? value;
//
//   RichTextEditor({Key? key, this.value, this.onChange}) : super(key: key);
//
//   @override
//   State<RichTextEditor> createState() => RichTextEditorState();
// }
//
// class RichTextEditorState extends State<RichTextEditor> {
//   late final QuillController controller;
//
//   // {"insert":"Heading"},{"insert":"\\n","attributes":{"header":1}},
//
//   RichTextEditorState() {
//     final v = Document.fromDelta(Delta()
//       ..insert("")
//       ..insert("\n", <String, dynamic>{"header": 2}));
//
//     controller = QuillController(
//       document: v,
//       selection: const TextSelection.collapsed(offset: 0),
//     )..changes.listen((event) {
//         widget.onChange?.call(event.item2);
//       });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }
