import 'package:atomic_design/atomic_design.dart';
import 'package:flutter/material.dart';

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
        SizedBox(height: 10),
        TotAddressCardMolecule(
          title: "title",
          name: "name",
          address: "address",
          phoneNumber: "phone number",
          width: 300,
        ),
      ],
    );
  }
}
