import 'package:atomic_design/atomic_design.dart';
import 'package:flutter/material.dart';

class Indicators extends StatelessWidget {
  const Indicators({super.key});

  @override
  Widget build(BuildContext context) {
    /// indicators
    return Column(
      children: [
        const TotCircularProgressIndicatorAtom(
          color: Colors.amber,
          height: 50,
          strokeWidth: 1,
          value: 100,
          width: 100,
        ),
        const Divider(),
        const TotRatingBarAtom(
          count: 20,
          max: 20,
        ),
        const Divider(),
        TotDotIndicatorAtom(
          count: 10,
          pageController: PageController(
            initialPage: 6,
            keepPage: false,
            onAttach: (position) {},
            onDetach: (position) {},
          ),
          curve: Curves.decelerate,
          dotSize: 15,
          duration: const Duration(
            days: 2,
            hours: 1,
            microseconds: 1,
            milliseconds: 1,
            minutes: 11,
            seconds: 1,
          ),
          spacing: 20,
        ),

        const TotRatingBarAtom(
          count: 20,
          max: 20,
        ),
        const Divider(),
        // const Divider(),
        // TotLineIndicatorAtom(
        //   count: 10,
        //   lineWidth: 150,
        //   pageController: PageController(
        //     initialPage: 3,
        //     keepPage: true,
        //     onAttach: (position) {},
        //     onDetach: (position) {},
        //   ),
        //   curve: Curves.bounceInOut,
        //   duration: const Duration(
        //     days: 2,
        //     hours: 1,
        //     microseconds: 1,
        //     milliseconds: 1,
        //     minutes: 11,
        //     seconds: 1,
        //   ),
        //   height: 500,
        // ),
        const Divider(),
        const TotLinearProgressIndicatorAtom(
          minHeight: 1,
        ),
      ],
    );
  }
}