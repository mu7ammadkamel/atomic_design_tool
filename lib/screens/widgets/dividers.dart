import 'package:atomic_design/atomic_design.dart';
import 'package:flutter/material.dart';

class Dividers extends StatelessWidget {
  const Dividers({super.key});

  @override
  Widget build(BuildContext context) {
    /// dividers
    return const Column(
      children: [
        TotDividerAtom(
          height: 100,
          isVertical: true,
          thickness: 10,
          verticalWidth: 200,
        ),
        Divider(),
      ],
    );
  }
}
