import 'package:atomic_design/atomic_design.dart';
import 'package:atomic_design_tool/solutions/approach_102/organism/nue_brain_app_bar.dart';
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
    return const CustomScrollView(
      slivers: [
        SliverPersistentHeader(
          delegate: NeuBrainAppBar(),
          pinned: true,
        ),
      ],
    );
  }
}
