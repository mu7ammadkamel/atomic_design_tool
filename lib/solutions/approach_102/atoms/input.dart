import 'package:atomic_design_tool/solutions/approach_102/neu_brain.dart';
import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  const Input({
    super.key,
    this.label,
    this.hintText,
    this.suffixIcon,
  });

  final Widget? label;
  final String? hintText;
  final Icon? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(
        fontSize: NeuBrainTypographyFoundation.bodyMedium,
      ),
      decoration: InputDecoration(
        label: label,
        hintText: hintText,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
