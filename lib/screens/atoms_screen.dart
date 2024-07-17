import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'widgets/buttons.dart';
import 'widgets/buttons_atom.dart';
import 'widgets/checks.dart';
import 'widgets/dialogs.dart';
import 'widgets/dividers.dart';
import 'widgets/indicators.dart';
import 'widgets/logo.dart';
import 'widgets/radios.dart';
import 'widgets/switches.dart';
import 'widgets/tot_icons.dart';

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
