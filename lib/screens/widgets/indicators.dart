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
        const SizedBox(
          height: 10,
        ),
        TotDotIndicatorAtom(
          activeColor: Colors.amber,
          inactiveColor: Colors.grey,
          count: 10,
          pageController: PageController(
            initialPage: 6,
            keepPage: true,
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
          selectedIndex: 2,
          spacing: 20,
        ),
        // SizedBox(
        //   height: 10,
        // ),
        // TotLineIndicatorAtom(
        //   activeColor: Colors.amber,
        //   count: 10,
        //   lineWidth: 150,
        //   pageController: PageController(
        //     initialPage: 3,
        //     keepPage: true,
        //     onAttach: (position) {},
        //     onDetach: (position) {},
        //   ),
        //   curve: Curves.bounceInOut,
        //   duration: Duration(
        //     days: 2,
        //     hours: 1,
        //     microseconds: 1,
        //     milliseconds: 1,
        //     minutes: 11,
        //     seconds: 1,
        //   ),
        //   height: 500,
        //   inactiveColor: Colors.red,
        // ),
        const SizedBox(
          height: 10,
        ),
        const TotLinearProgressIndicatorAtom(
          minHeight: 1,
        ),
      ],
    );
  }
}
