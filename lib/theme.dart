import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4280642122),
      surfaceTint: Color(4280642122),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4289458889),
      onPrimaryContainer: Color(4278198546),
      secondary: Color(4287646282),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4294957784),
      onSecondaryContainer: Color(4282058764),
      tertiary: Color(4278216824),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4289195775),
      onTertiaryContainer: Color(4278198053),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      background: Color(4294376436),
      onBackground: Color(4279704857),
      surface: Color(4294376190),
      onSurface: Color(4279704607),
      surfaceVariant: Color(4292666844),
      onSurfaceVariant: Color(4282403139),
      outline: Color(4285561202),
      outlineVariant: Color(4290824641),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281086260),
      inverseOnSurface: Color(4293784053),
      inversePrimary: Color(4287681966),
      primaryFixed: Color(4289458889),
      onPrimaryFixed: Color(4278198546),
      primaryFixedDim: Color(4287681966),
      onPrimaryFixedVariant: Color(4278211124),
      secondaryFixed: Color(4294957784),
      onSecondaryFixed: Color(4282058764),
      secondaryFixedDim: Color(4294947761),
      onSecondaryFixedVariant: Color(4285739827),
      tertiaryFixed: Color(4289195775),
      onTertiaryFixed: Color(4278198053),
      tertiaryFixedDim: Color(4286829285),
      onTertiaryFixedVariant: Color(4278210139),
      surfaceDim: Color(4292270814),
      surfaceBright: Color(4294376190),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4293981432),
      surfaceContainer: Color(4293586674),
      surfaceContainerHigh: Color(4293192172),
      surfaceContainerHighest: Color(4292862951),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4278209841),
      surfaceTint: Color(4280642122),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4282286431),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4285411120),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4289355614),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4278209110),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4280844176),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      background: Color(4294376436),
      onBackground: Color(4279704857),
      surface: Color(4294376190),
      onSurface: Color(4279704607),
      surfaceVariant: Color(4292666844),
      onSurfaceVariant: Color(4282139967),
      outline: Color(4283982171),
      outlineVariant: Color(4285824374),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281086260),
      inverseOnSurface: Color(4293784053),
      inversePrimary: Color(4287681966),
      primaryFixed: Color(4282286431),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4280445000),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4289355614),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4287448903),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4280844176),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4278216053),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292270814),
      surfaceBright: Color(4294376190),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4293981432),
      surfaceContainer: Color(4293586674),
      surfaceContainerHigh: Color(4293192172),
      surfaceContainerHighest: Color(4292862951),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4278200343),
      surfaceTint: Color(4280642122),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4278209841),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4282650386),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4285411120),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4278199854),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4278209110),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      background: Color(4294376436),
      onBackground: Color(4279704857),
      surface: Color(4294376190),
      onSurface: Color(4278190080),
      surfaceVariant: Color(4292666844),
      onSurfaceVariant: Color(4280165920),
      outline: Color(4282139967),
      outlineVariant: Color(4282139967),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281086260),
      inverseOnSurface: Color(4294967295),
      inversePrimary: Color(4290116818),
      primaryFixed: Color(4278209841),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4278203424),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4285411120),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4283570715),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4278209110),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4278202939),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292270814),
      surfaceBright: Color(4294376190),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4293981432),
      surfaceContainer: Color(4293586674),
      surfaceContainerHigh: Color(4293192172),
      surfaceContainerHighest: Color(4292862951),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color.fromARGB(255, 0, 0, 0), //text colour?
      surfaceTint: Color(4287681966),
      onPrimary: Color(4278204450),
      primaryContainer: Color(4278211124),
      onPrimaryContainer: Color(4289458889),
      secondary: Color(4294947761),
      onSecondary: Color(4283899167),
      secondaryContainer: Color(4285739827),
      onSecondaryContainer: Color(4294957784),
      tertiary: Color(4286829285),
      onTertiary: Color(4278203967),
      tertiaryContainer: Color(4278210139),
      onTertiaryContainer: Color(4289195775),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      background: Color(0xff3E3F40), //screen background
      onBackground: Color(4292863198),
      surface: Color(0xff9AF1C1), //button background
      onSurface: Color(4292862951),
      surfaceVariant: Color(4282403139),
      onSurfaceVariant: Color(4290824641),
      outline: Color(4287271820),
      outlineVariant: Color(4282403139),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292862951),
      inverseOnSurface: Color(4281086260),
      inversePrimary: Color(4280642122),
      primaryFixed: Color(4289458889),
      onPrimaryFixed: Color.fromARGB(255, 51, 134, 97),
      primaryFixedDim: Color(4287681966),
      onPrimaryFixedVariant: Color(4278211124),
      secondaryFixed: Color(4294957784),
      onSecondaryFixed: Color(4282058764),
      secondaryFixedDim: Color(4294947761),
      onSecondaryFixedVariant: Color(4285739827),
      tertiaryFixed: Color(4289195775),
      onTertiaryFixed: Color(4278198053),
      tertiaryFixedDim: Color(4286829285),
      onTertiaryFixedVariant: Color(4278210139),
      surfaceDim: Color(4279178263),
      surfaceBright: Color(4281678397),
      surfaceContainerLowest: Color(4278849298),
      surfaceContainerLow: Color(4279704607),
      surfaceContainer: Color(4279967779),
      surfaceContainerHigh: Color(4280691502),
      surfaceContainerHighest: Color(4281349432),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4287945394),
      surfaceTint: Color(4287681966),
      onPrimary: Color(4278197006),
      primaryContainer: Color(4284194426),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294949303),
      onSecondary: Color(4281598983),
      secondaryContainer: Color(4291525241),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4287157993),
      onTertiary: Color(4278196511),
      tertiaryContainer: Color(4283145389),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      background: Color(4279178513),
      onBackground: Color(4292863198),
      surface: Color(4279178263),
      onSurface: Color(4294441983),
      surfaceVariant: Color(4282403139),
      onSurfaceVariant: Color(4291087813),
      outline: Color(4288456093),
      outlineVariant: Color(4286350718),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292862951),
      inverseOnSurface: Color(4280691502),
      inversePrimary: Color(4278342453),
      primaryFixed: Color(4289458889),
      onPrimaryFixed: Color(4278195466),
      primaryFixedDim: Color(4287681966),
      onPrimaryFixedVariant: Color(4278206247),
      secondaryFixed: Color(4294957784),
      onSecondaryFixed: Color(4281073924),
      secondaryFixedDim: Color(4294947761),
      onSecondaryFixedVariant: Color(4284359460),
      tertiaryFixed: Color(4289195775),
      onTertiaryFixed: Color(4278195224),
      tertiaryFixedDim: Color(4286829285),
      onTertiaryFixedVariant: Color(4278205510),
      surfaceDim: Color(4279178263),
      surfaceBright: Color(4281678397),
      surfaceContainerLowest: Color(4278849298),
      surfaceContainerLow: Color(4279704607),
      surfaceContainer: Color(4279967779),
      surfaceContainerHigh: Color(4280691502),
      surfaceContainerHighest: Color(4281349432),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4293853170),
      surfaceTint: Color(4287681966),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4287945394),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294965753),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4294949303),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294180095),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4287157993),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      background: Color(4279178513),
      onBackground: Color(4292863198),
      surface: Color(4279178263),
      onSurface: Color(4294967295),
      surfaceVariant: Color(4282403139),
      onSurfaceVariant: Color(4294245876),
      outline: Color(4291087813),
      outlineVariant: Color(4291087813),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292862951),
      inverseOnSurface: Color(4278190080),
      inversePrimary: Color(4278202654),
      primaryFixed: Color(4289787597),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4287945394),
      onPrimaryFixedVariant: Color(4278197006),
      secondaryFixed: Color(4294959326),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4294949303),
      onSecondaryFixedVariant: Color(4281598983),
      tertiaryFixed: Color(4290179327),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4287157993),
      onTertiaryFixedVariant: Color(4278196511),
      surfaceDim: Color(4279178263),
      surfaceBright: Color(4281678397),
      surfaceContainerLowest: Color(4278849298),
      surfaceContainerLow: Color(4279704607),
      surfaceContainer: Color(4279967779),
      surfaceContainerHigh: Color(4280691502),
      surfaceContainerHighest: Color(4281349432),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme().toColorScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.background,
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary,
    required this.surfaceTint,
    required this.onPrimary,
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.secondary,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    required this.tertiary,
    required this.onTertiary,
    required this.tertiaryContainer,
    required this.onTertiaryContainer,
    required this.error,
    required this.onError,
    required this.errorContainer,
    required this.onErrorContainer,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    required this.surfaceVariant,
    required this.onSurfaceVariant,
    required this.outline,
    required this.outlineVariant,
    required this.shadow,
    required this.scrim,
    required this.inverseSurface,
    required this.inverseOnSurface,
    required this.inversePrimary,
    required this.primaryFixed,
    required this.onPrimaryFixed,
    required this.primaryFixedDim,
    required this.onPrimaryFixedVariant,
    required this.secondaryFixed,
    required this.onSecondaryFixed,
    required this.secondaryFixedDim,
    required this.onSecondaryFixedVariant,
    required this.tertiaryFixed,
    required this.onTertiaryFixed,
    required this.tertiaryFixedDim,
    required this.onTertiaryFixedVariant,
    required this.surfaceDim,
    required this.surfaceBright,
    required this.surfaceContainerLowest,
    required this.surfaceContainerLow,
    required this.surfaceContainer,
    required this.surfaceContainerHigh,
    required this.surfaceContainerHighest,
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      background: background,
      onBackground: onBackground,
      surface: surface,
      onSurface: onSurface,
      surfaceVariant: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
    );
  }
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
