import 'package:atomic_design_tool/core/theme/material_theme.dart';
import 'package:flutter/material.dart';

import 'core/theme/util.dart';
import 'screens/home_screen.dart';

const double kButtonHeight = 48.0;
const double kDefaultRadius = 10.0;
const double kDefaultVerticalGap = 16.0;
const double kDefaultHorizontalGap = 16.0;
const double kDefaultSmallGap = 4.0;
const double kDefaultMediumGap = 8.0;
const double kDefaultGap = 16.0;

class AtomicDesignTool extends StatelessWidget {
  const AtomicDesignTool({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = createTextTheme(context, "Poppins", "Poppins");
    MaterialTheme theme = MaterialTheme(
      context,
      textTheme,
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Atomic Design Tool',
      theme: theme.light(),
      themeMode: ThemeMode.light,
      home: const HomeScreen(),
    );
  }
}
