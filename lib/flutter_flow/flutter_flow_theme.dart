// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shared_preferences/shared_preferences.dart';

const kThemeModeKey = '__theme_mode__';
SharedPreferences? _prefs;

abstract class FlutterFlowTheme {
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static ThemeMode get themeMode {
    final darkMode = _prefs?.getBool(kThemeModeKey);
    return darkMode == null
        ? ThemeMode.system
        : darkMode
            ? ThemeMode.dark
            : ThemeMode.light;
  }

  static void saveThemeMode(ThemeMode mode) => mode == ThemeMode.system
      ? _prefs?.remove(kThemeModeKey)
      : _prefs?.setBool(kThemeModeKey, mode == ThemeMode.dark);

  static FlutterFlowTheme of(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? DarkModeTheme()
        : LightModeTheme();
  }

  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary;
  late Color secondary;
  late Color tertiary;
  late Color alternate;
  late Color primaryText;
  late Color secondaryText;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color accent1;
  late Color accent2;
  late Color accent3;
  late Color accent4;
  late Color success;
  late Color warning;
  late Color error;
  late Color info;

  late Color text1;
  late Color text2;
  late Color background1;
  late Color customColor2;
  late Color graSet11;
  late Color graSet12;
  late Color graSet13;
  late Color textfieldHintText;
  late Color mavi;
  late Color graSet21;
  late Color graSet22;
  late Color graSet23;
  late Color background2;
  late Color text3;
  late Color customColor1;
  late Color customColor3;
  late Color customColor4;
  late Color customColor5;
  late Color customColor6;
  late Color customColor7;
  late Color customColor8;
  late Color customColor9;
  late Color customColor10;
  late Color customColor11;
  late Color customColor12;
  late Color customColor13;
  late Color customColor14;
  late Color customColor15;
  late Color customColor16;
  late Color customColor17;
  late Color customColor18;
  late Color customColor19;
  late Color customColor20;
  late Color customColor21;
  late Color customColor22;
  late Color customColor35;
  late Color customColor34;
  late Color customColor23;
  late Color customColor24;
  late Color customColor25;
  late Color customColor26;
  late Color customColor27;
  late Color customColor28;
  late Color customColor29;
  late Color customColor30;
  late Color customColor31;

  @Deprecated('Use displaySmallFamily instead')
  String get title1Family => displaySmallFamily;
  @Deprecated('Use displaySmall instead')
  TextStyle get title1 => typography.displaySmall;
  @Deprecated('Use headlineMediumFamily instead')
  String get title2Family => typography.headlineMediumFamily;
  @Deprecated('Use headlineMedium instead')
  TextStyle get title2 => typography.headlineMedium;
  @Deprecated('Use headlineSmallFamily instead')
  String get title3Family => typography.headlineSmallFamily;
  @Deprecated('Use headlineSmall instead')
  TextStyle get title3 => typography.headlineSmall;
  @Deprecated('Use titleMediumFamily instead')
  String get subtitle1Family => typography.titleMediumFamily;
  @Deprecated('Use titleMedium instead')
  TextStyle get subtitle1 => typography.titleMedium;
  @Deprecated('Use titleSmallFamily instead')
  String get subtitle2Family => typography.titleSmallFamily;
  @Deprecated('Use titleSmall instead')
  TextStyle get subtitle2 => typography.titleSmall;
  @Deprecated('Use bodyMediumFamily instead')
  String get bodyText1Family => typography.bodyMediumFamily;
  @Deprecated('Use bodyMedium instead')
  TextStyle get bodyText1 => typography.bodyMedium;
  @Deprecated('Use bodySmallFamily instead')
  String get bodyText2Family => typography.bodySmallFamily;
  @Deprecated('Use bodySmall instead')
  TextStyle get bodyText2 => typography.bodySmall;

