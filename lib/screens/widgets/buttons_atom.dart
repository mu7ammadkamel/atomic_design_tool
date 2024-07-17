import 'package:atomic_design/atomic_design.dart';
import 'package:flutter/material.dart';

class ButtonsAtom extends StatelessWidget {
  const ButtonsAtom({super.key});

  @override
  Widget build(BuildContext context) {
    /// atoms
    return Column(
      children: [
        const TotChipAtom(
          label: 'ddsgdg',
          avatar: Icon(Icons.access_alarms),
        ),
        const SizedBox(
          height: 10,
        ),
        const TotCircleCheckImageAtom(
          height: 50,
          iconSize: 15,
          width: 120,
        ),
        const SizedBox(
          height: 10,
        ),
        TotClipperAtom(
          borderRadius: BorderRadius.circular(12),
          child: const Text('data'),
        ),
        //   SizedBox(
        //   height: 10,
        // ),
        // TotIconTextAtom(
        //   iconTextAtom: TotIconTextAtom(iconTextAtom: iconTextAtom, textAtom: textAtom),

        //   textAtom: TotTextAtom(title: 'dsfsdf'),
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   fixedSpace: 50,
        //   mainAxisAlignment:MainAxisAlignment.center ,
        // ),

        const SizedBox(
          height: 10,
        ),
        TotOutlinedCardAtom(
          child: const Text('data'),
          onTap: () {},
        ),
        const SizedBox(
          height: 10,
        ),
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
        //  SizedBox(
        //   height: 10,
        // ),
        // CustomThumbShape(
        //   radius: 5
        // ),
        const SizedBox(
          height: 10,
        ),
        const TotReviewIconTileAtom(
          height: 50,
          numberText: '8',
          textStyle: TextStyle(),
          width: 60,
        ),
        const SizedBox(
          height: 10,
        ),
        const TotReviewStarAtom(
          fill: 1,
          isFillFromRight: true,
        ),
        const SizedBox(
          height: 10,
        ),
        const TotSuccessIconAtom(
          activeColor: Colors.brown,
          widget: Text('data'),
          radius: 50,
        ),
        const SizedBox(
          height: 10,
        ),
        const TotTabAtom(
          text: 'fvdf',
          height: 50,
          textStyle: TextStyle(),
          width: 300,
        ),
        const SizedBox(
          height: 10,
        ),
        const TotTagAtom(
          label: 'dsfdxbgf',
          height: 50,
          textStyle: TextStyle(),
          width: 20,
        ),
        const SizedBox(
          height: 10,
        ),
        const TotTextAtom(
          title: 'vdsvdsv',
          maxLines: 5,
          textAlign: TextAlign.center,
          textOverflow: TextOverflow.ellipsis,
          textStyle: TextStyle(),
        ),
        const SizedBox(
          height: 10,
        ),
        TotToggleAtom(
          activeColor: Colors.green,
          activeText: 'active',
          controller: ValueNotifier(true),
          height: 50,
          inactiveColor: Colors.red,
          inactiveText: 'in active',
          isText: false,
          onChange: (p1) {},
          width: 300,
        ),
      ],
    );
  }
}
