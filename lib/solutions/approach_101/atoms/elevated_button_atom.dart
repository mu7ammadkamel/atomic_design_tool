import 'package:flutter/material.dart';

class ElevatedButtonAtom extends ElevatedButton {
  ElevatedButtonAtom.rounded({
    super.key,
    required super.child,
    required super.onPressed,
  }) : super(
          style: ButtonStyle(
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
            ),
          ),
        );
}