  String get displayLargeFamily => typography.displayLargeFamily;
  TextStyle get displayLarge => typography.displayLarge;
  String get displayMediumFamily => typography.displayMediumFamily;
  TextStyle get displayMedium => typography.displayMedium;
  String get displaySmallFamily => typography.displaySmallFamily;
  TextStyle get displaySmall => typography.displaySmall;
  String get headlineLargeFamily => typography.headlineLargeFamily;
  TextStyle get headlineLarge => typography.headlineLarge;
  String get headlineMediumFamily => typography.headlineMediumFamily;
  TextStyle get headlineMedium => typography.headlineMedium;
  String get headlineSmallFamily => typography.headlineSmallFamily;
  TextStyle get headlineSmall => typography.headlineSmall;
  String get titleLargeFamily => typography.titleLargeFamily;
  TextStyle get titleLarge => typography.titleLarge;
  String get titleMediumFamily => typography.titleMediumFamily;
  TextStyle get titleMedium => typography.titleMedium;
  String get titleSmallFamily => typography.titleSmallFamily;
  TextStyle get titleSmall => typography.titleSmall;
  String get labelLargeFamily => typography.labelLargeFamily;
  TextStyle get labelLarge => typography.labelLarge;
  String get labelMediumFamily => typography.labelMediumFamily;
  TextStyle get labelMedium => typography.labelMedium;
  String get labelSmallFamily => typography.labelSmallFamily;
  TextStyle get labelSmall => typography.labelSmall;
  String get bodyLargeFamily => typography.bodyLargeFamily;
  TextStyle get bodyLarge => typography.bodyLarge;
  String get bodyMediumFamily => typography.bodyMediumFamily;
  TextStyle get bodyMedium => typography.bodyMedium;
  String get bodySmallFamily => typography.bodySmallFamily;
  TextStyle get bodySmall => typography.bodySmall;

  Typography get typography => ThemeTypography(this);
}

class LightModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFF4B39EF);
  late Color secondary = const Color(0xFF39D2C0);
  late Color tertiary = const Color(0xFFEE8B60);
  late Color alternate = const Color(0xFFE0E3E7);
  late Color primaryText = const Color(0xFF14181B);
  late Color secondaryText = const Color(0xFF57636C);
  late Color primaryBackground = const Color(0xFFF1F4F8);
  late Color secondaryBackground = const Color(0xFFFFFFFF);
  late Color accent1 = const Color(0x4C4B39EF);
  late Color accent2 = const Color(0x4D39D2C0);
  late Color accent3 = const Color(0x4DEE8B60);
  late Color accent4 = const Color(0xCCFFFFFF);
  late Color success = const Color(0xFF249689);
  late Color warning = const Color(0xFFF9CF58);
  late Color error = const Color(0xFFFF5963);
  late Color info = const Color(0xFFFFFFFF);

  late Color text1 = const Color(0xFF000000);
  late Color text2 = const Color(0xFF515151);
  late Color background1 = const Color(0xFFFFFFFF);
  late Color customColor2 = const Color(0xFFB6B6B6);
  late Color graSet11 = const Color(0xFF0F638D);
  late Color graSet12 = const Color(0xFF123648);
  late Color graSet13 = const Color(0xFF00121B);
  late Color textfieldHintText = const Color(0xFF7C7C7C);
  late Color mavi = const Color(0xFF067BB7);
  late Color graSet21 = const Color(0xFF333333);
  late Color graSet22 = const Color(0xFFBABABA);
  late Color graSet23 = const Color(0xFFE3E3E3);
  late Color background2 = const Color(0xFFE5E5E5);
  late Color text3 = const Color(0xFF616161);
  late Color customColor1 = const Color(0xFF036CD8);
  late Color customColor3 = const Color(0xFFA68CD5);
  late Color customColor4 = const Color(0xFFC04277);
  late Color customColor5 = const Color(0xFF53A171);
  late Color customColor6 = const Color(0xFFA0C82E);
  late Color customColor7 = const Color(0xFFD58FD8);
  late Color customColor8 = const Color(0xFF1375B2);
  late Color customColor9 = const Color(0xFF9E1C77);
  late Color customColor10 = const Color(0xFF4C55B5);
  late Color customColor11 = const Color(0xFF22F45E);
  late Color customColor12 = const Color(0xFF9A8128);
  late Color customColor13 = const Color(0xFF6B9FCC);
  late Color customColor14 = const Color(0xFFD2F943);
  late Color customColor15 = const Color(0xFFD9CFBF);
  late Color customColor16 = const Color(0xFF19D156);
  late Color customColor17 = const Color(0xFF2064AA);
  late Color customColor18 = const Color(0xFFCF9BAC);
  late Color customColor19 = const Color(0xFF560D05);
  late Color customColor20 = const Color(0xFFED757E);
  late Color customColor21 = const Color(0xFF9FC122);
  late Color customColor22 = const Color(0xFF4F0775);
  late Color customColor35 = const Color(0xFFA4C02A);
  late Color customColor34 = const Color(0xFFB6B605);
  late Color customColor23 = const Color(0xFFE05D06);
  late Color customColor24 = const Color(0xFFC1FA0D);
  late Color customColor25 = const Color(0xFF7B65A9);
  late Color customColor26 = const Color(0xFFC045BF);
  late Color customColor27 = const Color(0xFF11F22A);
  late Color customColor28 = const Color(0xFF06E6CB);
  late Color customColor29 = const Color(0xFF365EBA);
  late Color customColor30 = const Color(0xFF5E7C5B);
  late Color customColor31 = const Color(0xFF30443F);
}

