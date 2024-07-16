import 'package:atomic_design/atomic_design.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> cards = [
      /// TotCard
      GestureDetector(
        onTap: () {},
        child: Container(
          width: double.infinity,
          constraints: const BoxConstraints(minWidth: 200),
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Stack(
            // clipBehavior: Clip.none,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CachedNetworkImage(
                    width: double.infinity,
                    height: 300,
                    imageUrl: 'https://picsum.photos/id/2/300/300',
                    fit: BoxFit.fill,
                    placeholder: (context, url) =>
                        const Center(child: CircularProgressIndicator()),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                    // imageBuilder: (context, imageProvider) {
                    // return Container(
                    //   clipBehavior: Clip.antiAlias,
                    //   decoration: BoxDecoration(
                    //     image: DecorationImage(
                    //       image: imageProvider,
                    //       fit: BoxFit.cover,
                    //     ),
                    //   ),
                    // );
                    // },
                  ),

                  /// Title
                  const TotTextAtom(title: "Title"),
                  const TotTextAtom(title: "description"),

                  /// Button
                  TotButtonAtom(
                    text: 'Click me',
                    onPressed: () {},
                  ),
                  TotButtonAtom(
                    text: 'Click mssse',
                    onPressed: () {},
                  ),
                ],
              ),
              Positioned(
                top: 10,
                left: 10,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: const Text(
                    "Hello World",
                    style: TextStyle(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ];

    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          ...cards,
        ],
      ),
    );
  }
}
