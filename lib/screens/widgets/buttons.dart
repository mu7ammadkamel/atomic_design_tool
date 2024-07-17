import 'package:atomic_design/atomic_design.dart';
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    /// Buttons
    return Column(
      children: [
        TotBackButtonAtom(
          color: Colors.amber,
          onPressed: () {},
        ),
        const Divider(),
        TotBouncingButtonAtom(
          title: 'title',
          onPressed: () {},
          style: TotAtomStyle(
            height: 50,
            width: 75,
            isLoading: false,
          ),
        ),
        const Divider(),
        TotDangerButtonAtom(
          text: 'ali',
          onPressed: () {},
          style: TotAtomStyle(
            height: 50,
            width: 75,
            isLoading: false,
          ),
        ),
        const Divider(),
        TotElevatedButtonAtom(
          text: 'ibrahim',
          onPressed: () {},
          style: TotAtomStyle(
            height: 50,
            width: 105,
            isLoading: false,
          ),
        ),
        const Divider(),
        TotFilledButtonAtom(
          text: 'ibrahim',
          onPressed: () {},
          style: TotAtomStyle(
            height: 50,
            width: 105,
            isLoading: false,
          ),
        ),
        const Divider(),
        TotIconButtonAtom(
          icon: const Icon(Icons.access_time_filled_rounded),
          onPressed: () {},
          style: TotAtomStyle(
            height: 50,
            width: 100,
            isLoading: false,
          ),
        ),
        const Divider(),
        TotOutlinedButtonAtom(
          text: 'outlined',
          onPressed: () {},
          style: TotAtomStyle(
            height: 50,
            width: 110,
            isLoading: false,
          ),
        ),
        const Divider(),
        TotTextButtonAtom(
          text: 'TextButton',
          onPressed: () {},
          style: TotAtomStyle(
            height: 50,
            width: 150,
            isLoading: false,
          ),
        ),
        const Divider(),
        TotButtonCloseAtom(
          onPressed: () {},
        ),
        const Divider(),
        TotAvatarAtom(
          assetPath: 'asset/grand.png',
          radius: 50,
          backgroundColor: Colors.black,
          child: const Text('data'),
        ),
        const Divider(),
        Container(
          color: Colors.amber,
          child: const TotNetworkImageAtom(
            placeholderUrl:
                'https://www.shutterstock.com/shutterstock/photos/2148937449/display_1500/stock-photo-canyon-view-in-summer-colorful-canyon-landscape-at-sunset-nature-scenery-in-the-canyon-amazing-2148937449.jpg',
            url: 'BoxFit',
            fit: BoxFit.fill,
            height: 300,
            width: 500,
          ),
        ),
        const Divider(),
        const TotAssetImageAtom(
          assetPath: 'asset/grand.png',
          fit: BoxFit.fill,
          height: 100,
          width: 120,
        ),
        const Divider(),
        TotDeleteButtonAtom(
          onPressed: () {},
          iconSize: 25,
        ),
        const Divider(),
      ],
    );
  }
}
