import 'package:atomic_design/atomic_design.dart';
import 'package:flutter/material.dart';

class Checks extends StatelessWidget {
  const Checks({super.key});

  @override
  Widget build(BuildContext context) {
    /// checks
    return Column(
      children: [
        TotCheckboxAtom(
          
          onChanged: (value) {},
          value: true,
        ),
        const Divider(),
      ],
    );
  }
}