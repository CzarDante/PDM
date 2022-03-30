import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';

class memoria {
  String _value = '';

  void cbcomand(String command) {
    if (command == 'C') {
      _clear();
      return;
    }
    if (command == 'Dark') {
      // _dark()
      //not implemented
      return;
    }
    if (command == ' ') {
      _value += ' ';
      return;
    }
    if (command == '=') {
      final resultado;
      resultado = _getresult();
      _value = resultado;
      return;
    }
    if (command == 'Del') {
      String deletando = _value;

      _value = deletando.substring(0, deletando.length - 1);
      return;
    } else {
      _value += command;
    }
  }

  _clear() {
    _value = '';
  }

  _getresult() {
    final splitted = _value.split(' ');
    List<String> operandos = [];
    // splitted.removeLast();
    for (var i = 0; i < splitted.length; i++) {
      if (splitted[i] != 'x' &&
          splitted[i] != '+' &&
          splitted[i] != '-' &&
          splitted[i] != '/') {
        operandos.add(splitted[i]);
      } else {
        if (operandos.length >= 2) {
          // ignore: prefer_typing_uninitialized_variables
          final calculo;
          calculo = _calcula(operandos, splitted[i], operandos.length);
          operandos.removeLast();
          operandos.removeLast();
          operandos.add(calculo);
          print("resultado");
        } else {
          print("Syntax Error");
          return 'Syntax Error';
        }
      }
    }
    return operandos[0];
  }

  _calcula(List operandos, operador, tamanho) {
    final int result;
    final double divi;
    if (operador == '+') {
      List<int> intList = [];
      for (var i in operandos) {
        int? value = int.tryParse(i);
        intList.add(value!);
        print(intList);
      }
      result = intList[tamanho - 2] + intList[tamanho - 1];
      print(result);
      return result.toString();
    }
    if (operador == '-') {
      List<int> intList = [];
      for (var i in operandos) {
        int? value = int.tryParse(i);
        intList.add(value!);
        print(intList);
      }
      result = intList[tamanho - 2] - intList[tamanho - 1];
      return result.toString();
    }
    if (operador == 'x') {
      List<int> intList = [];
      for (var i in operandos) {
        int? value = int.tryParse(i);
        intList.add(value!);
        print(intList);
      }
      result = intList[tamanho - 2] * intList[tamanho - 1];
      return result.toString();
    }
    if (operador == '/') {
      List<int> intList = [];
      for (var i in operandos) {
        int? value = int.tryParse(i);
        intList.add(value!);
        print(intList);
      }
      divi = intList[tamanho - 2] / intList[tamanho - 1];
      return divi.toString();
    }
  }

  // _dark() {
  //   //troca o valor de dark, alterando o tema;
  // }

  String get value {
    return _value;
  }
}
