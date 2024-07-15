import 'package:flutter/material.dart';

class TextfieldAtom extends TextField {
  TextfieldAtom.rounded({
    super.key,
    required String hintText,
    required super.keyboardType,
    super.controller,
    bool isPassword = false,
    String? labelText,
    bool isDense = false,
  }) : super(
          textAlign: TextAlign.start,
          obscureText: isPassword,
          decoration: InputDecoration(
            hintText: hintText,
            labelText: labelText,
            isDense: isDense,
          ),
        );
}
