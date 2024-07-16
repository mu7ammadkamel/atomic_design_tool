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
        SizedBox(
          height: 10,
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
        SizedBox(
          height: 10,
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
        SizedBox(
          height: 10,
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
        SizedBox(
          height: 10,
        ),
        TotIconButtonAtom(
          icon: Icon(Icons.access_time_filled_rounded),
          onPressed: () {},
          style: TotAtomStyle(
            height: 50,
            width: 100,
            isLoading: false,
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
            width: 110,
            isLoading: false,
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
            isLoading: false,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TotButtonCloseAtom(
          onPressed: () {},
        ),
        TotAvatarAtom(
          assetPath: 'asset/grand.png',
          child: Text('data'),
          radius: 50,
          backgroundColor: Colors.black,
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          color: Colors.amber,
          child: TotNetworkImageAtom(
            placeholderUrl:
                'https://www.shutterstock.com/shutterstock/photos/2148937449/display_1500/stock-photo-canyon-view-in-summer-colorful-canyon-landscape-at-sunset-nature-scenery-in-the-canyon-amazing-2148937449.jpg',
            url: 'BoxFit',
            fit: BoxFit.fill,
            height: 300,
            showImage: true,
            width: 500,
          ),
        ),
      ],
    );
  }
}
