import 'package:clonetagram/utils/buttons.dart';
import 'package:flutter/material.dart';

class DialogBox extends StatefulWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  State<DialogBox> createState() => _DialogBoxState();
}

class _DialogBoxState extends State<DialogBox> {
  @override
  Widget build(BuildContext context) {
    const outlineInputBorder = OutlineInputBorder();
    var textField = TextField(
        controller: widget.controller,
        decoration: const InputDecoration(
            border: outlineInputBorder, hintText: "Add a new task"));
    var alertDialog = AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: SizedBox(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            textField,

            // Button
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Buttons(
                  text: "Save",
                  onPressed: widget.onSave,
                ),
                const SizedBox(width: 8),
                Buttons(
                  text: "Cancel",
                  onPressed: widget.onCancel,
                )
              ],
            ),
          ],
        ),
      ),
    );
    return alertDialog;
  }
}
