import 'package:flutter/material.dart';

class OrganismsScreen extends StatefulWidget {
  const OrganismsScreen({
    super.key,
  });

  @override
  State<OrganismsScreen> createState() => _OrganismsScreenState();
}

class _OrganismsScreenState extends State<OrganismsScreen> {
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
    // final elevatedButtonStyle =
    //     context.elevatedButtonStyle?.foregroundColor.toColor;
    return const Column(
      children: [],
    );
  }
}
