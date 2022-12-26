import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  final String text;
  VoidCallback onPressed;

  Buttons({super.key, required this.text, required this.onPressed});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: widget.onPressed,
      color: Theme.of(context).primaryColor,
      child: Text(widget.text),
    );
  }
}
