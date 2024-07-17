import 'package:atomic_design/atomic_design.dart';
import 'package:flutter/material.dart';

class Dialogs extends StatelessWidget {
  const Dialogs({super.key});

  @override
  Widget build(BuildContext context) {
    /// dialogs
    return Column(
      children: [
        Container(
          color: Colors.amber,
          child: const TotAlertDialogAtom(
            actions: [Text('data')],
            content: Text('data'),
            height: 200,
            title: Text('data'),
            width: 300,
          ),
        ),
      ],
    );
  }
}
