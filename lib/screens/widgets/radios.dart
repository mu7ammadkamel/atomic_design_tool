import 'package:atomic_design/atomic_design.dart';
import 'package:flutter/material.dart';

class Radios extends StatelessWidget {
  const Radios({super.key});

  @override
  Widget build(BuildContext context) {
    /// radios
    return Column(
      children: [
        // const Divider(),
        TotRadioAtom<String>(
          groupValue: 'ali',
          value: 'ibrahim',
          onChanged: (value) {},
        ),
        const Divider(),
      ],
    );
  }
}
