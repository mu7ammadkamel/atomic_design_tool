import 'package:atomic_design_tool/atomic_design_tool.dart';
import 'package:flutter/material.dart';
import 'package:tot_atomic_design/tot_atomic_design.dart';

class ButtonsScreen extends StatefulWidget {
  const ButtonsScreen({super.key});

  @override
  State<ButtonsScreen> createState() => _ButtonsScreenState();
}

class _ButtonsScreenState extends State<ButtonsScreen> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> buttons = [
      /// TotButton
      TotButtonAtom(
        text: 'Click me [TotButton]',
        onPressed: () {},
      ),

      TotButtonAtom(
        isLoading: true,
        text: 'Click me [TotButton]',
        onPressed: () {},
      ),

      /// BouncingEffect
      BouncingEffect(
        child: TotButtonAtom(
          text: 'Click me [BouncingEffect]',
          onPressed: () {},
        ),
      ),

      TotButtonAtom(
        text: 'Click me [ABC]',
        onPressed: () {},
      ),
    ];

    return SingleChildScrollView(
      padding: const EdgeInsets.all(kDefaultGap),
      child: Wrap(
        runSpacing: kDefaultMediumGap,
        children: [
          ...buttons,
        ],
      ),
    );
  }
}
