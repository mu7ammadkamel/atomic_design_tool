import 'package:atomic_design/atomic_design.dart';
import 'package:atomic_design_tool/solutions/approach_102/organism/nue_brain_app_bar.dart';
import 'package:flutter/material.dart';

class Approach102Screen extends StatefulWidget {
  const Approach102Screen({
    super.key,
  });

  @override
  State<Approach102Screen> createState() => _Approach102ScreenState();
}

class _Approach102ScreenState extends State<Approach102Screen> {
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
