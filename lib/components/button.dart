import 'package:flutter/material.dart';

class button extends StatelessWidget {
  final String text;
  final bool dobro;
  final bool dark;
  final void Function(String) callback;
  button({
    required this.text,
    this.dobro = false,
    this.dark = true,
    required this.callback,
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: dobro ? 2 : 1,
      child: RaisedButton(
        color: dark ? Color.fromARGB(255, 27, 26, 26) : Colors.white,
        child: Text(
          text,
          style: TextStyle(
            color: dark ? Colors.white : Colors.black,
            fontSize: 31,
            fontWeight: FontWeight.w300,
          ),
        ),
        onPressed: () => callback(text),
      ),
    );
  }
}
