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
          color: Colors.black26,
          onPressed: () {},
        ),
        const Divider(),
        TotBouncingButtonAtom(
          title: 'title',
          onPressed: () {},
        ),
        const Divider(),
        TotDangerButtonAtom(
          text: 'ali',
          onPressed: () {},
        ),
        const Divider(),
        TotElevatedButtonAtom(
          text: 'ibrahim',
          onPressed: () {},
        ),
        const Divider(),
        TotFilledButtonAtom(
          text: 'ibrahim',
          onPressed: () {},
        ),
        const Divider(),
        TotIconButtonAtom(
          icon: const Icon(Icons.access_time_filled_rounded),
          onPressed: () {},
        ),
        const Divider(),
        TotOutlinedButtonAtom(
          text: 'outlined',
          onPressed: () {},
        ),
        const Divider(),
        TotTextButtonAtom(
          text: 'TextButton',
          onPressed: () {},
        ),
        const Divider(),
        TotButtonCloseAtom(
          onPressed: () {},
        ),
        const Divider(),
        TotAvatarAtom(
          assetPath: 'asset/grand.png',
          // assetPath: '',

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
            fit: BoxFit.contain,
            height: 20,
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
