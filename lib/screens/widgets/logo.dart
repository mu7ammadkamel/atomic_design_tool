import 'package:atomic_design/atomic_design.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    /// logo
    return const Column(
      children: [
        Divider(),
        TotBrandLogoAtom(
          height: 500,
          imagePath: 'asset/grand.png',
          width: 2000,
        ),
        Divider(),
      ],
    );
  }
}
