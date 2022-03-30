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
          buttonRow([
            button(text: 'C', callback: callback),
            button(text: ' ', callback: callback),
            button(text: 'Dark', callback: callback),
            button(text: 'Del', callback: callback),
          ]),
          SizedBox(
            height: 1,
          ),
          buttonRow([
            button(text: '7', callback: callback),
            button(text: '8', callback: callback),
            button(text: '9', callback: callback),
            button(text: '/', callback: callback)
          ]),
          SizedBox(
            height: 1,
          ),
          buttonRow([
            button(text: '4', callback: callback),
            button(text: '5', callback: callback),
            button(text: '6', callback: callback),
            button(text: 'x', callback: callback)
          ]),
          SizedBox(
            height: 1,
          ),
          buttonRow([
            button(text: '1', callback: callback),
            button(text: '2', callback: callback),
            button(text: '3', callback: callback),
            button(text: '-', callback: callback)
          ]),
          SizedBox(
            height: 1,
          ),
          buttonRow([
            button(text: '.', callback: callback),
            button(text: '0', callback: callback),
            button(text: '+', callback: callback),
            button(text: '=', callback: callback)
          ]),
        ],
      ),
    );
  }
}
