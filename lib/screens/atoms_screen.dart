import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'widgets_atoms/buttons.dart';
import 'widgets_atoms/buttons_atom.dart';
import 'widgets_atoms/checks.dart';
import 'widgets_atoms/dialogs.dart';
import 'widgets_atoms/dividers.dart';
import 'widgets_atoms/indicators.dart';
import 'widgets_atoms/logo.dart';
import 'widgets_atoms/radios.dart';
import 'widgets_atoms/switches.dart';
import 'widgets_atoms/tot_icons.dart';

class AtomsScreen extends StatefulWidget {
  const AtomsScreen({
    super.key,
  });

  @override
  State<AtomsScreen> createState() => _AtomsScreenState();
}

class _AtomsScreenState extends State<AtomsScreen> {
  late final TextEditingController titleController;
  late final TextEditingController descriptionController;

  int currentIndex = 1;

  @override
  void initState() {
    super.initState();
    titleController = TextEditingController();
    descriptionController = TextEditingController();
  }

  @override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Wrap(
        spacing: 14.0,
        children: [
          ButtonsAtom(),
          Buttons(),
          Checks(),
          Dialogs(),
          Dividers(),
          Indicators(),
          Logo(),
          Radios(),
          Switches(),
          TotIcons(),
        ],
      ),
    );
  }
}
