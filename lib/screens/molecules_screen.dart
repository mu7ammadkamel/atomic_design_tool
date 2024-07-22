import 'package:atomic_design/atomic_design.dart';
import 'package:flutter/material.dart';

import 'widgets_molecules/tot_address_card_molecule_widget.dart';

class MoleculesScreen extends StatefulWidget {
  const MoleculesScreen({
    super.key,
  });

  @override
  State<MoleculesScreen> createState() => _MoleculesScreenState();
}

class _MoleculesScreenState extends State<MoleculesScreen> {
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
    return const Column(
      children: [
        Divider(),
        TotAddressCardMoleculeWidget(),
        Divider(),
// TotAddressTypeMolecule
      ],
    );
  }
}