abstract class Typography {
  String get displayLargeFamily;
  TextStyle get displayLarge;
  String get displayMediumFamily;
  TextStyle get displayMedium;
  String get displaySmallFamily;
  TextStyle get displaySmall;
  String get headlineLargeFamily;
  TextStyle get headlineLarge;
  String get headlineMediumFamily;
  TextStyle get headlineMedium;
  String get headlineSmallFamily;
  TextStyle get headlineSmall;
  String get titleLargeFamily;
  TextStyle get titleLarge;
  String get titleMediumFamily;
  TextStyle get titleMedium;
  String get titleSmallFamily;
  TextStyle get titleSmall;
  String get labelLargeFamily;
  TextStyle get labelLarge;
  String get labelMediumFamily;
  TextStyle get labelMedium;
  String get labelSmallFamily;
  TextStyle get labelSmall;
  String get bodyLargeFamily;
  TextStyle get bodyLarge;
  String get bodyMediumFamily;
  TextStyle get bodyMedium;
  String get bodySmallFamily;
  TextStyle get bodySmall;
}

class ThemeTypography extends Typography {
  ThemeTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Montserrat';
  TextStyle get displayLarge => GoogleFonts.getFont(
        'Montserrat',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 64.0,
      );
  String get displayMediumFamily => 'Montserrat';
  TextStyle get displayMedium => GoogleFonts.getFont(
        'Montserrat',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 44.0,
      );
  String get displaySmallFamily => 'Montserrat';
  TextStyle get displaySmall => GoogleFonts.getFont(
        'Montserrat',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 36.0,
      );
  String get headlineLargeFamily => 'Montserrat';
  TextStyle get headlineLarge => GoogleFonts.getFont(
        'Montserrat',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 32.0,
      );
  String get headlineMediumFamily => 'Montserrat';
  TextStyle get headlineMedium => GoogleFonts.getFont(
        'Montserrat',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 24.0,
      );
  String get headlineSmallFamily => 'Montserrat';
  TextStyle get headlineSmall => GoogleFonts.getFont(
        'Montserrat',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 24.0,
      );
  String get titleLargeFamily => 'Montserrat';
  TextStyle get titleLarge => GoogleFonts.getFont(
        'Montserrat',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 22.0,
      );
  String get titleMediumFamily => 'Montserrat';
  TextStyle get titleMedium => GoogleFonts.getFont(
        'Montserrat',
        color: theme.info,
        fontWeight: FontWeight.normal,
        fontSize: 18.0,
      );
  String get titleSmallFamily => 'Montserrat';
  TextStyle get titleSmall => GoogleFonts.getFont(
        'Montserrat',
        color: theme.info,
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
      );
  String get labelLargeFamily => 'Montserrat';
  TextStyle get labelLarge => GoogleFonts.getFont(
        'Montserrat',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get labelMediumFamily => 'Montserrat';
  TextStyle get labelMedium => GoogleFonts.getFont(
        'Montserrat',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
  String get labelSmallFamily => 'Montserrat';
  TextStyle get labelSmall => GoogleFonts.getFont(
        'Montserrat',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
      );
  String get bodyLargeFamily => 'Montserrat';
  TextStyle get bodyLarge => GoogleFonts.getFont(
        'Montserrat',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get bodyMediumFamily => 'Montserrat';
  TextStyle get bodyMedium => GoogleFonts.getFont(
        'Montserrat',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
  String get bodySmallFamily => 'Montserrat';
  TextStyle get bodySmall => GoogleFonts.getFont(
        'Montserrat',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
      );
}

class DarkModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFF4B39EF);
  late Color secondary = const Color(0xFF39D2C0);
  late Color tertiary = const Color(0xFFEE8B60);
  late Color alternate = const Color(0xFF262D34);
  late Color primaryText = const Color(0xFFFFFFFF);
  late Color secondaryText = const Color(0xFF95A1AC);
  late Color primaryBackground = const Color(0xFF1D2428);
  late Color secondaryBackground = const Color(0xFF14181B);
  late Color accent1 = const Color(0x4C4B39EF);
  late Color accent2 = const Color(0x4D39D2C0);
  late Color accent3 = const Color(0x4DEE8B60);
  late Color accent4 = const Color(0xB2262D34);
  late Color success = const Color(0xFF249689);
  late Color warning = const Color(0xFFF9CF58);
  late Color error = const Color(0xFFFF5963);
  late Color info = const Color(0xFFFFFFFF);

  late Color text1 = const Color(0xFFFFFFFF);
  late Color text2 = const Color(0xFF7B7B7B);
  late Color background1 = const Color(0xFF000000);
  late Color customColor2 = const Color(0xFF363636);
  late Color graSet11 = const Color(0xFF0F638D);
  late Color graSet12 = const Color(0xFF123648);
  late Color graSet13 = const Color(0xFF00121B);
  late Color textfieldHintText = const Color(0xFF5E5E5E);
  late Color mavi = const Color(0xFF067BB7);
  late Color graSet21 = const Color(0xFF333333);
  late Color graSet22 = const Color(0xFF070707);
  late Color graSet23 = const Color(0xFF181818);
  late Color background2 = const Color(0xFF1E1E1E);
  late Color text3 = const Color(0xFF616161);
  late Color customColor1 = const Color(0xFF036CD8);
  late Color customColor3 = const Color(0xFFA68CD5);
  late Color customColor4 = const Color(0xFFC04277);
  late Color customColor5 = const Color(0xFF53A171);
  late Color customColor6 = const Color(0xFFA0C82E);
  late Color customColor7 = const Color(0xFFD58FD8);
  late Color customColor8 = const Color(0xFF1375B2);
  late Color customColor9 = const Color(0xFF9E1C77);
  late Color customColor10 = const Color(0xFF4C55B5);
  late Color customColor11 = const Color(0xFF22F45E);
  late Color customColor12 = const Color(0xFF9A8128);
  late Color customColor13 = const Color(0xFF6B9FCC);
  late Color customColor14 = const Color(0xFFD2F943);
  late Color customColor15 = const Color(0xFFD9CFBF);
  late Color customColor16 = const Color(0xFF19D156);
  late Color customColor17 = const Color(0xFF2064AA);
  late Color customColor18 = const Color(0xFFCF9BAC);
  late Color customColor19 = const Color(0xFF560D05);
  late Color customColor20 = const Color(0xFFED757E);
  late Color customColor21 = const Color(0xFF9FC122);
  late Color customColor22 = const Color(0xFF4F0775);
  late Color customColor35 = const Color(0xFFA4C02A);
  late Color customColor34 = const Color(0xFFB6B605);
  late Color customColor23 = const Color(0xFFE05D06);
  late Color customColor24 = const Color(0xFFC1FA0D);
  late Color customColor25 = const Color(0xFF7B65A9);
  late Color customColor26 = const Color(0xFFC045BF);
  late Color customColor27 = const Color(0xFF11F22A);
  late Color customColor28 = const Color(0xFF06E6CB);
  late Color customColor29 = const Color(0xFF365EBA);
  late Color customColor30 = const Color(0xFF5E7C5B);
  late Color customColor31 = const Color(0xFF30443F);
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = true,
    TextDecoration? decoration,
    double? lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily!,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              letterSpacing: letterSpacing ?? this.letterSpacing,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
            );
}
