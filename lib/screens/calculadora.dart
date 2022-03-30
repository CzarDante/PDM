import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pdm_app/components/button.dart';
import 'package:pdm_app/models/memoria.dart';
import '../components/display.dart';
import '../components/keyboard.dart';

class calc extends StatefulWidget {
  @override
  State<calc> createState() => _calcState();
}

class _calcState extends State<calc> {
  final memoria memory = memoria();
  _onPressed(String command) {
    setState(() {
      memory.cbcomand(command);
    });
  }

  @override
  Widget build(BuildContext context) {
    //Trava a rotação automatica.
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      home: Column(
        children: <Widget>[
          display(memory.value),
          keyboard(_onPressed),
        ],
      ),
    );
  }
}
