import 'package:atomic_design/atomic_design.dart';
import 'package:flutter/material.dart';

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
        runSpacing: 14.0,
        children: [
          ButtonsAtom(),
        ],
      ),
    );
  }
}

class ButtonsAtom extends StatelessWidget {
  const ButtonsAtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TotBackButtonAtom(
          color: Colors.green,
          onPressed: () {},
        ),
        TotBouncingButtonAtom(
          title: 'title',
          onPressed: () {},
          style: TotAtomStyle(
            height: 50,
            width: 400,
            isLoading: true,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TotDangerButtonAtom(
          text: 'ali',
          onPressed: () {},
          style: TotAtomStyle(
            height: 50,
            width: 400,
            isLoading: false,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TotElevatedButtonAtom(
          text: 'ibrahim',
          onPressed: () {},
          style: TotAtomStyle(
            height: 50,
            width: 400,
            isLoading: true,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TotFilledButtonAtom(
          text: 'ibrahim',
          onPressed: () {},
          style: TotAtomStyle(
            height: 50,
            width: 400,
            isLoading: false,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TotIconButtonAtom(
          icon: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('data'),
              Icon(Icons.access_time_filled_rounded),
            ],
          ),
          onPressed: () {},
          style: TotAtomStyle(
            height: 50,
            width: 100,
            isLoading: true,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TotOutlinedButtonAtom(
          text: 'outlined',
          onPressed: () {},
          style: TotAtomStyle(
            height: 50,
            width: 400,
            isLoading: true,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TotTextButtonAtom(
          text: 'TextButton',
          onPressed: () {},
          style: TotAtomStyle(
            height: 50,
            width: 150,
            isLoading: true,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        // TotButtonCloseAtom(

        // ),
        TotAvatarAtom(
          assetPath: 'asset/grand.png',
          maxRadius: 500,
        ),
      ],
    );
  }
}