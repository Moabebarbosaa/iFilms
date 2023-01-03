import 'package:flutter/material.dart';

import '../tokens/typography_tokens.dart';

@immutable
class AppTextStyle {
  final TextStyle style;

  const AppTextStyle._(this.style);

  static AppTextStyle headline1 = const AppTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.weka,
      fontWeight: FontWeightTokens.light,
      letterSpacing: LetterSpacingTokens.deka,
    ),
  );
  static AppTextStyle headline2 = const AppTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.yotta,
      fontWeight: FontWeightTokens.light,
      letterSpacing: LetterSpacingTokens.hecto,
    ),
  );
  static AppTextStyle headline3 = const AppTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.zetta,
      fontWeight: FontWeightTokens.regular,
      letterSpacing: LetterSpacingTokens.kilo,
    ),
  );
  static AppTextStyle headline4 = const AppTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.exa,
      fontWeight: FontWeightTokens.regular,
      letterSpacing: LetterSpacingTokens.tera,
    ),
  );
  static AppTextStyle headline5 = const AppTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.peta,
      fontWeight: FontWeightTokens.regular,
      letterSpacing: LetterSpacingTokens.kilo,
    ),
  );
  static AppTextStyle headline6 = const AppTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.giga,
      fontWeight: FontWeightTokens.regular,
      letterSpacing: LetterSpacingTokens.giga,
    ),
  );
  static AppTextStyle headline7 = const AppTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.giga,
      fontWeight: FontWeightTokens.light,
      letterSpacing: LetterSpacingTokens.giga,
    ),
  );
  static AppTextStyle subtitle1 = const AppTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.zetta,
      fontWeight: FontWeightTokens.regular,
      letterSpacing: LetterSpacingTokens.giga,
    ),
  );
  static AppTextStyle subtitle2 = const AppTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.zetta,
      fontWeight: FontWeightTokens.regular,
      letterSpacing: LetterSpacingTokens.mega,
    ),
  );
  static AppTextStyle bodyText1 = const AppTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.mega,
      fontWeight: FontWeightTokens.regular,
      letterSpacing: LetterSpacingTokens.exa,
    ),
  );
  static AppTextStyle bodyText2 = const AppTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.kilo,
      fontWeight: FontWeightTokens.regular,
      letterSpacing: LetterSpacingTokens.tera,
    ),
  );
  static AppTextStyle button = const AppTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.kilo,
      fontWeight: FontWeightTokens.bold,
      letterSpacing: LetterSpacingTokens.exa,
    ),
  );
  static AppTextStyle caption = const AppTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.hecto,
      fontWeight: FontWeightTokens.regular,
      letterSpacing: LetterSpacingTokens.peta,
    ),
  );
  static AppTextStyle overline = const AppTextStyle._(
    TextStyle(
      fontSize: FontSizeTokens.deka,
      fontWeight: FontWeightTokens.regular,
      letterSpacing: LetterSpacingTokens.yotta,
    ),
  );

  AppTextStyle get weightLight => AppTextStyle._(
      style.copyWith(fontWeight: FontWeightTokens.light));

  AppTextStyle get weightRegular => AppTextStyle._(
      style.copyWith(fontWeight: FontWeightTokens.regular));

  AppTextStyle get weightBold =>
      AppTextStyle._(style.copyWith(fontWeight: FontWeightTokens.bold));
}
