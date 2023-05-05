import 'package:flutter/material.dart';

//TODO: Decoraciones del formulario
class InputDecorations {
  static InputDecoration authInputDecoration(
      {required String hintText,
      required String labelText,
      IconData? prefixIcon}) {
    return InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 194, 58, 58)),
        ),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: const Color.fromARGB(255, 183, 62, 58), width: 2)),
        hintText: hintText,
        labelText: labelText,
        labelStyle: TextStyle(color: Colors.grey),
        prefixIcon:
            prefixIcon != null ? Icon(prefixIcon, color: Colors.red) : null);
  }
}
