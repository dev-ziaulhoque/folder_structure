import 'package:flutter/material.dart';

extension AppStylesExtension on BuildContext {
  // === TEXT STYLES ===
  TextStyle get headline => Theme.of(this).textTheme.headlineMedium!.copyWith(
    fontWeight: FontWeight.bold,
  );

  TextStyle get titleLarge => Theme.of(this).textTheme.titleLarge!.copyWith(
    fontWeight: FontWeight.w600,
  );

  TextStyle get titleMedium => Theme.of(this).textTheme.titleMedium!.copyWith(
    fontWeight: FontWeight.w600,
  );

  TextStyle get titleSmall => Theme.of(this).textTheme.titleSmall!;

  TextStyle get bodyLarge => Theme.of(this).textTheme.bodyLarge!;

  TextStyle get bodyMedium => Theme.of(this).textTheme.bodyMedium!;

  TextStyle get bodySmall => Theme.of(this).textTheme.bodySmall!;

  TextStyle get labelLarge => Theme.of(this).textTheme.labelLarge!.copyWith(
    fontWeight: FontWeight.w500,
  );

  TextStyle get primaryBold => TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Theme.of(this).colorScheme.primary,
  );

  TextStyle get error => TextStyle(
    fontSize: 14,
    color: Theme.of(this).colorScheme.error,
  );
}

// === Global Padding/Margin Extensions (no context needed) ===
extension PaddingExt on num {
  EdgeInsets get paddingAll => EdgeInsets.all(toDouble());
  EdgeInsets get paddingH => EdgeInsets.symmetric(horizontal: toDouble());
  EdgeInsets get paddingV => EdgeInsets.symmetric(vertical: toDouble());
  EdgeInsets get paddingOnly =>
      EdgeInsets.only(left: toDouble(), top: toDouble(), right: toDouble(), bottom: toDouble());
}

extension MarginExt on num {
  EdgeInsets get marginAll => EdgeInsets.all(toDouble());
  EdgeInsets get marginH => EdgeInsets.symmetric(horizontal: toDouble());
  EdgeInsets get marginV => EdgeInsets.symmetric(vertical: toDouble());
}

// === Border Radius ===
extension RadiusExt on num {
  BorderRadius get radius => BorderRadius.all(Radius.circular(toDouble()));
  BorderRadius get radiusTop => BorderRadius.only(
    topLeft: Radius.circular(toDouble()),
    topRight: Radius.circular(toDouble()),
  );
  BorderRadius get radiusBottom => BorderRadius.only(
    bottomLeft: Radius.circular(toDouble()),
    bottomRight: Radius.circular(toDouble()),
  );
}

// === SizedBox (Spacer) ===
extension GapExt on num {
  SizedBox get h => SizedBox(width: toDouble()); // horizontal gap
  SizedBox get v => SizedBox(height: toDouble()); // vertical gap
}