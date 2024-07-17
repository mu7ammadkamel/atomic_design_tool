import 'package:atomic_design/atomic_design.dart';
import 'package:flutter/cupertino.dart';

class Switches extends StatelessWidget {
  const Switches({super.key});

  @override
  Widget build(BuildContext context) {
    /// switches
    return Column(
      children: [
        TotSwitchAtom(
          onChanged: (value) {},
          value: true,
        ),
      ],
    );
  }
}
