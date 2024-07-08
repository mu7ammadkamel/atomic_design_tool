import "package:atomic_design_tool/atomic_design_tool.dart";
import "package:flutter/material.dart";

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

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff0f4d29),
      surfaceTint: Color(0xff306a43),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff468157),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff344738),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff657a68),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff1c4952),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff517b85),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff6fbf3),
      onSurface: Color(0xff181d18),
      onSurfaceVariant: Color(0xff3d453d),
      outline: Color(0xff596159),
      outlineVariant: Color(0xff757d74),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d322d),
      inversePrimary: Color(0xff97d5a5),
      primaryFixed: Color(0xff468157),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff2d6740),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff657a68),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff4d6150),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff517b85),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff37626c),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd7dbd4),
      surfaceBright: Color(0xfff6fbf3),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff0f5ed),
      surfaceContainer: Color(0xffebefe7),
      surfaceContainerHigh: Color(0xffe5eae2),
      surfaceContainerHighest: Color(0xffdfe4dc),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff002911),
      surfaceTint: Color(0xff306a43),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff0f4d29),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff142619),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff344738),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff00262e),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff1c4952),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff6fbf3),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff1e261f),
      outline: Color(0xff3d453d),
      outlineVariant: Color(0xff3d453d),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d322d),
      inversePrimary: Color(0xffbcfbc9),
      primaryFixed: Color(0xff0f4d29),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff003518),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff344738),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff1f3123),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff1c4952),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff00323b),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd7dbd4),
      surfaceBright: Color(0xfff6fbf3),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff0f5ed),
      surfaceContainer: Color(0xffebefe7),
      surfaceContainerHigh: Color(0xffe5eae2),
      surfaceContainerHighest: Color(0xffdfe4dc),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
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

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff9bd9a9),
      surfaceTint: Color(0xff97d5a5),
      onPrimary: Color(0xff001b0a),
      primaryContainer: Color(0xff639e72),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffbbd0bc),
      onSecondary: Color(0xff081a0d),
      secondaryContainer: Color(0xff819683),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffa6d2dd),
      onTertiary: Color(0xff00191f),
      tertiaryContainer: Color(0xff6d97a2),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff101510),
      onSurface: Color(0xfff8fcf4),
      onSurfaceVariant: Color(0xffc5cdc3),
      outline: Color(0xff9da59c),
      outlineVariant: Color(0xff7d857d),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdfe4dc),
      inversePrimary: Color(0xff16522e),
      primaryFixed: Color(0xffb2f1bf),
      onPrimaryFixed: Color(0xff001507),
      primaryFixedDim: Color(0xff97d5a5),
      onPrimaryFixedVariant: Color(0xff003f1e),
      secondaryFixed: Color(0xffd2e8d3),
      onSecondaryFixed: Color(0xff041509),
      secondaryFixedDim: Color(0xffb6ccb8),
      onSecondaryFixedVariant: Color(0xff283a2c),
      tertiaryFixed: Color(0xffbeeaf6),
      onTertiaryFixed: Color(0xff001419),
      tertiaryFixedDim: Color(0xffa2ced9),
      onTertiaryFixedVariant: Color(0xff0a3c45),
      surfaceDim: Color(0xff101510),
      surfaceBright: Color(0xff353a35),
      surfaceContainerLowest: Color(0xff0a0f0b),
      surfaceContainerLow: Color(0xff181d18),
      surfaceContainer: Color(0xff1c211c),
      surfaceContainerHigh: Color(0xff262b26),
      surfaceContainerHighest: Color(0xff313631),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffefffee),
      surfaceTint: Color(0xff97d5a5),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xff9bd9a9),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffefffee),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffbbd0bc),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfff3fcff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffa6d2dd),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff101510),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfff5fdf2),
      outline: Color(0xffc5cdc3),
      outlineVariant: Color(0xffc5cdc3),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdfe4dc),
      inversePrimary: Color(0xff003216),
      primaryFixed: Color(0xffb7f6c4),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xff9bd9a9),
      onPrimaryFixedVariant: Color(0xff001b0a),
      secondaryFixed: Color(0xffd7edd7),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffbbd0bc),
      onSecondaryFixedVariant: Color(0xff081a0d),
      tertiaryFixed: Color(0xffc2eefa),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffa6d2dd),
      onTertiaryFixedVariant: Color(0xff00191f),
      surfaceDim: Color(0xff101510),
      surfaceBright: Color(0xff353a35),
      surfaceContainerLowest: Color(0xff0a0f0b),
      surfaceContainerLow: Color(0xff181d18),
      surfaceContainer: Color(0xff1c211c),
      surfaceContainerHigh: Color(0xff262b26),
      surfaceContainerHighest: Color(0xff313631),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
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
        color: colorScheme.surface,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: colorScheme.onSurface.withOpacity(0.1)),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
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
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          minimumSize: const Size.fromHeight(50),
          backgroundColor: colorScheme.primary,
          foregroundColor: colorScheme.onPrimary,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
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
