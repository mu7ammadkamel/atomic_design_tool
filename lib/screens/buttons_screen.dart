import 'package:atomic_design/atomic_design.dart';
import 'package:atomic_design_tool/atomic_design_tool.dart';
import 'package:flutter/material.dart';

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
      TotBouncingEffect(
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
