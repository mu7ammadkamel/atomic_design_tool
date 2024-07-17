import 'package:atomic_design/atomic_design.dart';
import 'package:flutter/material.dart';

class Switches extends StatelessWidget {
  const Switches({super.key});

  @override
  Widget build(BuildContext context) {
    /// switches
    return Column(
      children: [
        const Divider(),
        TotSwitchAtom(
          onChanged: (value) {},
          value: true,
        ),
        const Divider(),
      ],
    );
  }
}
