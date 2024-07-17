import 'package:atomic_design/atomic_design.dart';
import 'package:flutter/material.dart';

class TotIcons extends StatelessWidget {
  const TotIcons({super.key});

  @override
  Widget build(BuildContext context) {
    /// icons
    return Column(
      children: [
        TotCheckIconAtom(
          initialValue: true,
          onChanged: (p0) {},
        ),
        const SizedBox(
          height: 10,
        ),
        TotFavoriteIconAtom(
          activeIconColor: Colors.black,
          backgroundColor: Colors.red,
          borderColor: Colors.red,
          borderRadius: 10,
          borderWidth: 100,
          hasBouncingEffect: true,
          height: 10,
          iconSize: 15,
          inActiveIconColor: Colors.grey,
          isFavorite: true,
          onTap: () {},
          padding: const EdgeInsets.all(10),
          width: 300,
        ),
        const SizedBox(
          height: 10,
        ),
        const TotIconAtom(
          iconData: Icons.access_alarm,
          iconColor: Colors.black,
          iconSize: 15,
        ),
      ],
    );
  }
}
