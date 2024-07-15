import 'package:flutter/material.dart';

class AppBarAtom extends AppBar {
  AppBarAtom.transparent({
    super.key,
    required String title,
  }) : super(
          backgroundColor: Colors.red,
          elevation: 0,
          centerTitle: true,
          title: Text(
            title,
            style: const TextStyle(color: Colors.black),
          ),
        );
}
