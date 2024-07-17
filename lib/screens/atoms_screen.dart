import 'dart:ui';

import 'package:atomic_design/atomic_design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class AtomsScreen extends StatefulWidget {
  const AtomsScreen({
    super.key,
  });

  @override
  State<AtomsScreen> createState() => _AtomsScreenState();
}

class _AtomsScreenState extends State<AtomsScreen> {
  late final TextEditingController titleController;
  late final TextEditingController descriptionController;

  int currentIndex = 1;

  @override
  void initState() {
    super.initState();
    titleController = TextEditingController();
    descriptionController = TextEditingController();
  }

  @override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Wrap(
        spacing: 14.0,
        children: [
          ButtonsAtom(),
        ],
      ),
    );
  }
}

class ButtonsAtom extends StatelessWidget {
  const ButtonsAtom({super.key});

  @override
  Widget build(BuildContext context) {
    /// atoms
    return Column(
      children: [
        TotChipAtom(
          label: 'ddsgdg',
          avatar: Icon(Icons.access_alarms),
        ),
        SizedBox(
          height: 10,
        ),
        TotCircleCheckImageAtom(
          backgroundColor: Colors.cyan,
          height: 50,
          iconColor: Colors.deepOrangeAccent,
          iconSize: 15,
          width: 120,
        ),
        SizedBox(
          height: 10,
        ),
        TotClipperAtom(
          borderRadius: BorderRadius.circular(12),
          child: Text('data'),
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
        SizedBox(
          height: 10,
        ),
        TotImageShimmerAtom(
          size: 25,
          isCircle: true,
          shimmerBase: Colors.deepOrange,
          shimmerHighlight: Colors.indigo,
        ),
        SizedBox(
          height: 10,
        ),
        TotOutlinedCardAtom(
          cardStyle: TotOutlinedCardStyle(
            contentHeight: 200,
            borderColor: Colors.deepOrange,
            borderRadius: 12,
            borderWidth: 30,
            cardColor: Colors.indigo,
            contentWidth: 150,
            dividerColor: Colors.black12,
            dividerHeight: 20,
            elevation: 5,
            padding: EdgeInsets.all(15),
            shadowColor: Colors.black26,
            surfaceTintColor: Colors.white,
          ),
          child: Text('data'),
          onTap: () {},
        ),
        SizedBox(
          height: 10,
        ),
        TotPriceAtom(
          price: 0100,
          currency: '',
          currentPriceColor: Colors.indigo,
          currentPriceFontSize: 15,
          decimalPoints: 5,
          discountDecimalPoints: 3,
          discountPrc: 500,
          discountPrcColor: Colors.amberAccent,
          discountPrcFontSize: 15,
          discountPrice: 100,
          discountString: '',
          gap: 50,
          oldPriceColor: Colors.grey,
          oldPriceFontSize: 6,
        ),
        //  SizedBox(
        //   height: 10,
        // ),
        // CustomThumbShape(
        //   radius: 5
        // ),
        SizedBox(
          height: 10,
        ),
        TotReviewIconTileAtom(
          containerColor: Colors.grey,
          height: 50,
          numberText: '8',
          textStyle: TextStyle(),
          width: 60,
        ),
        SizedBox(
          height: 10,
        ),
        TotReviewStarAtom(
          fill: 1,
          fillColor: Colors.grey,
          isFillFromRight: true,
        ),
        SizedBox(
          height: 10,
        ),
        TotSuccessIconAtom(
          activeColor: Colors.brown,
          widget: Text('data'),
          radius: 50,
        ),
        SizedBox(
          height: 10,
        ),
        TotTabAtom(
          text: 'fvdf',
          backgroundColor: Colors.pink,
          borderColor: Colors.black26,
          height: 50,
          radius: 7,
          textStyle: TextStyle(),
          width: 300,
        ),
        SizedBox(
          height: 10,
        ),
        TotTagAtom(
          label: 'dsfdxbgf',
          backgroundColor: Colors.grey,
          fontSize: 12,
          fontWeight: FontWeight.bold,
          height: 50,
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
          radius: 15,
          textColor: Colors.white,
          textStyle: TextStyle(),
          width: 20,
        ),
        SizedBox(
          height: 10,
        ),
        TotTextAtom(
          title: 'vdsvdsv',
          maxLines: 5,
          textAlign: TextAlign.center,
          textOverflow: TextOverflow.ellipsis,
          textStyle: TextStyle(),
        ),
        SizedBox(
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

    /// switches
    return Column(
      children: [
        TotSwitchAtom(
          onChanged: (value) {},
          value: true,
        ),
      ],
    );

    /// radios
    return Column(
      children: [
        // TotRadioAtom<T>(
        //   groupValue:  ,

        //   value: ,
        //   onChanged: ,
        // ),
      ],
    );

    /// logo
    return Column(
      children: [
        TotBrandLogoAtom(
          height: 500,
          imagePath: 'asset/grand.png',
          width: 2000,
        ),
      ],
    );

    /// indicators
    return Column(
      children: [
        TotCircularProgressIndicatorAtom(
          color: Colors.amber,
          height: 50,
          strokeWidth: 1,
          value: 100,
          width: 100,
        ),
        SizedBox(
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
          duration: Duration(
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
        SizedBox(
          height: 10,
        ),
        TotLinearProgressIndicatorAtom(
          minHeight: 1,
        ),
      ],
    );

    /// icons
    return Column(
      children: [
        TotCheckIconAtom(
          initialValue: true,
          onChanged: (p0) {},
        ),
        SizedBox(
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
          padding: EdgeInsets.all(10),
          width: 300,
        ),
        SizedBox(
          height: 10,
        ),
        TotIconAtom(
          iconData: Icons.access_alarms_rounded,
          iconColor: Colors.black,
          iconSize: 15,
        ),
      ],
    );

    /// dividers
    return Column(
      children: [
        TotDividerAtom(
          color: Colors.red,
          height: 10,
          isVertical: false,
          thickness: 100,
          verticalWidth: 00,
        ),
      ],
    );

    /// dialogs
    return Column(
      children: [
        Container(
          color: Colors.amber,
          child: TotAlertDialogAtom(
            actions: [Text('data')],
            content: Text('data'),
            height: 200,
            title: Text('data'),
            width: 300,
          ),
        ),
      ],
    );

    /// checks
    return Column(
      children: [
        TotCheckboxAtom(
          onChanged: (value) {},
          value: true,
        ),
      ],
    );

    /// Buttons
    return Column(
      children: [
        TotBackButtonAtom(
          color: Colors.amber,
          onPressed: () {},
        ),
        TotBouncingButtonAtom(
          title: 'title',
          onPressed: () {},
          style: TotAtomStyle(
            height: 50,
            width: 75,
            isLoading: false,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TotDangerButtonAtom(
          text: 'ali',
          onPressed: () {},
          style: TotAtomStyle(
            height: 50,
            width: 75,
            isLoading: false,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TotElevatedButtonAtom(
          text: 'ibrahim',
          onPressed: () {},
          style: TotAtomStyle(
            height: 50,
            width: 105,
            isLoading: false,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TotFilledButtonAtom(
          text: 'ibrahim',
          onPressed: () {},
          style: TotAtomStyle(
            height: 50,
            width: 105,
            isLoading: false,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TotIconButtonAtom(
          icon: Icon(Icons.access_time_filled_rounded),
          onPressed: () {},
          style: TotAtomStyle(
            height: 50,
            width: 100,
            isLoading: false,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TotOutlinedButtonAtom(
          text: 'outlined',
          onPressed: () {},
          style: TotAtomStyle(
            height: 50,
            width: 110,
            isLoading: false,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TotTextButtonAtom(
          text: 'TextButton',
          onPressed: () {},
          style: TotAtomStyle(
            height: 50,
            width: 150,
            isLoading: false,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TotButtonCloseAtom(
          onPressed: () {},
        ),
        SizedBox(
          height: 10,
        ),
        TotAvatarAtom(
          assetPath: 'asset/grand.png',
          child: Text('data'),
          radius: 50,
          backgroundColor: Colors.black,
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          color: Colors.amber,
          child: TotNetworkImageAtom(
            placeholderUrl:
                'https://www.shutterstock.com/shutterstock/photos/2148937449/display_1500/stock-photo-canyon-view-in-summer-colorful-canyon-landscape-at-sunset-nature-scenery-in-the-canyon-amazing-2148937449.jpg',
            url: 'BoxFit',
            fit: BoxFit.fill,
            height: 300,
            showImage: true,
            width: 500,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TotAssetImageAtom(
          assetPath: 'asset/grand.png',
          fit: BoxFit.fill,
          height: 100,
          width: 120,
        ),
        SizedBox(
          height: 10,
        ),
        TotDeleteButtonAtom(
          onPressed: () {},
          iconColor: Colors.red,
          iconSize: 25,
        ),
        SizedBox(
          height: 10,
        ),
        TotPopButtonAtom(),
      ],
    );
  }
}
