import 'package:atomic_design/atomic_design.dart';
import 'package:flutter/material.dart';

class Dividers extends StatelessWidget {
  const Dividers({super.key});

  @override
  Widget build(BuildContext context) {
    /// dividers
    return const Column(
      children: [
        Divider(),
        TotDividerAtom(
          height: 10,
          isVertical: false,
          thickness: 100,
          verticalWidth: 00,
        ),
        Divider(),
      ],
    );
  }
}
