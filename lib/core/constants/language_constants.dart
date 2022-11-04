import '../models/language_model.dart';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// ignore: constant_identifier_names
const String LANGUAGE_CODE = 'languageCode';

//languages code
const String english = 'en';
const String spanish = 'es';
const String french = 'fr';

Future<Locale> setLocale(String languageCode) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString(LANGUAGE_CODE, languageCode);
  return _locale(languageCode);
}

Future<Locale> getLocale() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String languageCode = prefs.getString(LANGUAGE_CODE) ?? english;
  return _locale(languageCode);
}

Locale _locale(String languageCode) {
  switch (languageCode) {
    case english:
      return const Locale(english, '');
    case spanish:
      return const Locale(spanish, "");
    case french:
      return const Locale(french, "");
    default:
      return const Locale(english, '');
  }
}

AppLocalizations translation(BuildContext context) {
  return AppLocalizations.of(context)!;
}

List<Language> languageList() {
  return <Language>[
    Language(1, "🇺🇸", "English", "en"),
    Language(2, "🇫🇷", "Franćais", "fr"),
    Language(3, "🇪🇸", "España", "es"),
  ];
}
