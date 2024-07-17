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
      child: Column(
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
    final updateContainerTheme = context.containerTheme.copyWith(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue,
      ),
    );
    return Center(
      child: Column(
        children: [
          Container(
            width: 100,
            height: 190,
            padding: context.containerTheme.padding,
            decoration: updateContainerTheme.decoration,
          ),
          TotBackButtonAtom(
            color: Colors.amber,
            onPressed: () {},
          ),
          TotBouncingButtonAtom(
            title: 'title',
            onPressed: () {},
            style: TotAtomStyle(
              height: 50,
              width: 75,
              isLoading: false,
            ),
          ),
          TotDangerButtonAtom(
            text: 'ali',
            onPressed: () {},
            style: TotAtomStyle(
              height: 50,
              width: 75,
              isLoading: false,
            ),
          ),
          TotElevatedButtonAtom(
            text: 'ibrahim',
            onPressed: () {},
            style: TotAtomStyle(
              height: 50,
              width: 105,
              isLoading: false,
            ),
          ),
          TotFilledButtonAtom(
            text: 'ibrahim',
            onPressed: () {},
            style: TotAtomStyle(
              height: 50,
              width: 105,
              isLoading: false,
            ),
          ),
          TotIconButtonAtom(
            icon: const Row(
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
              isLoading: false,
            ),
          ),
          TotOutlinedButtonAtom(
            text: 'outlined',
            onPressed: () {},
            style: TotAtomStyle(
              height: 50,
              width: 110,
              isLoading: false,
            ),
          ),
          TotTextButtonAtom(
            text: 'TextButton',
            onPressed: () {},
            style: TotAtomStyle(
              height: 50,
              width: 150,
              isLoading: false,
            ),
          ),
          TotAvatarAtom(
            assetPath: '',
            child: const Text("AM"),
          ),
          const TotCircleCheckImageAtom(
            width: 40,
            height: 110,
          ),
          const TotAssetImageAtom(
            assetPath: "asset/grand.png",
            width: 100,
            height: 80,
          ),
          const TotNetworkImageAtom(
            placeholderUrl:
                'https://www.shutterstock.com/shutterstock/photos/2148937449/display_1500/stock-photo-canyon-view-in-summer-colorful-canyon-landscape-at-sunset-nature-scenery-in-the-canyon-amazing-2148937449.jpg',
            url: 'BoxFit',
            fit: BoxFit.fill,
            height: 200,
            width: 200,
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
