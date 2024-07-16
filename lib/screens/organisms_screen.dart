import 'package:atomic_design/atomic_design.dart';
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
    return Column(
      children: [
        TotBackButtonAtom(
          onPressed: () {},
          color: Colors.red,
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            "Approach 102",
            // style: TextStyle(
            //   color: elevatedButtonStyle,
            // ),
          ),
        ),
        TotElevatedButtonAtom(
          text: 'Submit',
          isLoading: true,
          onPressed: () {},
        ),
      ],
    );
  }
}
