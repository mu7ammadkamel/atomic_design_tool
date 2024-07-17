import "package:atomic_design/atomic_design.dart";
import "package:flutter/material.dart";

const double kDefaultRadius = 15.0;

class MaterialTheme {
  final TextTheme textTheme;
  final BuildContext context;

  const MaterialTheme(
    this.context,
    this.textTheme,
  );

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff306a43),
      surfaceTint: Color(0xff306a43),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffb2f1bf),
      onPrimaryContainer: Color(0xff00210d),
      secondary: Color(0xff506353),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffd2e8d3),
      onSecondaryContainer: Color(0xff0d1f12),
      tertiary: Color(0xff3a656f),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffbeeaf6),
      onTertiaryContainer: Color(0xff001f25),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfff6fbf3),
      onSurface: Color(0xff181d18),
      onSurfaceVariant: Color(0xff414941),
      outline: Color(0xff717971),
      outlineVariant: Color(0xffc1c9bf),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d322d),
      inversePrimary: Color(0xff97d5a5),
      primaryFixed: Color(0xffb2f1bf),
      onPrimaryFixed: Color(0xff00210d),
      primaryFixedDim: Color(0xff97d5a5),
      onPrimaryFixedVariant: Color(0xff14512d),
      secondaryFixed: Color(0xffd2e8d3),
      onSecondaryFixed: Color(0xff0d1f12),
      secondaryFixedDim: Color(0xffb6ccb8),
      onSecondaryFixedVariant: Color(0xff384b3c),
      tertiaryFixed: Color(0xffbeeaf6),
      onTertiaryFixed: Color(0xff001f25),
      tertiaryFixedDim: Color(0xffa2ced9),
      onTertiaryFixedVariant: Color(0xff204d56),
      surfaceDim: Color(0xffd7dbd4),
      surfaceBright: Color(0xfff6fbf3),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff0f5ed),
      surfaceContainer: Color(0xffebefe7),
      surfaceContainerHigh: Color(0xffe5eae2),
      surfaceContainerHighest: Color(0xffdfe4dc),
    );
  }

  ThemeData light() {
    return theme(
      lightScheme(),
    );
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff97d5a5),
      surfaceTint: Color(0xff97d5a5),
      onPrimary: Color(0xff00391a),
      primaryContainer: Color(0xff14512d),
      onPrimaryContainer: Color(0xffb2f1bf),
      secondary: Color(0xffb6ccb8),
      onSecondary: Color(0xff223526),
      secondaryContainer: Color(0xff384b3c),
      onSecondaryContainer: Color(0xffd2e8d3),
      tertiary: Color(0xffa2ced9),
      onTertiary: Color(0xff01363f),
      tertiaryContainer: Color(0xff204d56),
      onTertiaryContainer: Color(0xffbeeaf6),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff101510),
      onSurface: Color(0xffdfe4dc),
      onSurfaceVariant: Color(0xffc1c9bf),
      outline: Color(0xff8b938a),
      outlineVariant: Color(0xff414941),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdfe4dc),
      inversePrimary: Color(0xff306a43),
      primaryFixed: Color(0xffb2f1bf),
      onPrimaryFixed: Color(0xff00210d),
      primaryFixedDim: Color(0xff97d5a5),
      onPrimaryFixedVariant: Color(0xff14512d),
      secondaryFixed: Color(0xffd2e8d3),
      onSecondaryFixed: Color(0xff0d1f12),
      secondaryFixedDim: Color(0xffb6ccb8),
      onSecondaryFixedVariant: Color(0xff384b3c),
      tertiaryFixed: Color(0xffbeeaf6),
      onTertiaryFixed: Color(0xff001f25),
      tertiaryFixedDim: Color(0xffa2ced9),
      onTertiaryFixedVariant: Color(0xff204d56),
      surfaceDim: Color(0xff101510),
      surfaceBright: Color(0xff353a35),
      surfaceContainerLowest: Color(0xff0a0f0b),
      surfaceContainerLow: Color(0xff181d18),
      surfaceContainer: Color(0xff1c211c),
      surfaceContainerHigh: Color(0xff262b26),
      surfaceContainerHighest: Color(0xff313631),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  ThemeData theme(
    ColorScheme colorScheme,
  ) {
    final outlineInputBorder = OutlineInputBorder(
      borderSide: BorderSide(
        color: colorScheme.onSurfaceVariant.withOpacity(0.12),
      ),
      borderRadius: const BorderRadius.all(Radius.circular(10)),
    );
    return ThemeData(
      useMaterial3: true,
      extensions: const [
        DefaultAppTheme(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.symmetric(horizontal: 16),
        ),
        AppContainerThemeExtension(
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.all(
              Radius.circular(kDefaultRadius),
            ),
          ),
        ),
      ],
      dialogTheme: DialogTheme(
        backgroundColor: colorScheme.surface,
        surfaceTintColor: colorScheme.surface,
        titleTextStyle: textTheme.titleMedium?.copyWith(
          color: colorScheme.onSurface,
          fontWeight: FontWeight.w600,
        ),
        contentTextStyle: textTheme.bodyMedium?.copyWith(
          color: colorScheme.onSurface,
          fontWeight: FontWeight.w400,
        ),
        actionsPadding: EdgeInsets.zero,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(kDefaultRadius)),
        ),
      ),
      appBarTheme: AppBarTheme(
        surfaceTintColor: Colors.transparent,
        shadowColor: Colors.transparent,
        backgroundColor: colorScheme.onSecondary,
        elevation: 0,
      ),
      brightness: colorScheme.brightness,
      colorScheme: colorScheme,
      textTheme: textTheme.apply(
        bodyColor: colorScheme.onSurface,
        displayColor: colorScheme.onSurface,
      ),
      scaffoldBackgroundColor: colorScheme.onSecondary,
      canvasColor: colorScheme.surface,
      tabBarTheme: TabBarTheme(
        dividerHeight: 0.5,
        labelColor: colorScheme.onSurface,
        splashFactory: InkRipple.splashFactory,
        unselectedLabelColor: colorScheme.onSurfaceVariant,
        labelStyle: textTheme.bodyMedium?.copyWith(
          fontWeight: FontWeight.w600,
          color: colorScheme.onSurface,
        ),
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: colorScheme.surface,
        actionTextColor: colorScheme.onSurface,
        contentTextStyle: textTheme.bodyMedium?.copyWith(
          color: colorScheme.onSurface,
        ),
      ),
      cardTheme: CardTheme(
        color: Colors.white,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: colorScheme.onSurface.withOpacity(0.1)),
          borderRadius: const BorderRadius.all(Radius.circular(kDefaultRadius)),
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: colorScheme.onSecondary,
        selectedItemColor: colorScheme.onSecondaryContainer,
        unselectedItemColor: colorScheme.onSurfaceVariant,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: colorScheme.surface,
        border: outlineInputBorder,
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        focusedErrorBorder: outlineInputBorder,
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          // textStyle: TextStyle(
          //   backgroundColor: ,
          //   color: ,
          //   decorationThickness: ,
          //   fontSize: ,

          // ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),

      /// Buttons styles
      iconButtonTheme: IconButtonThemeData(
        style: IconButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          minimumSize: const Size.fromHeight(50),
          backgroundColor: Colors.amber,
          foregroundColor: Colors.red,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
      progressIndicatorTheme: const ProgressIndicatorThemeData(),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          // foregroundColor: Colors.amber,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
      listTileTheme: ListTileThemeData(
        dense: true,
        contentPadding: EdgeInsets.zero,
        selectedColor: colorScheme.onPrimaryContainer,
        selectedTileColor: colorScheme.primaryContainer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kDefaultRadius),
        ),
      ),
    );
  }

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
