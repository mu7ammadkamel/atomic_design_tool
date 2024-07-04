import 'package:atomic_design_tool/atomic_design_tool.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:tot_atomic_design/tot_atomic_design.dart';

class AtomsScreen extends StatefulWidget {
  const AtomsScreen({super.key});

  @override
  State<AtomsScreen> createState() => _AtomsScreenState();
}

class _AtomsScreenState extends State<AtomsScreen> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> buttons = [
      TotTextAtom(title: "Buttons", textStyle: context.headlineSmall),
      const TotDividerAtom(),

      /// TotButton
      TotButtonAtom(
        text: 'TotButton',
        onPressed: () {},
      ),

      /// BouncingEffect
      BouncingEffect(
        child: TotButtonAtom(
          text: 'TotButton with BouncingEffect',
          onPressed: () {},
        ),
      ),
    ];

    final List<Widget> cards = [
      TotTextAtom(title: "Cards", textStyle: context.headlineSmall),
      const TotDividerAtom(),

      /// TotCard
      Material(
        color: Colors.green,
        child: InkWell(
          onTap: () {
            // showAboutDialog(context: context, applicationName: 'TotCard');
          },
          borderRadius: const BorderRadius.all(
            Radius.circular(kDefaultRadius),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CachedNetworkImage(
              imageUrl: 'https://picsum.photos/id/2/300/300',
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
              imageBuilder: (context, imageProvider) {
                return Container(
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    ];

    return SingleChildScrollView(
      padding: const EdgeInsets.all(kDefaultGap),
      child: Wrap(
        runSpacing: kDefaultMediumGap,
        children: [
          ...buttons,
          ...cards,

          /// TotTextAtom
          TotTextAtom(
            title: 'TotText',
            textStyle: context.headlineSmall,
          ),

          /// TotListTile
          TotListTile(
            onTap: () {},
            title: "TotListTile - title",
            subtitle: const TotTextAtom(
              title: 'TotListTile - subtitle',
            ),
            leading: const Icon(FluentIcons.list_24_regular),
            trailing: const Icon(
              FluentIcons.chevron_right_12_regular,
              size: 14,
            ),
          ),

          /// TotButton
          TotButtonAtom(
            text: 'TotButton',
            onPressed: () {},
          ),

          /// BouncingEffect
          BouncingEffect(
            child: TotButtonAtom(
              text: 'TotButton with BouncingEffect',
              onPressed: () {},
            ),
          ),

          /// TotAlertDialogAtom
          TotAlertDialogMolecule(
            stackAlignment: Alignment.topRight,
            positionedWidgets: [
              Positioned(
                child: IconButton(
                  icon: const Icon(
                    FluentIcons.dismiss_12_regular,
                    size: 20.0,
                  ),
                  onPressed: () {
                    print('closed_caption_16_filled');
                  },
                ),
              ),
            ],
            title: 'TotAlertDialogMolecule',
            content:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit.\nPellentesque euismod, nisl sit amet aliquet dictum, nisl nisl aliquet nisl, nisl aliquet nisl nisl aliquet nisl.',
            actions: [
              SizedBox(
                child: TotButtonAtom(
                  text: "OK",
                  onPressed: () {},
                ),
              ),
              SizedBox(
                child: TotButtonAtom(
                  text: "Cancel",
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
