import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../components/button.dart';
import '../components/button_row.dart';

class keyboard extends StatelessWidget {
  final void Function(String) callback;
  keyboard(this.callback);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 1.5,
          ),
          buttonRow([
            button(text: 'C', dark: darkstate, callback: callback),
            button(text: ' ', dark: darkstate, callback: callback),
            button(text: 'Dark', dark: darkstate, callback: callback),
            button(text: 'Del', dark: darkstate, callback: callback),
          ]),
          SizedBox(
            height: 1.5,
          ),
          buttonRow([
            button(text: '7', dark: darkstate, callback: callback),
            button(text: '8', dark: darkstate, callback: callback),
            button(text: '9', dark: darkstate, callback: callback),
            button(text: '/', dark: darkstate, callback: callback)
          ]),
          SizedBox(
            height: 1.5,
          ),
          buttonRow([
            button(text: '4', dark: darkstate, callback: callback),
            button(text: '5', dark: darkstate, callback: callback),
            button(text: '6', dark: darkstate, callback: callback),
            button(text: 'x', dark: darkstate, callback: callback)
          ]),
          SizedBox(
            height: 1.5,
          ),
          buttonRow([
            button(text: '1', dark: darkstate, callback: callback),
            button(text: '2', dark: darkstate, callback: callback),
            button(text: '3', dark: darkstate, callback: callback),
            button(text: '-', dark: darkstate, callback: callback)
          ]),
          SizedBox(
            height: 1.5,
          ),
          buttonRow([
            button(text: '.', dark: darkstate, callback: callback),
            button(text: '0', dark: darkstate, callback: callback),
            button(text: '+', dark: darkstate, callback: callback),
            button(text: '=', dark: darkstate, callback: callback)
          ]),
        ],
      ),
    );
  }
}
