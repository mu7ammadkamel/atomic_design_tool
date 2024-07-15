// orgnisms/appbar.dart
import 'package:flutter/material.dart';

class NeuBrainAppBar extends SliverPersistentHeaderDelegate {
  const NeuBrainAppBar() : super();

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      width: 200,
      height: 100,
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 16,
              left: 16,
              right: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FilledButton(
                  onPressed: () {},
                  child: const Text("Home"),
                ),
                const ButtonBar(),
              ],
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }

  @override
  double get maxExtent => 200;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
