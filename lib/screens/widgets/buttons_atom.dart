import 'package:atomic_design/atomic_design.dart';
import 'package:flutter/material.dart';

class ButtonsAtom extends StatelessWidget {
  const ButtonsAtom({super.key});

  @override
  Widget build(BuildContext context) {
    /// atoms
    return Column(
      children: [
        TotChipAtom(
          onDeleted: () {},
          label: 'ddsgdg',
          avatar: const Icon(Icons.access_alarms),
        ),
        const Divider(),
        const TotCircleCheckImageAtom(
          height: 50,
          iconSize: 20,
          width: 50,
        ),
        const Divider(),
        TotClipperAtom(
          borderRadius: BorderRadius.circular(12),
          child: const Text('data'),
        ),
        const Divider(),
        TotOutlinedCardAtom(
          height: 20,
          width: 32,
          child: const Text('data'),
          onTap: () {},
        ),
        const Divider(),
        const TotPriceAtom(
          price: 0100,
          currency: '',
          currentPriceFontSize: 15,
          decimalPoints: 5,
          discountDecimalPoints: 3,
          discountPrc: 500,
          discountPrcFontSize: 15,
          discountPrice: 100,
          discountString: '',
          gap: 50,
          oldPriceFontSize: 6,
        ),
        const Divider(),
        const TotReviewIconTileAtom(
          height: 50,
          numberText: '8',
          textStyle: TextStyle(),
          width: 60,
        ),
        const Divider(),
        const TotReviewStarAtom(
          fill: 1,
          isFillFromRight: true,
        ),
        const Divider(),
        const TotSuccessIconAtom(
          activeColor: Colors.brown,
          widget: Text('data'),
          radius: 50,
        ),
        const Divider(),
        const TotTabAtom(
          text: 'fvdf',
          height: 50,
          textStyle: TextStyle(),
          width: 300,
        ),
        const Divider(),
        const TotTagAtom(
          label: 'dsfdxbgf',
          height: 50,
          textStyle: TextStyle(),
          width: 150,
        ),
        const Divider(),
        const TotTextAtom(
          title: 'vdsvdsv',
          maxLines: 5,
          textAlign: TextAlign.center,
          textOverflow: TextOverflow.ellipsis,
          textStyle: TextStyle(),
        ),
        const Divider(),
      ],
    );
  }
}
